*** Settings ***
Library    AppiumLibrary
Resource    ../../Resources/hooksAndCommonAction/hooks.robot
Resource    ../../Resources/PageObject/KeywordDefinationFiles/Android/HomeScreen.robot
Resource    ../../Resources/PageObject/KeywordDefinationFiles/Android/LoginScreen.robot

*** Test Cases ***
Open app and verify
    Open Android simulator
    HomeScreen.Load User Credentials
    User input user username
    User input user password
    User click login button
    User see their name on the screen
    User see their email on the screen