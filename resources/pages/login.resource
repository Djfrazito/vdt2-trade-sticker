*** Settings ***
Documentation                 Login Tests

Library                       Browser

*** Variables ***
${input_email}                css=input[name=email]
${input_password}             css=input[name=password]
${button_login}               css=button >> text=Entrar  

*** Keywords ***

Go to login page
    
    New Page                  https://trade-sticker-dev.vercel.app/

Submit Credencials
    [Arguments]               ${email}                                  ${password}  
    Fill Text                 ${input_email}                            ${email}
    Fill Text                 ${input_password}                         ${password}
    CLick                     ${button_login}

Toast Message should Be 
    [Arguments]               ${expected_messsage}
    ${locator}                Set Variable                              css=.Toastify__toast-body div >> text=${expected_messsage}
    Wait For Elements State   ${locator}                                visible    3