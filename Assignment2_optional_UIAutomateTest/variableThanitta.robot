*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}                                        https://www.name-generator.org.uk/quick/
${browser}                                    chrome
${search_view}                                xpath=//*[@id="search_form"]/input
${search_viewButton}                          xpath=//*[@id="search_form"]/button
${searchbtn_centerofWebpage}                  xpath=//*[@id="search_outer"]/div/center/form/input[2]
${locator_txtdisplayNameTitle}                xpath=//*[@id="main"]/div/div[3]
${locator_inputQuantitySetting}               xpath=//*[@id="main"]/div/form/input[3]
${locator_listsSelection}                     id=gender
${locator_generateNameButton}                 xpath=//*[@id="main"]/div/form/input[4]
${locator_reviewGeneratorButton}              xpath=//*[@id="html"]/body/div[2]/div[1]/input