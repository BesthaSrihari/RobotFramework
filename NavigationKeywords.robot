*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Navigation Tests    
    open browser    https://www.google.com/    chrome
    ${location}=    get location
    log to console  ${location}

    sleep  3

    go to   https://www.bing.com/  
    ${location}=    get location
    log to console  ${location}

    sleep  3
    go back
    ${location}=    get location
    log to console  ${location}

    close all browsers