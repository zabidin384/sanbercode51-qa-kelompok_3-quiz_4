*** Settings ***
Resource            ../base/base.robot
Variables            homePage_locator.yaml

*** Keywords ***
Click Sign In Button On Home Page
    Click Element    ${sign-in-button-home}
    