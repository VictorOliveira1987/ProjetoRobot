*** Settings ***
Resource        ../Controller/LoginController.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***
Cenário 01: Logar com usuário e senha válidos
    Dado que estou na página home do site
    Quando eu digito um usuário válido
    E eu digito uma senha válida
    E clico em "Entrar"
    Então eu vejo a página para entrar com o CPF do cliente