*** Settings ***

Library     SeleniumLibrary 

*** Variables ***
${URL}    http://www.amazon.com.br/
${MENU ELETRONICOS}    //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}    //h1[contains(.,'Eletrônicos e Tecnologia')]





*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser 
    
 Acessar a home page do site Amazon.com.br
     Go To    url=${URL} 
     Wait Until Element Is Visible    locator=${MENU ELETRONICOS} 

 Entrar no menu "Eletrônicos"   
    Click Element    locator=${MENU ELETRONICOS} 

Verificar se aparece a frase "${FRASE}" 
    Wait Until Page Contains    text=${FRASE} 
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS} 


Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//img[contains(@alt,'${NOME_CATEGORIA}')]

 Digitar o nome de produto "${PRODUTO}" no campo de pesquisa 
    Input Text    locator=//input[contains(@type,'text')]    text=${PRODUTO}   
   

Clicar no botão de pesquisa
    Click Button    locator=nav-search-submit-button

    

 Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br

 Quando acessar o menu "Eletrônicos"
     Entrar no menu "Eletrônicos"  

Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"


 E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia" 


E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"









