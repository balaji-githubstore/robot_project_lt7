*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    Click Element    partial link=phpMyAdmin
    Switch Window   phpMyAdmin
    Input Text    id=input_username    test123
     Input Text    id=input_username    admin
    Input Password    id=input_password    welcome123
    Click Element    id=input_go
    Sleep    60s
    Close Browser