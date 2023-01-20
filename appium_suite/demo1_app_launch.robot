*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=oneplus
    ...     app=C:${/}Components${/}khan-academy-7-3-2.apk

    ${page_source}  Get Source
    Log    ${page_source}
    Sleep    5s
    Close Application
    
TC2
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=oneplus
    ...     app=C:${/}Components${/}khan-academy-7-3-2.apk

    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']      30s
    Click Element    xpath=//*[@text='Dismiss']
    
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']	30s
    Click Element    xpath=//android.widget.TextView[@text='Sign in']
    Sleep    5s
    [Teardown]   Close Application
    
TC3
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
    Sleep    5s
    [Teardown]  Close Application
    