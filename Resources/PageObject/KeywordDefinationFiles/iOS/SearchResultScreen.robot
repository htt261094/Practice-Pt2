*** Settings ***
Library    AppiumLibrary
Variables    ../../../PageObject/Locators/iOS/SearchResultScreenLocators.py
Resource    ../../../Ultis/GetTextFromElements.robot
Resource    ../../../Ultis/VerifyTextforiOS.robot

*** Keywords ***
User tap to show filter
    Click Element    ${filter_option}

User select All category
    Click Element    ${cat_all_option}

User select Customer Service category
    Click Element    ${cat_cusService_option}

User select Data Entry category
    Click Element    ${cat_dataEntry_option}

User select Document Processing category
    Click Element    ${cat_docProcess_option}

User select Finance category
    Click Element    ${cat_finance_option}

User select Reporting category
    Click Element    ${cat_report_option}

User select High priority
    Click Element    ${pri_high_option}

User select Medium priority
    Click Element    ${pri_med_option}

User select Low priority
    Click Element    ${pri_low_option}

User clear all filter
    Click Element    ${clear_filter_btn}

User hide filter filter
    Click Element    ${hide_filter_btn}

Customer Category Category displayed on screen
    Sleep    5s
    Get Category from list    Customer Service

Data Entry Category displayed on screen
    Get Category from list    Data Entry

Document Processing Category displayed on screen
    Get Category from list    Document Processing

Finance Category displayed on screen
    Get Category from list    Finance

Reporting Category displayed on screen
    Get Category from list    Reporting

High Priority displayed on screen
    Get Priority from list    High

Medium Priority displayed on screen
    Get Priority from list    Medium

Low Priority displayed on screen
    Get Priority from list    Low

Admin search for report task
    Input Text    ${searchbox}    Report