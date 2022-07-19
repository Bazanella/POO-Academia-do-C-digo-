unit Model.PessoaJuridica.POO;

interface

uses
  Interfaces.POO;

type
  TModelPessoaJuridica = class(TInterfacedObject, IPessoa)
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

function TModelPessoaJuridica.Nome(aValor: String): IPessoa;
begin
  FNome := AValor;
  Result := Self;
end;

function TModelPessoaJuridica.NomeCompleto: String;
begin
  Result := FNome +' '+ FSobrenome + ' LTDA ME';
end;

class function TModelPessoaJuridica.Novo: IPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaJuridica.Sobrenome(aValor: String): IPessoa;
begin
  FSobrenome := AValor;
  Result := Self;
end;

end.
