*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
MyTestCase
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    open browser    https://www.youtube.com/watch?v=ulf_1Gmkfak&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG&index=7    chrome
    maximize browser window

    #close browser
    close all browsers
    

