*** Settings ***
Library    AppiumLibrary
Resource    ../../../Resources/hooksAndCommonAction/hooks.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/Android/HomeScreen.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/Android/LoginScreen.robot

*** Test Cases ***
User login unsuccessful with wrong username
    Open Android simulator
    Load User Credentials to login
    User input wrong username
    User input user password
    User click login button
    Error message displayed

User login unsuccessful with wrong password
    User input user username
    User input wrong password
    User click login button
    Error message displayed

User login unsuccessful with both wrong username and password
    User input wrong username
    User input wrong password
    User click login button
    Error message displayed

User login successfully
    User input user username
    User input user password
    User click login button
    User see their name on the screen
    User see their email on the screen
    Close All Applications