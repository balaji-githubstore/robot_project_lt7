*** Settings ***
Documentation       IOS APP
Library     AppiumLibrary

*** Test Cases ***
TC1 Install APP
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=ios
    ...     deviceName=iPhone 11
    ...     app=/Users/balaji/Documents/Company/ios app/iOS.Simulator.SauceLabs.Mobile.Sample.app.2.7.1.app
    ...     bundleId=
    ...     platformVersion=15.5
    Set Appium Timeout    20s
    Sleep    2s
    [Teardown]  Close Application
    
TC2 Scroll Using Keyword When Count Zero
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=ios
    ...     deviceName=iPhone 11
    ...     bundleId=com.apple.Health
    ...     platformVersion=15.5
    Set Appium Timeout    20s

    Wait Until Page Contains Element    xpath=//*[@name='Edit']
    Click Element    xpath=//*[@name='Edit']

    Wait Until Page Contains Element    xpath=//*[@name='All']
    Click Element    xpath=//*[@name='All']

    ${count}    Get Matching Xpath Count    xpath=//*[@name='Selenium']

    WHILE  ${count}==0
        Swipe By Percent    90    75    90    25
        ${count}    Get Matching Xpath Count    xpath=//*[@name='Selenium']
    END
    Wait Until Page Contains Element    xpath=//*[@name='Selenium']
    Click Element    xpath=//*[@name='Selenium']

#    Wait Until Page Contains Element    nsp:name=="Edit"
#    Click Element    nsp:name=='Edit'

    Sleep    2s
    [Teardown]  Close Application


TC3 Scroll Using Keyword When Count More than one
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=ios
    ...     deviceName=iPhone 11
    ...     bundleId=com.apple.Health
    ...     platformVersion=15.5
    Set Appium Timeout    20s

    Wait Until Page Contains Element    xpath=//*[@name='Edit']
    Click Element    xpath=//*[@name='Edit']

    Wait Until Page Contains Element    xpath=//*[@name='All']
    Click Element    xpath=//*[@name='All']


    FOR    ${i}    IN RANGE    1    999
        @{output}   Run Keyword And Ignore Error    Click Element    xpath=//*[@name='Selenium']
        Swipe By Percent    90    75    90    25
        Exit For Loop If    '${output}[0]'=='PASS'
    END




    Sleep    2s
    [Teardown]  Close Application




