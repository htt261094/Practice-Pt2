*** Settings ***
Library    AppiumLibrary
Variables    ../../../../Resources/PageObject/Locators/Android/SigninScreenLocators.py
Resource    ../../../../Resources/Ultis/ReadJsonFile.robot

*** Keywords ***
Load User Credentials to login
    ${user_username}    ${user_password}    ${user_displayName}    ${user_email}=    Get User Account Credentials    user1
    Set Suite Variable    ${user_username}
    Set Suite Variable    ${user_password}
    Set Suite Variable    ${user_displayName}
    Set Suite Variable    ${user_email}

Load Admin Credentials to login
    ${admin_username}    ${admin_password}    ${admin_displayName}    ${admin_email}=    Get Admin Account Credentials    admin1
    Set Suite Variable    ${admin_username}
    Set Suite Variable    ${admin_password}
    Set Suite Variable    ${admin_displayName}
    Set Suite Variable    ${admin_email}
User input user username
    Input Text    ${username_txtbox}    ${user_username}

User input user password
    Input Text    ${password_txtbox}    ${user_password}

User click login button
    Click Element    ${login_btn}

User input wrong username
    Input Text    ${username_txtbox}    user

User input wrong password
    Input Text    ${password_txtbox}    1

Error message displayed
    Element Text Should Be    ${error_message}    Invalid username or password

Admin input admin username
    Input Text    ${username_txtbox}    ${admin_username}

Admin input admin password
    Input Text    ${password_txtbox}    ${admin_password}

Admin input wrong username
    Input Text    ${username_txtbox}    admintest

Admin input wrong password
    Input Text    ${password_txtbox}    1