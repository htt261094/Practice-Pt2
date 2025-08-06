*** Settings ***
Library    AppiumLibrary
Variables    ../../../../Resources/PageObject/Locators/Android/SigninScreenLocators.py
Resource    ../../../../Resources/Ultis/ReadJsonFile.robot

*** Keywords ***
Load User Credentials
    ${user_username}    ${user_password}    ${user_displayName}    ${user_email}=    Get User Account Credentials    user1
    Set Suite Variable    ${user_username}
    Set Suite Variable    ${user_password}
    Set Suite Variable    ${user_displayName}
    Set Suite Variable    ${user_email}
User input user username
    Input Text    ${username_txtbox}    ${user_username}

User input user password
    Input Text    ${password_txtbox}    ${user_password}

User click login button
    Click Element    ${login_btn}