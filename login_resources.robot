*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://opensource-demo.orangehrmlive.com/
${BROWSER}      chrome



*** Keywords ***
Open my Browser   
    open browser    ${LOGIN URL}   ${BROWSER}
    maximize browser window

Close Browsers
    close all Browsers

Open Login Page
    go to   ${LOGIN URL}

Input username
    [Arguments]     ${username}
    input text   id:txtUsername    ${username}

Input password
    [Arguments]     ${password}
    input text   id:txtPassword     ${password}

click Login 
    click element       id:btnLogin

click Logout 
    click element       id:welcome
    click link       xpath://a[contains(text(),'Logout')]

Error message should be visible
    page should contain     Username cannot be empty

Dashboard page should be visible
    page should contain     Dashboard    

