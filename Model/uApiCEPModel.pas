unit uApiCEPModel;

interface

uses uCEPController, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, System.JSON;


type
  TApiCEP = class(TCEP)
  public
     class function BuscaCEP_ApiCEP(aCEP:String): TCEP;

  end;

implementation

uses SysUtils;

{ TApiCEP }

class function TApiCEP.BuscaCEP_ApiCEP(aCEP: String): TCEP;
var
  vRESTClient: TRESTClient;
  vRESTResponse: TRESTResponse;
  vRESTRequest: TRESTRequest;
  vCEPStr: string;

  JsonBody, JsonNotification, JsonData, JsonResponse: TJSONObject;
begin
  vRESTResponse := TRESTResponse.Create(nil);
  try
    vRESTClient := TRESTClient.Create(nil);
    try
      vRESTRequest := TRESTRequest.Create(nil);
      try
        vRESTRequest.Client := vRESTClient;
        vRESTRequest.Response := VRESTResponse;
        vRESTRequest.Method := rmGET;
        vRESTRequest.SynchronizedEvents := False;

        vCEPStr := StringReplace(aCEP, '.', '', [rfReplaceAll, rfIgnoreCase]);

        vRESTClient.BaseURL := 'https://cdn.apicep.com/file/apicep/'+vCEPStr+'.json';

        try
          vRESTRequest.Execute;
          JsonResponse := vRESTResponse.JSONValue as TJSONObject;

          Result := TCEP.Create;

          Result.Logradouro := JsonResponse.GetValue('address').Value;
          Result.Complemento := EmptyStr;
          Result.Bairro := JsonResponse.GetValue('district').Value;
          Result.Cidade := JsonResponse.GetValue('city').Value;
          Result.Estado := JsonResponse.GetValue('state').Value;
        except
          Result := nil;
        end;
      finally
        vRESTRequest.Free;
      end;
    finally
      vRESTClient.Free;
    end;
  finally
    vRESTResponse.Free;
  end;
end;

end.
