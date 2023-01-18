*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Select Frame    xpath=//frame[@name='login_page']
    Input Text    name=fldLoginUserId    test123
    Click Element    partial link=CONTINU
    Unselect Frame

TC2
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://redbus.in
    Click Element    id=i-icon-profile12345
    Click Element    id=signInLink
    Select Frame    xpath=//iframe[@class='modalIframe']
#    //iframe[contains(@src,'/login')]
    Input Text    id=mobileNoInp    7878
    Element Should Contain    //span[contains(text(),'valid mobile')]    Please enter valid mobile number
    Unselect Frame
    Close Browser