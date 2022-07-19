unit Controller.Pessoa.POO;

interface

uses
  Controller.Interfaces.POO, Interfaces.POO, Model.PessoaFectory.POO;


type
   TControllerPessoa = class(TInterfacedObject, IControllerPessoa)
     function Pessoa(aValor: TTipoPessoa): IPessoa;
     class Function Novo: IControllerPessoa;
   end;



implementation

{ TControllerPessoa }

class function TControllerPessoa.Novo: IControllerPessoa;
begin
  Result := Self.Create;
end;

function TControllerPessoa.Pessoa(aValor: TTipoPessoa): IPessoa;
begin
  case aValor of
    tpFisica  : Result := TModelPessoaFectory.Novo.PessoaFisica;
    tpJuridica: Result := TModelPessoaFectory.Novo.PessoaJuridica;
  end;
end;

end.
