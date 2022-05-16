*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
ScrollingTest
    open browser    https://opensource-demo.orangehrmlive.com/    chrome
    maximize browser window
    #execute javascript    window.scrollTo(0,1500)    #0 represents Harizontal and 1500 represents vertical scrolling 
    #scroll element into view    xpath://*[@id="footer"]/div[1]     #scroll upto paricular element is displayed
    execute javascript  window.scrollTo(0,document.body.scrollHeight)    #end of page
    sleep    5
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)    #Top of page
    sleep    5
    close browser   

