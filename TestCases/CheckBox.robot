***Settings***

Library    SeleniumLibrary


***Variables***

${BROWSER}    chrome
${URL}        https://demoqa.com/checkbox


***Test Cases***
CheckBoxTest
    [Documentation]    This test case opens the DemoQA website and verifies the checkbox.
    [Tags]    smoke
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Element     css=button[title="Expand all"]
    Click Element     xpath=//span[text()='Home']/../span[1]
    Element Should Be Visible    id=result
    Close Browser



***Keywords***
    
