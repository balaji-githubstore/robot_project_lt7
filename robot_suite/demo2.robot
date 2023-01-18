*** Settings ***
Library     OperatingSystem

*** Test Cases ***
TC1
    Create Directory    path=C:\\mine\\demo123
    
TC2
    Log To Console    C:\\mine\\demo123
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${EXECDIR}
    Log To Console    C:${/}mine${/}demo123
    Log To Console    hi${SPACE}${SPACE}world
    Log To Console    ${TEST_NAME}
    Log To Console    ${SUITE_NAME}
    
TC3
    Log To Console    C:${/}Mine${/}Balaji-Profile_2022.pdf
