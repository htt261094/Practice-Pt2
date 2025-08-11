*** Settings ***
Library    AppiumLibrary
Resource    ../../../Resources/hooksAndCommonAction/hooks.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/iOS/HomeScreen.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/iOS/SearchResultScreen.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/iOS/LoginScreen.robot

*** Test Cases ***
Admin filter category only
    User tap to show filter
    User select Customer Service category
    Customer Category Category displayed on screen

Admin filter only priority
    User select All category
    User select High priority
    High Priority displayed on screen

Admin filter with both category and priority
    User select Data Entry category
    User select Medium priority
    Data Entry Category displayed on screen
    Medium Priority displayed on screen

Admin search for Report task
    Open iOS simulator
    Load Admin Credentials to login
    Admin input username
    Admin input password
    User click login button
    Admin tap on filter button
    Admin search for report task
    Reporting Category displayed on screen