program POO;

uses
  Vcl.Forms,
  View.POO in 'View.POO.pas' {Form1},
  Interfaces.POO in 'Interfaces.POO.pas',
  Model.PessoaFisica.POO in 'Model.PessoaFisica.POO.pas',
  Model.PessoaJuridica.POO in 'Model.PessoaJuridica.POO.pas',
  Model.PessoaFectory.POO in 'Model.PessoaFectory.POO.pas',
  Controller.Pessoa.POO in 'Controller.Pessoa.POO.pas',
  Controller.Interfaces.POO in 'Controller.Interfaces.POO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
