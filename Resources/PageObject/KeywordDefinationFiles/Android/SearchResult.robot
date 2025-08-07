*** Settings ***
Library    AppiumLibrary
Variables    ../../../PageObject/Locators/Android/SearchResultScreen.py
Resource    ../../../Ultis/GetTextFromElements.robot

*** Variables ***
${inputtedText}    Customer
${noResultText}    NoResultTest
*** Keywords ***
Input text to search
    Input Text    ${search_box}    ${inputtedText}

Input task not exsited
    Input Text    ${search_box}    ${noResultText}

Inputted text is display on screen
    Get Text from Search Result    ${inputtedText}

Screen display no result found
    Get Text from Empty Table
    