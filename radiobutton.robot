*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}  https://artoftesting.com/samplesiteforselenium


*** Test Cases ***
Testing Radio Buttons and Check boxes
        open browser   ${url}    ${browser}
        maximize browser window
        set selenium speed      2seconds

        select radio button   gender   male
        select checkbox     Automation
        
        unselect checkbox   Automation
           

        
