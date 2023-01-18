*** Settings ***
Library     DateTime

*** Test Cases ***
TC1
    Log To Console  message=Balaji Dinakaran
    Log To Console  hello

TC2
    ${my_name}  Set Variable  Balaji
    Log To Console    ${my_name}
    
TC3
    ${current_date}     Get Current Date
    Log To Console    ${current_date}