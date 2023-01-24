*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Add Patient
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin
    Input Password    css=#clearPass    pass
    Select From List By Label    name=languageChoice        English (Indian)
    Click Element    css=#login-button
    Click Element    xpath=//div[text()='Patient']
    Click Element    xpath=//div[text()='New/Search']
    
    Select Frame    xpath=//iframe[@name='pat']
    Input Text    id=form_fname    bala
#    7.	Add the first name, last name
#8.	Update DOB as today's date
#9.	Update the gender
#10.	. Click on the create new patient button above the form
#11.	. Click on confirm create new patient button.
#12.	. Print the text from alert box (if any error before handling alert add 5 sec wait)
#13.	. Handle alert
#${alert_text}  Handle Alert    action=ACCEPT     timeout=30s
#    Log To Console    ${alert_text}
#14.	Close the Happy Birthday popup
#15.	Validate the added patient name