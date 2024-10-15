*** Settings ***
Library    SeleniumLibrary
Library    webdriver_manager

*** Variables ***
${BROWSER}    chrome
${URL}        https://demoqa.com/login

*** Test Cases ***
Open DemoQA Website
    [Documentation]    This test case opens the DemoQA website and verifies the title.
    [Tags]    smoke
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    LoginToApplication
    Close Browser

*** Keywords ***
LoginToApplication
    Input Text    id=userName    TrungLe
    Input Text    id=password    Trung1999@
    Click Element    id=login
    Title Should Be    DEMOQA
    Wait Until Element Is Visible    id=userName-value    timeout=10s
    Element Text Should Be    id=userName-value    TrungLe