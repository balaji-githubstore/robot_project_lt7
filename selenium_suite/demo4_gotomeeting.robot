*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.goto.com/meeting/
#    Click on Accept Recommended Settings
#    Click on Try Free
#Enter first name as “John”
#Enter last name as “wick”
#Enter work email as “john@gmail.com”
#Job Title as “Help Desk”
#Company size – 10-99
#Click on signup
#validate the error message should contain "8 - 32 Characters"