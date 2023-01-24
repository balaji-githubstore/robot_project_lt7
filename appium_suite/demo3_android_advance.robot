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

    Run Keyword And Ignore Error    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Dismiss']
    Run Keyword And Ignore Error    Click Element    xpath=//android.widget.TextView[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//*[@text='Search']
    Click Element    xpath=//*[@text='Search']

    Wait Until Page Contains Element    xpath=//*[@text='Arts and humanities']
    Click Element    xpath=//*[@text='Arts and humanities']

    ${count}    Get Matching Xpath Count    xpath=//*[@text='Art of Asia']
    WHILE  ${count}==0
        Swipe By Percent    90    75    90    25
        ${count}    Get Matching Xpath Count    xpath=//*[@text='Art of Asia']
    END
    Wait Until Page Contains Element    xpath=//*[@text='Art of Asia']
    Click Element    xpath=//*[@text='Art of Asia']

    #swipe and click on South Asia
    ${count}    Get Matching Xpath Count    xpath=//*[@text='South Asia']
    WHILE  ${count}==0
        Swipe By Percent    90    75    90    25
        ${count}    Get Matching Xpath Count    xpath=//*[@text='South Asia']
    END
    Wait Until Page Contains Element    xpath=//*[@text='South Asia']
    Click Element    xpath=//*[@text='South Asia']

    #swipt and click on The Taj Mahal
    ${count}    Get Matching Xpath Count    xpath=//*[@text='The Taj Mahal']
    WHILE  ${count}==0
        Swipe By Percent    90    75    90    25
        ${count}    Get Matching Xpath Count    xpath=//*[@text='The Taj Mahal']
    END
    Wait Until Page Contains Element    xpath=//*[@text='The Taj Mahal']
    Click Element    xpath=//*[@text='The Taj Mahal']

    #verify the text "fifth ruler" text
    Element Should Contain Text    xpath=//*[contains(@text,'fifth')]    fifth ruler

    Page Should Contain Text    fifth ruler

    Element Should Be Visible    xpath=//*[contains(@text,'fifth')]

    ${text}      Get Text    xpath=//*[contains(@text,'fifth')]
    Log    ${text}

    Should Contain    ${text}    Shah Jahan
    Should Contain    ${text}    fifth ruler

    [Teardown]      Close Application




