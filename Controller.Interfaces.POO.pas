unit Controller.Interfaces.POO;

interface

uses
  Interfaces.POO;

type
  TTipoPessoa = (tpFisica, tpJuridica);

  IControllerPessoa = Interface
  ['{506066CE-F032-4474-9FC1-4F5E17CA9F0F}']
    function Pessoa(aValor: TTipoPessoa): IPessoa;
  End;

implementation

end.
