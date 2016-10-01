*** Settings ***
Library           AppiumLibrary

*** Test Cases ***
n11WebLogin
    Open Browser    http://www.n11.com    gc
    Click Element    css=.btnSignIn
    Input Text    name=email    testmail3@pismail.com
    Input Password    name=password    123qwe
    Click Element    css=.button.medium.green
    Close Browser
    login

mobileFirstTest
    Open Application    remote_url=http://localhost:4723/wd/hub    appPackage=com.experitest.ExperiBank    deviceName=emulator-5554    platformName=Android
    Input Text    id=com.experitest.ExperiBank:id/usernameTextField    company
    Input Password    id=com.experitest.ExperiBank:id/passwordTextField    company
    Click Element    id=com.experitest.ExperiBank:id/loginButton

*** Keywords ***
login
    [Arguments]    ${arg1}    ${arg2}
