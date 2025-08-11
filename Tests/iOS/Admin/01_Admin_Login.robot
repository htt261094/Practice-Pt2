*** Settings ***
Library    AppiumLibrary
Resource    ../../../Resources/hooksAndCommonAction/hooks.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/iOS/HomeScreen.robot
Resource    ../../../Resources/PageObject/KeywordDefinationFiles/iOS/LoginScreen.robot


*** Test Cases ***
User login unsuccessful with wrong username
    Open iOS simulator
    Load Admin Credentials to login
    Admin input wrong username
    Admin input password
    User click login button
    User see error message about username
    User click OK button
    Clear inputted text

User login unsuccessful with wrong password
    Admin input username
    Admin input wrong password
    User click login button
    User see error message about password
    User click OK button
    Clear inputted text

User login unsuccessful with wrong username and password
    Admin input wrong username
    Admin input wrong password
    User click login button
    User see error message about username
    User click OK button
    Clear inputted text
    
User login successfully with correct username and password
    Admin input username
    Admin input password
    User click login button
    Admin see welcoming text