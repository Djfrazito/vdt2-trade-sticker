*** Settings ***
Documentation                Login Tests

Resource                     ${CURDIR}${/}..\\resources${/}main.resource


Test Setup                    Start Test
Test Teardown                 Finish Test

*** Test Cases ***
Deve logar com sucesso
    Go to login page
    Submit Credencials        papito@gmail.com              vaibrasil
    User Logged In
    Sleep    1

Não deve logar com senha incorreta
    [Tags]                    inv_pass

    Go to login page
    Submit Credencials        papito@gmailcom               123
    Toast Message should Be   Credenciais inválidas, tente novamente!
