*** Settings ***
Library     AppiumLibrary
*** Test Cases ***
TC1 Sign Up
    [Documentation]     Working with native app
    ...     for automating sign up activity
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=oneplus
    ...     appPackage=org.khanacademy.android
    ...     appActivity=org.khanacademy.android.ui.library.MainActivity
    ...     noReset=true

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Dismiss']      30s
    Click Element    xpath=//android.widget.TextView[@text='Dismiss']

    #click on settings icon
    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@content-desc='Settings']
    Click Element    xpath=//android.widget.ImageView[@content-desc='Settings']
    #click on sign in
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']	30s
    Click Element    xpath=//android.widget.TextView[@text='Sign in']
    # click on sign up with email
    Wait Until Page Contains Element    xpath=//*[contains(@text,'Sign up with')]	30s
    Click Element    xpath=//*[contains(@text,'Sign up with')]
    #enter firstname
    #enter lastname
    #enter dob
#    Input Text    xpath=//*[@text='Birthday']    December 20, 2000
    Wait Until Page Contains Element    xpath=//*[@text='Birthday'] 	30s
    Click Element    xpath=//*[@text='Birthday']

    Wait Until Page Contains Element    xpath=//*[@resource-id='android:id/numberpicker_input']     30s
    Click Element    xpath=//*[@resource-id='android:id/numberpicker_input']
    Clear Text    xpath=//*[@resource-id='android:id/numberpicker_input']
    Input Text    xpath=//*[@resource-id='android:id/numberpicker_input']    Dec

    Wait Until Page Contains Element    xpath=(//*[@resource-id='android:id/numberpicker_input'])[2]     30s
    Click Element    xpath=(//*[@resource-id='android:id/numberpicker_input'])[2]
    Clear Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[2]
    Input Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[2]    Dec

    Wait Until Page Contains Element    xpath=(//*[@resource-id='android:id/numberpicker_input'])[3]     30s
    Click Element    xpath=(//*[@resource-id='android:id/numberpicker_input'])[3]
    Clear Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[3]
    Input Text    xpath=(//*[@resource-id='android:id/numberpicker_input'])[3]    Dec


    #enter email address
    #password as welcome123

    #runs always wether test case pass or fail
    Sleep    5s
    [Teardown]   Close Application
