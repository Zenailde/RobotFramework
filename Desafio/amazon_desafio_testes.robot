*** Settings ***
Documentation    Essa suíte testa o site da amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador


*** Test Case ***

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Este teste verifica a adição de um produto no carrinho de compras.
    [Tags]             adicionar_carrinho
    Acessar a home page do site amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa 
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto Console Xbox Series S foi "Adicionado ao carrinho"


 Caso de Teste 04 - Remover Produto do Carrinho
     [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
     [Tags]             remover_carrinho
     Acessar a home page do site amazon.com.br
     Digitar o nome de produto "Xbox Series S" no campo de pesquisa 
     Clicar no botão de pesquisa
     Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
     Adicionar o produto "Console Xbox Series S" no carrinho
     Verificar se o produto Console Xbox Series S foi "Adicionado ao carrinho"
     Remover o produto "Console Xbox Series S" do carrinho
     Verificar se "Seu carrinho de compras da Amazon está vazio."


