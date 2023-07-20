*** Settings ***
Library    SeleniumLibrary

Resource    ${CURDIR}/variableThanitta.robot

*** Keywords ***
Open Webpage_GenerateName
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains    Generate a Random List of Names Quickly


To verify default fields and labels
    Wait Until Element Is Visible    ${search_view}
    Wait Until Element Is Visible    ${search_viewButton}
    Wait Until Element Is Visible    ${locator_txtdisplayNameTitle}
    Wait Until Element Is Visible    ${locator_inputQuantitySetting} 
    Wait Until Element Is Visible    ${locator_listsSelection}
    Wait Until Element Is Visible    ${locator_generateNameButton}
    Scroll Element Into View         ${locator_reviewGeneratorButton}        
    Wait Until Element Is Visible    ${locator_reviewGeneratorButton}    

To verfiy input text setting for gender and list-of-name generate display
    [Arguments]    ${genderValue}    ${nameListDisplaySetting}
    Select From List By Label        gender                                 ${genderValue}
    Wait Until Element Is Visible    ${locator_inputQuantitySetting}
    Input Text                       ${locator_inputQuantitySetting}        ${nameListDisplaySetting}
    Press Keys                       ${locator_inputQuantitySetting}        ENTER

To verify search field on tabbar
    Wait Until Element Is Visible    ${search_view} 
    Input Text                       ${search_view}                         Nonoka Murakata
    Wait Until Element Is Visible    ${search_viewButton} 
    Click Element                    ${search_viewButton} 
    Wait Until Element Is Visible    ${searchbtn_centerofWebpage} 
    Wait Until Page Contains         No results found for nonoka murakata.