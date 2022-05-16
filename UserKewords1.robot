*** Settings ***
Library     SeleniumLibrary
     
*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/
${browser}  chrome

*** Test Cases ***
TC1
    Launchbrowser 
    input text   id:txtUsername   Admin
    input text   id:txtPassword   admin123

*** Keywords *** 
Launchbrowser 
    open browser    ${url}   ${browser}
    maximize browser window