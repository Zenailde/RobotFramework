*** Settings ***
Documentation    Essa suíte testa o site da amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador


*** Test Case ***

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Este teste verifica a adição de um produto no carrinho de compras.
    [Tags]             adicionar_carrinho
    Dado que estou na home page do site amazon.com.br
    Quando pesquisar o produto "Xbox Series S"   
    Então a pesquisa irá listar o produto "Console Xbox Series S"
    E Adicionar o produto "Console Xbox Series S" no carrinho
    E Verificar se o produto Console Xbox Series S foi "Adicionado ao carrinho"


#  Caso de Teste 04 - Remover Produto do Carrinho
#     [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
#     [Tags]             remover_carrinho
#     Dado que estou na home page do site amazon.com.br
#     Quando pesquisar o produto "Xbox Series S"   
#     Então a pesquisa irá listar o produto "Console Xbox Series S"
#     E adicionar o produto "Console Xbox Series S" no carrinho
#     E adicionar o produto "Console Xbox Series S" no carrinho
#     E remover o produto "Console Xbox Series S" do carrinho
#     E verificar se "Seu carrinho de compras da Amazon está vazio."


