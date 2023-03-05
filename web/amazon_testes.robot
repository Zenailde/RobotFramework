
*** Settings ***
Documentation
Resource          amazon.resources.robot
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test case ***

Caso de teste numero 1 - Acesso ao menu eletrônico
    [Documentation]        Ese site verificar
    ...                     o menu eletronico
    [Tags]                  menus
    Acessar home page do site Amazon.com.br
    Entrar no menu eletrônico
    Veriricar se aparece icone "Computadores e Informática"

    


Caso de testes numero 2 - Pesquisa de um produto
    [Documentation]     Esse teste verifica a busca de produtos
    [Tags]              busca_produtos        
    Acessar home page do site Amazon.com.br
    Entrar no menu eletrônico



