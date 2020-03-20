*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${TituloLogin}  Login
${Usuario}      Id:login_input
${Senha}        Id:password_input
${BtnEntrar}    XPath://*[text()="Entrar"]
${TituloHome}   Home