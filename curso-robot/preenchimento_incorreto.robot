*** Settings ***
Library          SeleniumLibrary
Resource         setup_teardown.robot
Test Setup       Dado que eu acese o Organo
Test Teardown    Fechar o navegador

*** Variables ***
${BOTAO_CARD}             id:form-botao

*** Test Cases ***
Verificar se quando um campo obrigatorio nao for preenchido corretamente o sistema exibe uma mensagem de campo obrigatorio
    Dado que eu clique no botao de criar card
    Entao o sistema deve apresentar mensagem de campo obrigatorio


*** Keywords ***
Dado que eu clique no botao de criar card

    Click Element    ${BOTAO_CARD} 

Entao o sistema deve apresentar mensagem de campo obrigatorio
    Element Should Be Visible    id:form-nome-erro
    Element Should Be Visible    id:form-cargo-erro
    Element Should Be Visible    id:form-times-erro