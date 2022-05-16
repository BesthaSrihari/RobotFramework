*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TableValidations
    open browser    https://testautomationpractice.blogspot.com/    chrome
    ${rows}=    get element count   xpath://table[@name="BookTable"]/tbody/tr
    ${cols}=    get element count   xpath://table[@name="BookTable"]/tbody/tr[1]/th
    log to console      ${rows}
    log to console      ${cols}
    
    ${data}=    get text  xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[5]/td[1]
    log to console  ${data}

    table column should contain    xpath://table[@name='BookTable']    2   Author
    table row should contain     xpath://table[@name='BookTable']     3    Learn Java 
    table cell should contain   xpath://table[@name='BookTable']     5    2   Mukesh
    table header should contain   xpath://table[@name='BookTable']   BookName

    close browser 

    