*** Settings ***
Documentation    TestingDemoWebPage

Library    SeleniumLibrary
Library    RequestsLibrary

Resource    keywords.robot

*** Variables ***
${HTTP_LOCAL_SERVER}    http://172.28.0.3:8080

*** Test Cases ***
Test web-server via Request
    ${resp}=    GET    ${HTTP_LOCAL_SERVER}
    Status Should Be    OK    ${resp}
    
# Open demo-Page
#     Open 8080
#     Page Should Contain Element    xpath:/html/body/pre    hello world
#     Sleep    3s
#     Close Browser