*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}           https://www.amazon.com.br/

${MENU_VENDA}    //a[@href='/gp/browse.html?node=17877554011&ld=ASBRSOA_retail_sell_header&ref_=nav_cs_sell'][contains(.,'Venda na Amazon')]
${DELETE_PRODUTO}    //input[contains(@aria-label,'Excluir Console Xbox Series S')]


*** Keywords ***

Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Acessar a home page do site amazon.com.br
    Go To    url=${URL} 
    Wait Until Element Is Visible    locator=${MENU_VENDA}

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa 
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${PRODUTO}')]


Adicionar o produto "${PRODUTO}" no carrinho
    Click Element    locator=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${PRODUTO}')]
    Wait Until Element Is Visible    locator=add-to-cart-button
    Click Element    locator=add-to-cart-button

Verificar se o produto Console Xbox Series S foi "${ADICIONADO}"
    Wait Until Element Is Visible    locator=//span[@class='a-size-medium-plus a-color-base sw-atc-text a-text-bold'][contains(.,'${ADICIONADO}')]
    Click Element    locator=//a[contains(@data-csa-c-type,'button')] 

Remover o produto "Console Xbox Series S" do carrinho
    Click Element    locator=${DELETE_PRODUTO}

Verificar se "${CARRINHO_VAZIO}"
    Wait Until Element Is Visible    locator=//h1[@class='a-spacing-mini a-spacing-top-base'][contains(.,'${CARRINHO_VAZIO}')]

    

#GHERKIN STEPS
 Dado que estou na home page do site amazon.com.br
     Acessar a home page do site amazon.com.br    

Quando pesquisar o produto "${PRODUTO}"  
    Digitar o nome de produto "${PRODUTO}" no campo de pesquisa 
    Clicar no botão de pesquisa

 Então a pesquisa irá listar o produto "${PRODUTO}"
    Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"

E Adicionar o produto "${PRODUTO}" no carrinho
    Adicionar o produto "${PRODUTO}" no carrinho

E Verificar se o produto Console Xbox Series S foi "${ADICIONADO}"
    Verificar se o produto Console Xbox Series S foi "${ADICIONADO}"






    
