*** Settings ***
Documentation    Documentação da API: https://fakerestapi.azurewebsites.net/index
Library          RequestsLibrary
Library          Collections


*** Variables ***
${URL_API}    https://fakerestapi.azurewebsites.net/api/v1/     





*** Keywords ***
Conectar a minha API
    Create Session    fakeAPI    ${URL_API}

# Ações

Requisitar todos os livros
    ${RESPOSTA}    Get Request    fakeAPI    Books
    Log            ${RESPOSTA.text} 

Conferir o status code
    [Arguments]    ${STATUS_CODE_DESEJADO}
    Should Be Equal As Strings   ${RESPOSTA.status_code}    ${STATUS_CODE_DESEJADO}
  