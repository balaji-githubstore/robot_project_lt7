*** Settings ***
Library     SeleniumLibrary
#selenium advance code
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