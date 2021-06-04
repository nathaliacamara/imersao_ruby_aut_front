Dado('que acesso a pagina de login\/cadastro') do
  @app.cadastropage.load
end

Dado('solicito um novo cadastro para o email {string}') do |email|
  @app.cadastropage.iniciar_criacao_conta email
end

Dado('preencho os cmapos do formulario com dados válidos fixos') do
  @app.cadastropage.preencher_form_com_dados_fixos
end

Quando('confirmo o cadastro') do
  @app.cadastropage.confirmar_cadastro
end

Dado('preencho os campos do formulario com dados aleatorios') do
  @app.cadastropage.preencher_form_com_dados_aleatorios
end

Dado('preencho os campos do formulario com {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}') do |gender, first_name, last_name, password, day, month, year, newsletter, address, city, state, zipcode, phone, address_name|
  @app.cadastropage.preencher_form_com_dados_de_exemplos(gender, first_name, last_name, password, day, month, year, newsletter, address, city, state, zipcode, phone, address_name)
end

Então('devo ser direcionado a pagina de minha conta') do
 # expect(@app.minhacontapage.acessou_minha_conta).to  be_truthy
  expect(@app.minhacontapage.page_title.text).to eql('MY ACCOUNT')
  #expect(@app.minhacontapage.account_name.text).to eql('Maria Fatima')
  expect(@app.minhacontapage.account_name.text).to eql(@app.cadastropage.account_full_name)

end