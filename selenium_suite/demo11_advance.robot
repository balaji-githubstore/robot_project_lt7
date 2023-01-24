*** Settings ***
Library     SeleniumLibrary
#selenium advance code
#javascript code
*** Test Cases ***
TC1
    Log To Console    C:\\Mine\\Balaji-Profile_2022.pdf
    Log To Console    ${/}hello
    Log To Console    C:${/}Mine${/}Balaji-Profile_2022.pdf

TC2
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.ilovepdf.com/pdf_to_word
    Choose File    xpath=//input[@type='file']    C:${/}Mine${/}Balaji-Profile_2022.pdf
    Sleep    5s

TC3 Upload File
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.pdftoword.com/
    Choose File    xpath=//input[@type='file']    C:${/}Mine${/}Balaji-Profile_2022.pdf
    Sleep    5s

TC4 CSS Selector
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.facebook.com/
    Input Text    css=#email    jack
    Input Password    css=#pass    pass123
    Click Element    css=button[name='login']

TC5
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.redbus.in/
    Input Text    id=src    Central Bus Station, Va
    Click Element    xpath=//li[contains(text(),'Central Bus')]

    Sleep    5s


TC6 Javascript
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://phptravels.net/
    Click Element    xpath=//span[contains(text(),'Search by City')]
    Input Text    xpath=//input[@aria-controls='select2-hotels_city-results']    Vadodara
    Click Element    xpath=//li[contains(text(),'Vadodara,In')]
#approach 1
#    Input Text    id=checkin    31-10-2023
#approach 2
    Execute Javascript  document.querySelector('#checkin').value='31-10-2023'
    #checkout date as 29-11-2023
    Execute Javascript  document.querySelector('#checkout').value='30-11-2023'
    Sleep    4s

TC6 Javascript Using Xpath
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://phptravels.net/

    ${ele}   Get WebElement    xpath=//input[@id='checkin']
    Execute Javascript  arguments[0].value='31-10-2023'     ARGUMENTS        ${ele}

    Sleep    4s

TC7
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://nasscom.in

   ${ele}    Get WebElement    xpath=//a[text()='Members Listing']
   Execute Javascript  arguments[0].click()     ARGUMENTS        ${ele}


TC10
    @{output}   Run Keyword And Ignore Error    Click Element    xpath=//a
    Log To Console    ${output}
    Log To Console    ${output}[0]
    Log To Console    ${output}[1]
    Log     ${output}
    