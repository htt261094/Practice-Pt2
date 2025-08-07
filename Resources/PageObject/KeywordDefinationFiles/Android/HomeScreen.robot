*** Settings ***
Library    AppiumLibrary
Library    ../../../PageObject/Locators/Android/HomeScreenLocators.py
Variables    ../../../PageObject/Locators/Android/HomeScreenLocators.py
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
User see their name on the screen
    ${xpath}=    Get User Name Xpath    ${user_displayName}
    ${actual_name}=    Get Text    ${xpath}
    Should Be Equal    ${actual_name}    ${user_displayName}

User see their email on the screen
    ${xpath}=    Get User Name Xpath    ${user_email}
    ${actual_email}=    Get Text    ${xpath}
    Should Be Equal    ${actual_email}    ${user_email}

Admin see their name on the screen
    ${xpath}=    Get User Name Xpath    ${admin_displayName}
    ${actual_name}=    Get Text    ${xpath}
    Should Be Equal    ${actual_name}    ${admin_displayName}

Admin see their email on the screen
    ${xpath}=    Get User Name Xpath    ${admin_email}
    ${actual_email}=    Get Text    ${xpath}
    Should Be Equal    ${actual_email}    ${admin_email}

Tap on search button
    Click Element    ${search_btn}