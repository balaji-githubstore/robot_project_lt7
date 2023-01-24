*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=ios
    ...     deviceName=iPhone 11
    ...     app=/Users/balaji/Documents/Company/ios app/iOS.Simulator.SauceLabs.Mobile.Sample.app.2.7.1.app
    ...     platformVersion=15.5
    Set Appium Timeout    20s
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name='test-Username']
    Input Text    xpath=//XCUIElementTypeTextField[@name='test-Username']    standard_user

    Wait Until Page Contains Element    xpath=//*[@name='test-Password']
    Input Text    xpath=//*[@name='test-Password']    secret_sauce

    Click Element    xpath=//*[@name='test-LOGIN']

    Wait Until Page Contains Element    xpath=//*[@name='test-ADD TO CART']
    Click Element    xpath=//*[@name='test-ADD TO CART']

    Wait Until Page Contains Element    xpath=//*[@name='test-ADD TO CART']
    Click Element    xpath=//*[@name='test-ADD TO CART']

#    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]
#    Click Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]

    #BELOW CODE - GO TO CART
    Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]
    Click Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]

    #click on checkout
    #enter firstname as john
    #enter lastname as jo
    #enter zipcode as 100022
    #click on continue
#    Validate the title 'Payment Information:' shown
#    Validate the title 'Shipping Information:' shown
    Sleep    5s
    [Teardown]      Close Application