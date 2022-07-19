unit Model.PessoaFectory.POO;

interface

uses
  Interfaces.POO;

type
  TModelPessoaFectory = class(TInterfacedObject, IPessoaFactory)
  public
    function PessoaFisica: IPessoa;
    function PessoaJuridica: IPessoa;
    class function Novo: IPessoaFactory;
  end;

implementation

uses
  Model.PessoaFisica.POO, Model.PessoaJuridica.POO;

class function TModelPessoaFectory.Novo: IPessoaFactory;
begin
  Result := Self.Create;
end;

function TModelPessoaFectory.PessoaFisica: IPessoa;
begin
  Result := TModelPessoaFisica.Novo;
end;

function TModelPessoaFectory.PessoaJuridica: IPessoa;
begin
  Result := TModelPessoaJuridica.Novo;
end;

end.
