*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Handling Alerts
    open browser   https://testautomationpractice.blogspot.com/    chrome
    click element  xpath://button[@onclick="myFunction()"]   #open alert
    sleep  3
    #handle alert   accept   #using Ok button
    #handle alert   dismiss   #using cancel button
    #handle alert   leave
    alert should be present   Press a button!
    #alert should not be present   Press a button!fgg
    close browser
     

     