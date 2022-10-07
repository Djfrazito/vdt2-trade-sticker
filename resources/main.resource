*** Settings ***
Documentation                Arquivo principal do projeto

Library                      Browser
Resource                     pages/login.resource
Resource                     pages/dash.resource

*** Keywords ***
Do Login
    Go to login page
    Submit Credencials       papito@gmail.com                  vaibrasil
    User Logged In

Start Test
    New Browser

Finish Test
    Sleep    1
    Take Screenshot