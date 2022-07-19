unit Model.PessoaFisica.POO;

interface

uses
  Interfaces.POO;

type
  TModelPessoaFisica = class(TInterfacedObject, IPessoa)
  private
    FevDsiplay: TevDsiplay;
    FNome: String;
    FSobrenome: String;
    function Nome(aValor: String): IPessoa;
    function Sobrenome(aValor: String): IPessoa;
    function NomeCompleto: IPessoa;
    function Display(aevDsiplay: TevDsiplay): IPessoa;
  public
    class function Novo: IPessoa;
  end;


implementation

function TModelPessoaFisica.Display(aevDsiplay: TevDsiplay): IPessoa;
begin
  FevDsiplay := aevDsiplay;
  Result := Self;
end;

function TModelPessoaFisica.Nome(aValor: String): IPessoa;
begin
  FNome := AValor;
  Result := Self;
end;

function TModelPessoaFisica.NomeCompleto: IPessoa;
begin
  Result := Self;
  FevDsiplay( FNome +' '+ FSobrenome);
end;

class function TModelPessoaFisica.Novo: IPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaFisica.Sobrenome(aValor: String): IPessoa;
begin
  FSobrenome := AValor;
  Result := Self;
end;


end.
