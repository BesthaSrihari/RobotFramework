*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing Frames
    open browser    https://www.selenium.dev/selenium/docs/api/java/index.html?org/openqa/selenium/package-summary.html   chrome
    maximize browser window

    select frame   packageListFrame     #you can specify id or name or xpath
    click link    org.openqa.selenium
    unselect frame   #unselecting the frame

    sleep   3

    select frame    packageFrame
    click link      WebDriver
    unselect frame 

    sleep   3

    select frame     classFrame
    click link    Help
    unselect frame


    close browser   
