*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1

    &{dic}      Create Dictionary      buildName=khan lt7
    ...     projectName=khan project lt7
    ...     userName=dinakaranbalaji1
    ...     accessKey=6yXRE4nK1fyvTHWA2kPD

#    Log To Console    ${dic}

    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=android
    ...     deviceName=Google Pixel 3
    ...     app=bs://e49a881bded2b3893487347f3a0f346652fe5616
    ...     platformVersion=9.0
    ...     bstack:options=${dic}


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
