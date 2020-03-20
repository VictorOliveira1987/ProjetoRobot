*** Settings ***
Resource        ../PageObjects/LoginPage.robot
Resource        ../Controller/ConfiguraçõesWEB.robot

*** Keywords ***
#### Setup e TearDown ####
Abrir navegador
    Open BROWSER        ${URL}      ${BROWSER}
    Set Selenium Speed  1 seconds

Fechar navegador
    Close BROWSER

#### Dado ####
Dado que estou na página home do site
    Title Should Be     ${TituloLogin}

### Quando ####
Quando eu digito um usuário válido
    Input Text          ${Usuario}  ${UsuarioValido}
E eu digito uma senha válida
    Input Text          ${Senha}    ${SenhaValida}
E clico em "Entrar"
    Click Button        ${BtnEntrar}

#### Então ####
Então eu vejo a página para entrar com o CPF do cliente
    Wait Until Page Contains     ${TituloHome}
