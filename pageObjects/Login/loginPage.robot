*** Settings ***
Resource        ../base/base.robot
Variables        login_locator.yaml

*** Keywords ***
Input Username on Login Page
    [Arguments]                        ${username}
    Wait Until Element Is Visible                           ${username-input}
    Input Text                         ${username-input}    ${username}

Input Password on Login Page
    [Arguments]                        ${password}
    Wait Until Element Is Visible                           ${password-input}
    Input Text                         ${password-input}    ${password}

Click Sign In Button on Login Page
    Click Element    ${sign-in-button-login}