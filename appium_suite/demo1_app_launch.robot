*** Settings ***
Library     AppiumLibrary

*** Keywords ***
Wait And Click Element
    [Arguments]        ${locator}
    Wait Until Page Contains Element    ${locator}      30s
    Click Element    ${locator}


*** Test Cases ***
#install native app
TC1 Install App
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=oneplus
    ...     app=C:${/}Components${/}khan-academy-7-3-2.apk

    ${page_source}  AppiumLibrary.Get Source
    Log    ${page_source}
    Sleep    5s
    Close Application


TC2
    [Documentation]     Working with native app
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=oneplus
    ...     app=C:${/}Components${/}khan-academy-7-3-2.apk

    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']      30s
    AppiumLibrary.Click Element    xpath=//*[@text='Dismiss']
    
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']	30s
    Click Element    xpath=//android.widget.TextView[@text='Sign in']
    Sleep    5s
    [Teardown]   Close Application
    
TC3
    [Documentation]     Working with native app
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=oneplus
    ...     app=C:${/}Components${/}khan-academy-7-3-2.apk
    
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Dismiss']      30s
    Click Element    xpath=//android.widget.TextView[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']      30s
    Click Element    xpath=//android.widget.TextView[@text='Sign in']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']      30s
    Click Element    xpath=//android.widget.TextView[@text='Sign in']

    Wait Until Page Contains Element    xpath=//*[contains(@text,'e-mail address')]     30s
    Input Password    xpath=//*[contains(@text,'e-mail address')]    bala@gmail.com

    Wait Until Page Contains Element    xpath=//*[@content-desc='Password']     30s
    Input Password    xpath=//*[@content-desc='Password']    hello123

    Wait Until Page Contains Element    xpath=(//*[@text='Sign in'])[2]     30s

    Sleep    5s
    [Teardown]  Close Application


TC4
    [Documentation]     Working with native app
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=oneplus
    ...     app=C:${/}Components${/}khan-academy-7-3-2.apk
    Set Appium Timeout    30s

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Dismiss']
    Click Element    xpath=//android.widget.TextView[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']
    Click Element    xpath=//android.widget.TextView[@text='Sign in']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']
    Click Element    xpath=//android.widget.TextView[@text='Sign in']

    Wait Until Page Contains Element    xpath=//*[contains(@text,'e-mail address')]
    Input Password    xpath=//*[contains(@text,'e-mail address')]    bala@gmail.com

    Wait Until Page Contains Element    xpath=//*[@content-desc='Password']
    Input Password    xpath=//*[@content-desc='Password']    hello123

    Wait Until Page Contains Element    xpath=(//*[@text='Sign in'])[2]
    Click Element    xpath=(//*[@text='Sign in'])[2]
    
    Wait Until Page Contains Element    xpath=//*[contains(@text,'issue')]
    Element Text Should Be    xpath=//*[contains(@text,'issue')]    There was an issue signing in
    
#    Wait And Click Element    xpath=//*
    
    Sleep    5s
    [Teardown]  Close Application
    