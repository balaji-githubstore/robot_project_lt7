*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.medibuddy.in/
    Click Element    link=Login
    Click Element    xpath=//div[contains(text(),'an Insurance')]
    Click Element    xpath=//div[contains(text(),'using Username')]
    Input Text    name=userName    john
    Click Element    xpath=//button[text()='Proceed']
    Input Password    name=password    hello123
    Click Element    xpath=//input[@type='checkbox']
    Click Element    xpath=//button[text()='Log in']
#    Element Text Should Be    //*[contains(text(),'incorrect password')]          You have entered incorrect password. If you forgot the password please reset your password by clicking on the forgot password link.
    Element Should Contain    //*[contains(text(),'incorrect password')]    You have entered incorrect password
