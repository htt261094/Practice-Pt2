*** Settings ***
Library    AppiumLibrary
Library    String

*** Keywords ***
Get Text from Search Result
    [Arguments]    ${inputtedText}
    @{text_list}=    Get Webelements    //android.widget.TextView
    ${found}=       Set Variable       ${True}

    FOR    ${texts}    IN    @{text_list}
        ${text}=    Get Text    ${texts}
        ${lower_actual}=    Convert To Lower Case    ${text}
        IF    $inputtedText not in $lower_actual
            CONTINUE
        ELSE
            ${found}    Set Variable    ${False}
        END 
    END
    Should Be True    ${found}

Get Text from Empty Table
    @{text_from_body}=    Get Webelements    //android.view.View
    ${found}=    Set Variable    ${False}
    FOR    ${texts}    IN    @{text_from_body}
        ${text}=    Get Text    ${texts}
        ${lower_text_body}=    Convert To Lower Case    ${text}
        IF    $lower_text_body not in $text
            CONTINUE
        ELSE
            ${found}    Set Variable    ${True}
        END
    END
    Should Be True    ${found}