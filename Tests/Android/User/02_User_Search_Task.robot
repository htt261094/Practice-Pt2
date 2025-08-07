*** Settings ***
Library    AppiumLibrary
Resource    ../../../Resources/hooksAndCommonAction/hooks.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/Android/HomeScreen.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/Android/SearchResult.robot

*** Test Cases ***
User search task and verify search result
    Tap on search button
    Input text to search
    Inputted text is display on screen

User search task not exist
    Input task not exsited
    Screen display no result found