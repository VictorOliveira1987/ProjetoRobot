*** Settings ***
Resource        ../Controller/ConfiguraçõesAPI.robot
Suite Setup     Conectar a minha API

*** Test Cases ***
Buscar listagem com todos os livros
    Requisitar todos os livros