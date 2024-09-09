program TesteCEP;

uses
  Vcl.Forms,
  uFrmPrincipal in 'View\uFrmPrincipal.pas' {FrmPrincipal},
  uCEPController in 'Control\uCEPController.pas',
  uApiCEPModel in 'Model\uApiCEPModel.pas',
  uAwesomeAPICEPModel in 'Model\uAwesomeAPICEPModel.pas',
  uViaCEPModel in 'Model\uViaCEPModel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
