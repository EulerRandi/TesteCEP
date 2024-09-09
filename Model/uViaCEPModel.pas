unit uViaCEPModel;

interface

uses uCEPController, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, System.JSON;


type
  TViaCEP = class(TCEP)
  public
     class function BuscaCEP_ViaCEP(aCEP:String): TCEP;

  end;

implementation

uses SysUtils;

{ TViaCEP }

class function TViaCEP.BuscaCEP_ViaCEP(aCEP: String): TCEP;
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

        vCEPStr := StringReplace(StringReplace(aCEP, '.', '', [rfReplaceAll, rfIgnoreCase]), '-', '', [rfReplaceAll, rfIgnoreCase]);

        vRESTClient.BaseURL := 'https://viacep.com.br/ws/'+vCEPStr+'/json';
        try
          vRESTRequest.Execute;
          JsonResponse := vRESTResponse.JSONValue as TJSONObject;

          Result := TCEP.Create;

          Result.Logradouro := JsonResponse.GetValue('logradouro').Value;
          Result.Complemento := JsonResponse.GetValue('complemento').Value;
          Result.Bairro := JsonResponse.GetValue('bairro').Value;
          Result.Cidade := JsonResponse.GetValue('localidade').Value;
          Result.Estado := JsonResponse.GetValue('estado').Value;
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
