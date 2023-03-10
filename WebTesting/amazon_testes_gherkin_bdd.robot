*** Settings ***
Documentation         Essa suíte testa o site da Amazon.com.br
Resource              amazon_resources.robot
Test Setup            Abrir o navegador
Test Teardown         Fechar o navegador


*** Test Cases ***

Caso de Teste 01 - Acesso ao menu "Eletronicos"
    [Documentation]    Este teste verifica o menu eletrônico do site da amazon.com.br
    ...                e verifica a categoria computador e Informatica
    [Tags]             menus
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página

  



    
