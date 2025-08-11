*** Settings ***
Library    AppiumLibrary
Resource    ../../../Resources/hooksAndCommonAction/hooks.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/iOS/HomeScreen.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/iOS/LoginScreen.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/iOS/SearchResultScreen.robot

*** Test Cases ***
Admin logout successfully
    Sleep    2s
    Admin tap back button
    Admin tap on logout button
    Login screen is visible