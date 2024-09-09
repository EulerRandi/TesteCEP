unit uCEPController;

interface

type
 TCEP = class(TObject)
 private
    FLogradouro: string;
    FBairro: string;
    FCEP: string;
    FComplemento: string;
    FCidade: string;
    FEstado: string;
    procedure SetBairro(const Value: string);
    procedure SetCEP(const Value: string);
    procedure SetCidade(const Value: string);
    procedure SetComplemento(const Value: string);
    procedure SetEstado(const Value: string);
    procedure SetLogradouro(const Value: string);

 public
   property CEP: string read FCEP write SetCEP;
   property Logradouro: string read FLogradouro write SetLogradouro;
   property Complemento: string read FComplemento write SetComplemento;
   property Bairro: string read FBairro write SetBairro;
   property Cidade: string read FCidade write SetCidade;
   property Estado: string read FEstado write SetEstado;

   class function BuscaCEP(aCEP:String): TCEP;
 end;

implementation

{ TCEP }

uses uViaCEPModel, uApiCEPModel, uAwesomeAPICEPModel;

class function TCEP.BuscaCEP(aCEP: String): TCEP;
var
  vCEP: TCEP;
begin
  vCEP := nil;

  if not Assigned(vCEP) then
    vCEP := TViaCEP.BuscaCEP_ViaCEP(aCEP);

  if not Assigned(vCEP) then
    vCEP := TApiCEP.BuscaCEP_ApiCEP(aCEP);

  if not Assigned(vCEP) then
    vCEP := TAwesomeAPICEP.BuscaCEP_AwesomeAPICEP(aCEP);

  Result := vCEP;
end;

procedure TCEP.SetBairro(const Value: string);
begin
  Self.FBairro := Value;
end;

procedure TCEP.SetCEP(const Value: string);
begin
  Self.FCEP := Value;
end;

procedure TCEP.SetCidade(const Value: string);
begin
  Self.FCidade := Value;
end;

procedure TCEP.SetComplemento(const Value: string);
begin
  Self.FComplemento := Value;
end;

procedure TCEP.SetEstado(const Value: string);
begin
  Self.FEstado := Value;
end;

procedure TCEP.SetLogradouro(const Value: string);
begin
  Self.FLogradouro := Value;
end;

end.
