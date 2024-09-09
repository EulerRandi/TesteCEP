unit uAwesomeAPICEPModel;

interface

uses uCEPController, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, System.JSON;


type
  TAwesomeAPICEP = class(TCEP)
  public
     class function BuscaCEP_AwesomeAPICEP(aCEP:String): TCEP;

  end;

implementation

uses SysUtils;

{ TAwesomeAPICEP }

class function TAwesomeAPICEP.BuscaCEP_AwesomeAPICEP(aCEP: String): TCEP;
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

        vRESTClient.BaseURL := 'https://cep.awesomeapi.com.br/json/'+vCEPStr;
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
}
