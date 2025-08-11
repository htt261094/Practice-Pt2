*** Settings ***
Library    AppiumLibrary
Variables    ../../../PageObject/Locators/iOS/SigninScreenLocators.py
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
User input username
    Input Text    ${username_txtbox}    ${user_username}

User input wrong username
    Input Text    ${username_txtbox}    testaccount

User input password
    Input Text    ${password_txtbox}    ${user_password}

User input wrong password
    Input Text    ${password_txtbox}    1

Admin input username
    Input Text    ${username_txtbox}    ${admin_username}

Admin input wrong username
    Input Text    ${username_txtbox}    adminTestAccount

Admin input wrong password
    Input Text    ${password_txtbox}    1

Admin input password
    Input Text    ${password_txtbox}    ${admin_password}

User click login button
    Click Element    ${login_btn}

User see error message about username
    Element Text Should Be    ${errorMess_username}    Username not found

User see error message about password
    Element Text Should Be    ${errorMess_password}    Incorrect password

User click OK button
    Click Element    ${errorMess_ok_btn}