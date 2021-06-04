#language: pt

Funcionalidade: Cadastrar Cliente
Como cliente da loja online
Quero cadastrar uma conta
para efetuar compras

@cadastro_dados_fixos
Cenário: Cadastrar cliente com dados válidos
Dado que acesso a pagina de login/cadastro
E solicito um novo cadastro para o email 'imersao_ruby_frontnc@guts.com.br'
E preencho os campos do formulario com dados válidos fixos
Quando confirmo o cadastro
Então devo ser direcionado a pagina de minha conta
