*** Settings ***
Library    AppiumLibrary
Variables    ../../../PageObject/Locators/iOS/HomeScreenLocators.py
Library    ../../../PageObject/Locators/iOS/HomeScreenLocators.py
Resource    ../../../Ultis/ReadJsonFile.robot

*** Keywords ***
Load User Credentials
    ${user_username}    ${user_password}    ${user_displayName}    ${user_email}=    Get User Account Credentials    user1
    Set Suite Variable    ${user_username}
    Set Suite Variable    ${user_password}
    Set Suite Variable    ${user_displayName}
    Set Suite Variable    ${user_email}

Load Admin Credentials
    ${admin_username}    ${admin_password}    ${admin_displayName}    ${admin_email}=    Get Admin Account Credentials    admin1
    Set Suite Variable    ${admin_username}
    Set Suite Variable    ${admin_password}
    Set Suite Variable    ${admin_displayName}
    Set Suite Variable    ${admin_email}

User see welcoming text
    ${xpath}=    Get Welcome Text Path    ${user_displayName}
    ${actual_username}=    Get Text    ${xpath}
    Element Should Contain Text    ${actual_username}    ${user_displayName}

Admin see welcoming text
    ${xpath}=    Get Welcome Text Path    ${admin_displayName}
    ${actual_username}=    Get Text    ${xpath}
    Element Should Contain Text    ${actual_username}    ${admin_displayName}