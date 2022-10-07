*** Settings ***
Documentation                 Teste de negociação de figurinhas da copa

Resource                      ${EXECDIR}\\resources/main.resource

Test Setup                    Start Test
Test Teardown                 Finish Test

*** Test Cases ***
Deve negociar a figurinha Neymar Legend
    Do Login
    Search User               Legend
    Select sticker            Neymar Jr
    Get In Touch
    Whatsapp Sticker Message  Neymar Jr

