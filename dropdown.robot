*** Settings ***
Library   SeleniumLibrary


*** Variables ***

${browser}    chrome
${url}      https://artoftesting.com/samplesiteforselenium


*** Test Cases ***
Handling DropDowns and Lists

    open browser    ${url}     ${browser}
    maximize browser window 
    select from list by label    testingDropdown    Manual Testing
    sleep  5
    select from list by index    testingDropdown    0
    sleep  5
    select from list by value    testingDropdown    Performance

    close browser
#select from list by values 
#list box
#select from list by label    selenium_commands  Switch Commands
#unselect from list by label   selenium_commands  Switch Commands
