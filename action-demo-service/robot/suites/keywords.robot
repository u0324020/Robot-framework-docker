*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://google.com/

*** Keywords ***
Open Site
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Open 8080
    Open Browser    http://172.28.0.3:8080/    chrome
    Maximize Browser Window
