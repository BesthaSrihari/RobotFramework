***Settings***
Library     SeleniumLibrary
Variables   Locators.py

***Keywords***
Open my browser
    [Arguments]  ${SiteUrl}  ${Browser}
    open browser    ${SiteUrl}  ${Browser}
    maximize browser window

Enter Username
    [Arguments]     ${Username}  
    input text      ${txt_loginUserName}    ${Username}

Enter Password
    [Arguments]     ${Password}
    input text      ${txt_loginPassword}    ${Password}

Click button 
   # [Arguments]     ${btn_Login}
    click element    ${btn_Login} 

Verify Successfully Login 
    page should contain     Dashboard

Close Browsers
    close all browsers




