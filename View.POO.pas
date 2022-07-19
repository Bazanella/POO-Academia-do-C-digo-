unit View.POO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Interfaces.POO;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FPessoa: IPessoa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Controller.Pessoa.POO, Controller.Interfaces.POO;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Add(FPessoa
                    .Nome(Edit1.Text)
                    .Sobrenome(Edit2.Text)
                    .NomeCompleto);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FPessoa := TControllerPessoa.Novo.Pessoa(tpFisica);
end;

end.
