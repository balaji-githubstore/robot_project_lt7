*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://www.online.citibank.co.in/
    Run Keyword And Ignore Error    Click Element    xpath=//a[@title='Close']
    Click Element    xpath=//span[text()='Login']
    Switch Window   NEW
    Click Element    xpath=//div[contains(text(),'Forgot User')]
    Click Element    link=select your product type
    Click Element    link=Credit Card
    Input Text    id=citiCard1    2345
    Input Text    id=citiCard2    2345
    Input Text    id=citiCard3    2345
    Input Text    id=citiCard4    2345
    Input Text    id=cvvnumber    340
#    Input Text    id=bill-date-long    20/12/2000
    Scroll Element Into View    xpath=//input[@value='PROCEED']
    Click Element    id=bill-date-long
    Select From List By Label    xpath=//select[@data-handler='selectYear']     2000
    Select From List By Label    xpath=//select[@data-handler='selectMonth']    Dec
    Click Element    link=20
    Click Element    xpath=//input[@value='PROCEED']
    Element Should Contain    id=ui-id-1    Please accept Terms and Condition
    Switch Window   MAIN
    Close Window
    Sleep    2s
    Close Browser


