#language: pt

Funcionalidade: Cadastrar Cliente
Como cliente da loja online
Quero cadastrar uma conta
para efetuar compras

@cadastro_dados_faker
Cenário: Cadastrar cliente com dados aleatorios
Dado que acesso a pagina de login/cadastro
E solicito um novo cadastro para o email 'aleatorio'
E preencho os campos do formulario com dados aleatorios
Quando confirmo o cadastro
Então devo ser direcionado a pagina de minha conta
