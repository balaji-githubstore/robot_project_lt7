*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
#assignment
TC1 Register
    [Documentation]         Sign up automation
    Open Browser    url=https://www.facebook.com     browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=Create New Account
    Input Text    name=firstname    balaji
    Input Text    name=lastname    dinakaran
    Input Password    id=password_step_input    welcome123
    # 20 Apr 2000
#    Select From List By Label    id=day     20

    Select From List By Label    xpath=//select[@title='Day']     20
#    Select From List By Label    id=month   Apr
#    Select From List By Value    id=month   4
    Select From List By Index    id=month   3
    Select From List By Label    id=year    2000





    Click Element    xpath=//input[@value='-1']