*** Settings ***
Resource    ../resource/api_testing_usuarios.resource

*** Variables ***



*** Test Cases ***

Cenario 01: Cadastrar um novo usuario com sucesso na ServiceRest
    
    Criar um usuario novo
    Cadastrar o usuario criado na ServeRest    email=${EMAIL_TESTE}    status_code_desejado=201
    Conferir se o usuário foi cadastrado corretamente

Cenario 02: Cadastrar um usuário já existente
     Criar um usuario novo
     Cadastrar o usuario criado na ServeRest    email=${EMAIL_TESTE}    status_code_desejado=201
     Vou repetir o cadastro do usuario
     Verificar se a API não permitiu o cadastro repetido

Cenário 03: Consultar os dados de um novo usuário
    Criar um usuario novo
    Cadastrar o usuario criado na ServeRest    email=${EMAIL_TESTE}    status_code_desejado=201
    Consultar os dados do novo usuario
    Conferir os dados retornados

Cenário 04: Logar com o novo usuario criado
    Criar um usuario novo
    Cadastrar o usuario criado na ServeRest    email=${EMAIL_TESTE}    status_code_desejado=201
    Realizar Login com o usuario
    Conferir se o usuário ocorreu com sucesso
