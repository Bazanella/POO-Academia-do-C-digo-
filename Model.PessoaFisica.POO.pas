unit Model.PessoaFisica.POO;

interface

uses
  Interfaces.POO;

type
  TModelPessoaFisica = class(TInterfacedObject, IPessoa)
  private
    FNome: String;
    FSobrenome: String;
    function Nome(aValor: String): IPessoa;
    function Sobrenome(aValor: String): IPessoa;
    function NomeCompleto: String;
  public
    class function Novo: IPessoa;
  end;


implementation

function TModelPessoaFisica.Nome(aValor: String): IPessoa;
begin
  FNome := AValor;
  Result := Self;
end;

function TModelPessoaFisica.NomeCompleto: String;
begin
  Result := FNome +' '+ FSobrenome;
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
