*** Settings ***
Library     SeleniumLibrary
Resource    login_resources.robot
Suite Setup   Open my Browser    #It will execute only once in the starting
Suite Teardown   Close Browsers    #It will execute once at the end of all operations
Test Template   Invalid login

*** Test Cases ***      username        password
Right user empty password   Admin  ${EMPTY}
Right user wrong password   Admin  abc
wrong user right password   aduy    admin123
wrong user empty password   aduy    ${EMPTY}
wrong user wrong password   aduy    aaaaa


*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    Input username  ${username}
    Input password  ${password}
    click login
    Error message should be visible

