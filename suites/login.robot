*** Setting ***
Documentation            Search Login on sigin
Resource                ../pageObjects/homePageObjects/homePage.robot
Resource                ../pageObjects/Login/loginPage.robot
Test Setup              Open Flight Application
Test Teardown           Close Flight Application

*** Variables ***
${VALID_USERNAME}        support@ngendigital.com
${VALID_PASSWORD}        abc123
${INVALID_USERNAME}      invalid 
${INVALID_PASSWORD}      invalid

*** Test Case ***
Login Valid Credential
    Click Sign In Button On Home Page
    Input Username on Login Page    ${VALID_USERNAME}
    Input Password on Login Page    ${VALID_PASSWORD}
    Click Sign In Button on Login Page

Login Invalid Credential
    Click Sign In Button On Home Page
    Input Username on Login Page    ${INVALID_USERNAME}
    Input Password on Login Page    ${INVALID_PASSWORD}
    Click Sign In Button on Login Page