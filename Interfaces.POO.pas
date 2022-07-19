unit Interfaces.POO;

interface

type

  TevDsiplay = procedure(aConteudo: String) of Object;

  IPessoa = Interface
  ['{0A980B29-CCB9-4191-A7E2-2B662A7DD03C}']
    function Nome(aValor: String): IPessoa;
    function Sobrenome(aValor: String): IPessoa;
    function NomeCompleto: IPessoa;
    function Display(aevDsiplay: TevDsiplay): IPessoa;
  end;

  IPessoaFactory =  interface
  ['{E98A7BD0-E612-4E2F-A5E6-E2126119112B}']
    function PessoaFisica: IPessoa;
    function PessoaJuridica: IPessoa;
  end;
implementation

end.
