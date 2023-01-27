*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Attribute
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=http://demo.openemr.io/b/openemr/
    
    Element Attribute Value Should Be    id=authUser    placeholder    Username

TC2
     Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=http://demo.openemr.io/b/openemr/

    Input Text    id=authUser    bala

    ${att_value}     Get Element Attribute    id=authUser    placeholder
    Log To Console    ${att_value}

    ${att_value}     Get Element Attribute    id=authUser    value
    Log To Console    ${att_value}
    Log     ${att_value}

    Element Attribute Value Should Be    id=authUser     value    bala

