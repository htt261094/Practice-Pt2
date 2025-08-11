*** Settings ***
Library    AppiumLibrary
Resource    ../../../Resources/hooksAndCommonAction/hooks.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/iOS/HomeScreen.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/iOS/LoginScreen.robot

*** Test Cases ***
Admin logout successfully
    Sleep    2s
    Admin tap on logout button
    Login screen is visible