*** Settings ***
Library     SeleniumLibrary
Resource      
*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/
${browser}  chrome

*** Test Cases ***
TC1
    Launchbrowser 
    # ${pageTitle}=    Launchbrowser   ${url}  ${browser} 
    # log to console  ${pageTitle}
    # log     ${pageTitle}
    input text   id:txtUsername   Admin
    input text   id:txtPassword   admin123

*** Keywords *** 
Launchbrowser       #UserDefind Keyword
    #[Arguments]     ${appurl}   ${appbrowser}  #These are the arguments
    open browser    ${url}   ${browser}
    maximize browser window
    # ${title}=   get title
    # [Return]    ${title}    #Arguments with return type

    close browser

