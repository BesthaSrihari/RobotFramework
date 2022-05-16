*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Handling the TabbedWindows
    open browser   http://demo.automationtesting.in/Windows.html    chrome
    click element   xpath://*[@id="Tabbed"]/a/button
    Switch Window    title:Selenium
    click element    xpath://span[contains(text(),'Downloads')]
    sleep   3

    close all browsers

    