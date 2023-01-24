*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    &{dic}      Create Dictionary      buildName=khan lt7
    ...     projectName=khan project lt7
    ...     userName=dinakaranbalaji1
    ...     accessKey=6yXRE4nK1fyvTHWA2kPD

    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=ios
    ...     deviceName=iPhone 11 Pro
    ...     app=bs://88a260eace592d6e515984c8375f7269bee518f2
    ...     platformVersion=13
    ...     bstack:options=${dic}

    ${app_source}   Get Source
    Log    ${app_source}

    [Teardown]      Close Application

TC2
    &{dic}      Create Dictionary      buildName=khan lt7
    ...     projectName=khan project lt7
    ...     userName=dinakaranbalaji1
    ...     accessKey=6yXRE4nK1fyvTHWA2kPD

    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=ios
    ...     deviceName=iPhone 11 Pro
    ...     app=bs://88a260eace592d6e515984c8375f7269bee518f2
    ...     platformVersion=13
    ...     bstack:options=${dic}
    Set Appium Timeout    20s
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name='test-Username']
    Input Text    xpath=//XCUIElementTypeTextField[@name='test-Username']    standard_user
    #enter password as secret_sauce
    #click login

    # click on add to cart for first item
    #click on add to cart for second item
    
    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]
    Click Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]


    [Teardown]      Close Application
