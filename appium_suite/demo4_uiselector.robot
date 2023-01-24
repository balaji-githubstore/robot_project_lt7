*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1 Swipe
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=oneplus
    ...     appPackage=org.khanacademy.android
    ...     appActivity=org.khanacademy.android.ui.library.MainActivity
    ...     noReset=true

    Set Appium Timeout    20s

    Run Keyword And Ignore Error    Wait Until Page Contains Element    android=UiSelector().text("Dismiss")
    Run Keyword And Ignore Error    Click Element    android=UiSelector().text("Dismiss")

    Wait Until Page Contains Element    android=UiSelector().description("Settings")
    Click Element    xpath=UiSelector().description("Settings")

    Wait Until Page Contains Element    android=UiSelector().textContains("Sign i")	    30s
    Click Element    android=UiSelector().textContains("Sign i")

    Wait Until Page Contains Element    android=UiSelector().textContains("Sign up with")	    30s
    Click Element    android=UiSelector().textContains("Sign up with")

    #enter firstname using uiSelector
    Wait Until Page Contains Element    android=UiSelector().descriptionContains("First")
    Input Text   xpath=UiSelector().descriptionContains("First")    bala

    #enter birthday as December 20, 2000
    Wait Until Page Contains Element    android=UiSelector().textContains("Birth")	    30s
    Click Element    android=UiSelector().textContains("Birth")

    Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)      30s
    Click Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)    Dec

    Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)     30s
    Click Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Clear Text     android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Input Text     android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)    20

    Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)     30s
    Click Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Clear Text     android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Input Text     android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)    2000

    [Teardown]  Close Application


TC2 Swipe UiSelector
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=oneplus
    ...     appPackage=org.khanacademy.android
    ...     appActivity=org.khanacademy.android.ui.library.MainActivity
    ...     noReset=true

    Set Appium Timeout    20s
     ${count}    Get Matching Xpath Count    android=UiSelector().text("Art of Asia")
    WHILE  ${count}==0
        Swipe By Percent    90    75    90    25
        ${count}    Get Matching Xpath Count    android=UiSelector().text("Art of Asia")
    END
    Wait Until Page Contains Element    android=UiSelector().text("Art of Asia")
    Click Element    android=UiSelector().text("Art of Asia")

    [Teardown]  Close Application

TC3 Swipe UiSelector
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=oneplus
    ...     appPackage=org.khanacademy.android
    ...     appActivity=org.khanacademy.android.ui.library.MainActivity
    ...     noReset=true

    Set Appium Timeout    20s

    Run Keyword And Ignore Error    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Dismiss']
    Run Keyword And Ignore Error    Click Element    xpath=//android.widget.TextView[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//*[@text='Search']
    Click Element    xpath=//*[@text='Search']

    Wait Until Page Contains Element    xpath=//*[@text='Arts and humanities']
    Click Element    xpath=//*[@text='Arts and humanities']

    &{dic_arg}      Create Dictionary       strategy=-android uiautomator
    ...  selector=UiSelector().text("Art of Asia")
    Execute Script    mobile: scroll    &{dic_arg}

    Click Element    android=UiSelector().text("Art of Asia")

    #scroll to South Asia
    &{dic_arg}      Create Dictionary       strategy=-android uiautomator
    ...  selector=UiSelector().text("South Asia")
    Execute Script    mobile: scroll    &{dic_arg}

    #click on south asia
    Click Element    android=UiSelector().text("South Asia")

    [Teardown]      Close Application