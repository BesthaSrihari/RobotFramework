*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Multiple browsers Test
    open browser    https://www.google.com/     chrome
    maximize browser window

    sleep   3

    open browser    https://mail.google.com/mail/u/0/#inbox     chrome
    maximize browser window

    Switch browser   1
    ${title1}=   get title
    log to console  ${title1}

    switch browser   2
    ${title2}=  get title
    log to console  ${title2}

    sleep   3
    close all browsers