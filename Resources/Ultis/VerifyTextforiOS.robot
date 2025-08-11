*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Get Category from list
    [Arguments]    ${filter_category}
    ${index}=    Set Variable    1
    @{cells}=    Get Webelements    //XCUIElementTypeCell
    FOR    ${cell}    IN    @{cells}
        @{category_list}=    Get Webelements    //XCUIElementTypeCell[${index}]//XCUIElementTypeStaticText[4]
        FOR    ${txt_elem}    IN    @{category_list}
            ${actual_category}=    Get Text    ${txt_elem}
        END
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be Equal    ${filter_category}    ${actual_category}

Get Priority from list
    [Arguments]    ${filter_priority}
    ${index}=    Set Variable    1
    @{cells}=    Get Webelements    //XCUIElementTypeCell
    FOR    ${cell}    IN    @{cells}
        @{priority_list}=    Get Webelements    //XCUIElementTypeCell[${index}]//XCUIElementTypeStaticText[5]
        FOR    ${txt_elem}    IN    @{priority_list}
            ${actual_priority}=    Get Text    ${txt_elem}
        END
        ${index}=    Evaluate    ${index} + 1
    END
    Should Be Equal    ${filter_priority}    ${actual_priority}