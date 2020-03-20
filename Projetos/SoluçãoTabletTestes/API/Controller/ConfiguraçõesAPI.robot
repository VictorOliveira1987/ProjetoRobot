*** Settings ***
Library             RequestsLibrary
Library             Collections

*** Variables ***
${URL}              http://fakerestapi.azurewebsites.net/api/

*** Keywords ***
####Setup e TearsDown
Conectar a minha API
    Create Session      fakeAPI     ${URL}

###Ações
Requisitar todos os livros
    ${RESPOSTA}     Get Request     fakeAPI     Books
    Log             ${RESPOSTA.text}