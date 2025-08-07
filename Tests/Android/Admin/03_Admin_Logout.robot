*** Settings ***
Library    AppiumLibrary
Resource    ../../../Resources/hooksAndCommonAction/hooks.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/Android/HomeScreen.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/Android/SearchResult.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/Android/LoginScreen.robot

*** Test Cases ***
User logout successfully
    Sleep    2s
    Tap Back button
    Tap Logout button
    Login Ttitle is visible