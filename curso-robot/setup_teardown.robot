*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Dado que eu acese o Organo
    Open Browser    url=http://localhost:3000/    browser=Chrome

Fechar o navegador
    Close Browser