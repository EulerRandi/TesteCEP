unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TFrmPrincipal = class(TForm)
    LblCEP: TLabel;
    EdtCEP: TMaskEdit;
    LblLogradouro: TLabel;
    EdtLogradouro: TEdit;
    LblComplemento: TLabel;
    EdtComplemento: TEdit;
    LblBairro: TLabel;
    EdtBairro: TEdit;
    LblCidade: TLabel;
    EdtCidade: TEdit;
    LblEstado: TLabel;
    EdtEstado: TEdit;
    PnlAction: TPanel;
    SBtnPesqCEP: TSpeedButton;
    BtnFechar: TButton;
    procedure BtnFecharClick(Sender: TObject);
    procedure SBtnPesqCEPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uCEPController;

procedure TFrmPrincipal.BtnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmPrincipal.SBtnPesqCEPClick(Sender: TObject);
var
  vCEP: TCEP;
begin
  vCEP:= TCEP.BuscaCEP(Self.EdtCEP.Text);

  if Assigned(vCEP) then
  begin
    Self.EdtLogradouro.Text := vCEP.Logradouro;
    Self.EdtComplemento.Text := vCEP.Complemento;
    Self.EdtBairro.Text := vCEP.Bairro;
    Self.EdtCidade.Text := vCEP.Cidade;
    Self.EdtEstado.Text := vCEP.Estado;
  end
  else
  begin
    Self.EdtLogradouro.Text := EmptyStr;
    Self.EdtComplemento.Text := EmptyStr;
    Self.EdtBairro.Text := EmptyStr;
    Self.EdtCidade.Text := EmptyStr;
    Self.EdtEstado.Text := EmptyStr;

    ShowMessage('CEP não encontrado');
  end;

end;

end.
