*** Settings ***
Library     SeleniumLibrary
Resource    LoginKeywords.robot

*** Variables ***
${browser}  headLesschrome   # we can't see the actual execution flow
${SiteUrl}  https://opensource-demo.orangehrmlive.com/
${Username}  Admin
${Password}  admin123

*** Test Cases ***
Login Test
    Open my Browser     ${SiteUrl}  ${browser}
    Enter Username  ${Username}
    Enter Password  ${Password}
    Click button 
    Verify Successfully Login 
    close all browsers


