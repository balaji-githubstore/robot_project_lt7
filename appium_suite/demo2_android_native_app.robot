*** Settings ***
Library     AppiumLibrary
*** Test Cases ***
TC1 Sign Up
    [Documentation]     Working with native app
    ...     for automating sign up activity
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=oneplus
    ...     appPackage=
    ...     appActivity=
    #click on settings icon
    #click on sign in
    # click on sign up with email
    #enter firstname
    #enter lastname
    #enter dob
    #enter email address
    #password as welcome123

    #runs always wether test case pass or fail
    [Teardown]   Close Application
