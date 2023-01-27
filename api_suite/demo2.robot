*** Settings ***
Library     RequestsLibrary
Library    OperatingSystem
Library    SeleniumLibrary

Test Teardown   Close Browser

*** Test Cases ***
TC1
   Open Browser   browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Go To    url=https://google.com
   Log Title

