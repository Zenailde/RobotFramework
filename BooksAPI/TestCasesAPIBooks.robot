*** Settings ***
Documentation    Documentação da API: https://fakerestapi.azurewebsites.net/index
Library          RequestsLibrary
Library          Collections
Resource         ResourceAPI.robot
Suite Setup      Conectar a minha API


*** Test Cases ***
Buscar a mensagem de todos os livros (Get em todos os livros)
    Requisitar todos os livros
    Conferir o status code  200
  



