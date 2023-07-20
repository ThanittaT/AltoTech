*** Settings ***
Library    SeleniumLibrary

Resource    ${CURDIR}/variableThanitta.robot
Resource    ${CURDIR}/keywordThanitta.robot

Suite Setup    Set Selenium Speed    0.5s
Test Setup    Open Webpage_GenerateName
Test Teardown    Close Browser   
Suite Teardown    Close All Browsers


*** Test Cases ***
TC01-(default)Test Open Name Generator Page
    [Documentation]    TC01-(default) ทดสอบการเข้าสู่หน้าจอ Name Generator
    [Tags]             default
    To verify default fields and labels  


TC02-To verfiy setting Gender and Name lists generate with multiple values
    [Documentation]    TTC02-To verfiy setting Gender and Name lists generate
    [Tags]             pass
    [Template]         To verfiy input text setting for gender and list-of-name generate display
    male        5
    female      10
    both        3
    unisex      8

TC03-To verify search field on tabbar
    [Documentation]    TC03-ตรวจสอบการค้นหาข้อมูลรูปแว่นขยาย- To verify search field on tabbar
    [Tags]             pass
    To verify search field on tabbar