#language: pt

@regressivo
Funcionalidade: Cadastrar Cliente
Como cliente da loja online
Quero cadastrar uma conta
para efetuar compras

@cadastro_exemplos
Cenário: Cadastrar cliente com dados válidos
Dado que acesso a pagina de login/cadastro
E solicito um novo cadastro para o email <email>
E preencho os campos do formulario com <gender>, <first_name>, <last_name>, <password>, <day>, <month>, <year>, <newsletter>, <company>, <address>, <city>, <zipcode>, <state>, <phone>, <adsress_name>
Quando confirmo o cadastro
Então devo ser direcionado a pagina de minha conta

Exemplos:
| email                 | gender | first_name | last_name | password | day   | month   | year   | newsletter | company   | address             | city          | state       | zipcode  | phone          | adsress_name |
|'paula_rubync@guts.com'| 'fem'  | 'Paula'    |  'Maria'  |  '11235' | '10'  | 'April' | '1982' | 'no'       |  'ABCnc'  | 'Rua barao, 55'     |  'Sao Paulo'  |  'Illinois' | '70690'  |'558198556978'  | 'casa'       |
|'paulo_rubync@guts.com'| 'masc' | 'Paulo'    |  'Mario'  |  '11235' | '10'  | 'May'   | '1983' | 'yes'      |  'ABCnd'  | 'Rua Sao joao, 58'  |  'Recife'     |  'Nebraska' |'80560'   | '558198736978' | 'Trabalho'   |