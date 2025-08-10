*** Settings ***
Library    AppiumLibrary
Resource    ../../../Resources/hooksAndCommonAction/hooks.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/iOS/HomeScreen.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/iOS/LoginScreen.robot


*** Test Cases ***
User login unsuccessful with wrong username
    Open iOS simulator
    Load User Credentials to login
    User input wrong username
    User input password
    User click login button
    User see error message about username
    User click OK button
    Clear Text    //XCUIElementTypeTextField
    Clear Text    //XCUIElementTypeSecureTextField

User login unsuccessful with wrong password
    User input username
    User input wrong password
    User click login button
    User see error message about password
    User click OK button
    Clear Text    //XCUIElementTypeTextField
    Clear Text    //XCUIElementTypeSecureTextField

User login unsuccessful with wrong username and password
    User input wrong username
    User input wrong password
    User click login button
    User see error message about username
    User click OK button
    Clear Text    //XCUIElementTypeTextField
    Clear Text    //XCUIElementTypeSecureTextField

User login successfully with correct username and password
    User input username
    User input password
    User click login button
    User see welcoming text