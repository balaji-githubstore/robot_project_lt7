*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.salesforce.com/in/form/signup/freetrial-sales/
    Input Text    name=UserFirstName    balaji
    Input Text    name=UserLastName    dinakaran
    Click Element    xpath=//div[@class='checkbox-ui']
    Click Element    name=start my free trial
    Element Text Should Be    xpath=//span[contains(@id,'UserPhone')]    Enter a valid phone number
    Close Browser
    
    Click Element    xpath=//div[contains(text(),'Forgot User')]