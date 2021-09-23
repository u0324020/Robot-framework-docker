*** Settings ***
Documentation    TestingDemoWebPage

Library    SeleniumLibrary
Library    RequestsLibrary
Resource    keywords.robot

*** Variables ***
${GOOGLE_INPUT}    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input

*** Test Cases ***
# Open Demo Web Page
#     Open Site
#     Input Text    ${GOOGLE_INPUT}    TrendMicro
#     Press Keys    ${GOOGLE_INPUT}    ENTER
#     Close Browser

Test via Request
    ${resp}=    GET    http://13.83.81.91/login
    Status Should Be    OK    ${resp}

# Open demo-Page
#     Open 8080
#     Page Should Contain Element    xpath:/html/body/pre    hello world
#     Sleep    3s
#     Close Browser