*** Settings ***
Library    AppiumLibrary
Resource    ../../../Resources/hooksAndCommonAction/hooks.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/Android/HomeScreen.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/Android/LoginScreen.robot

*** Test Cases ***
Admin login unsuccessful with wrong username
    Open Android simulator
    Load Admin Credentials to login
    Admin input wrong username
    Admin input admin password
    User click login button
    Error message displayed

Admin login unsuccessful with wrong password
    Admin input admin username
    Admin input wrong password
    User click login button
    Error message displayed

Admin login unsuccessful with both wrong username and password
    Admin input wrong username
    Admin input wrong password
    User click login button
    Error message displayed

Admin login successfully
    Admin input admin username
    Admin input admin password
    User click login button
    Admin see their name on the screen
    Admin see their email on the screen

