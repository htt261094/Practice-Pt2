*** Settings ***
Library    AppiumLibrary
Library    JSONLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${Evn}    Resources/PageObject/TestData/Environment.json
${AccountList}    Resources/PageObject/TestData/Account.json

*** Keywords ***
Read Android Config
    [Documentation]    Reads and Return all Android Capabilities
    File Should Exist    ${Evn}
    ${json_text}=    Get File    ${Evn}
    ${Android_evn}=    Evaluate    json.loads('''${json_text}''')    json
    ${android}=        Get From Dictionary    ${Android_evn}    Android_Emulator

    ${remote_url}=         Get From Dictionary    ${android}    remote_url
    ${automationName}=     Get From Dictionary    ${android}    automationName
    ${deviceName}=         Get From Dictionary    ${android}    deviceName
    ${platformName}=       Get From Dictionary    ${android}    platformName
    ${platformVersion}=    Get From Dictionary    ${android}    platformVersion
    ${appPackage}=         Get From Dictionary    ${android}    appPackage
    ${appActivity}=        Get From Dictionary    ${android}    appActivity

    ${Android_Desired_Capabilities}=    Create Dictionary
    ...    remote_url=${remote_url}
    ...    automationName=${automationName}
    ...    deviceName=${deviceName}
    ...    platformName=${platformName}
    ...    platformVersion=${platformVersion}
    ...    appPackage=${appPackage}
    ...    appActivity=${appActivity}
    RETURN    ${Android_Desired_Capabilities}

Read iOS Config
    [Documentation]    Reads and return all iOS Capabilities
    File Should Exist    ${Evn}
    ${json_text}=    Get File    ${Evn}
    ${iOS_evn}=    Evaluate    json.loads('''${json_text}''')    json
    ${iOS}=        Get From Dictionary    ${iOS_evn}    iOS_Emulator
    
    ${remote_url}=         Get From Dictionary    ${iOS}    remote_url
    ${automationName}=     Get From Dictionary    ${iOS}    automationName
    ${deviceName}=         Get From Dictionary    ${iOS}    deviceName
    ${platformName}=       Get From Dictionary    ${iOS}    platformName
    ${platformVersion}=    Get From Dictionary    ${iOS}    platformVersion
    ${app}=         Get From Dictionary    ${iOS}    app
    ${udid}=        Get From Dictionary    ${iOS}    udid
    ${noReset}=    Get From Dictionary    ${iOS}    noReset
    ${useNewWDA}=    Get From Dictionary    ${iOS}    useNewWDA

    ${iOS_Desired_Capabilities}=    Create Dictionary
    ...    remote_url=${remote_url}
    ...    automationName=${automationName}
    ...    deviceName=${deviceName}
    ...    platformName=${platformName}
    ...    platformVersion=${platformVersion}
    ...    app=${app}
    ...    udid=${udid}
    ...    noReset=${noReset}
    ...    useNewWDA=${useNewWDA}
    RETURN    ${iOS_Desired_Capabilities}

Get User Account Credentials
    [Arguments]    ${account_name}
    File Should Exist    ${AccountList}
    ${json_text}=    Get File    ${AccountList}
    ${account_json}=    Evaluate    json.loads('''${json_text}''')    json

    ${accounts}=    Get From Dictionary    ${account_json}    User
    ${account_data}=    Get From Dictionary    ${accounts}    ${account_name}

    ${user_username}=    Get From Dictionary    ${account_data}    username
    ${user_password}=    Get From Dictionary    ${account_data}    password
    ${user_displayName}=    Get From Dictionary    ${account_data}    displayName
    ${user_email}=       Get From Dictionary    ${account_data}    email

    RETURN    ${user_username}    ${user_password}    ${user_displayName}    ${user_email}

Get Admin Account Credentials
    [Arguments]    ${account_name}
    File Should Exist    ${AccountList}
    ${json_text}=    Get File    ${AccountList}
    ${account_json}=    Evaluate    json.loads('''${json_text}''')    json

    ${accounts}=    Get From Dictionary    ${account_json}    Admin
    ${account_data}=    Get From Dictionary    ${accounts}    ${account_name}

    ${admin_username}=    Get From Dictionary    ${account_data}    username
    ${admin_password}=    Get From Dictionary    ${account_data}    password
    ${admin_displayName}=    Get From Dictionary    ${account_data}    displayName
    ${admin_email}=       Get From Dictionary    ${account_data}    email

    RETURN    ${admin_username}    ${admin_password}    ${admin_displayName}    ${admin_email}