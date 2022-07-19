unit Model.PessoaJuridica.POO;

interface

uses
  Interfaces.POO;

type
  TModelPessoaJuridica = class(TInterfacedObject, IPessoa)
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

function TModelPessoaJuridica.Display(aevDsiplay: TevDsiplay): IPessoa;
begin
  Result := Self;
  FevDsiplay := aevDsiplay
end;

function TModelPessoaJuridica.Nome(aValor: String): IPessoa;
begin
  FNome := AValor;
  Result := Self;
end;

function TModelPessoaJuridica.NomeCompleto: IPessoa;
begin
  Result := Self;
  FevDsiplay( FNome +' '+ FSobrenome + ' LTDA ME');
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
