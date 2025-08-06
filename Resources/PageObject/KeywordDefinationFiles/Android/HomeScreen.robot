*** Settings ***
Library    AppiumLibrary
Variables    ../../../../Resources/PageObject/Locators/Android/HomeScreenLocators.py
Resource    ../../../../Resources/Ultis/ReadJsonFile.robot

*** Keywords ***

Load User Credentials
    ${user_username}    ${user_password}    ${user_displayName}    ${user_email}=    Get User Account Credentials    user1
    Set Suite Variable    ${user_username}
    Set Suite Variable    ${user_password}
    Set Suite Variable    ${user_displayName}
    Set Suite Variable    ${user_email}

User see their name on the screen
    Element Text Should Be    ${userName}    ${user_displayName}

User see their email on the screen
    Element Text Should Be    ${Email}    ${user_email}