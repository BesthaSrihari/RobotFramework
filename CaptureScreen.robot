*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
LoginTC
    open browser    https://opensource-demo.orangehrmlive.com/  chrome
    maximize browser Window
    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123
    #click element   id:btnLogin
    #capture element screenshot  xpath://*[@id="divLogo"]/img    C:/Users/SBESTHA/Desktop/RobotFramework/CaptureScreen/logo.png
    #capture page screenshot  C:/Users/SBESTHA/Desktop/RobotFramework/CaptureScreen/logo1.png

    capture element screenshot  xpath://*[@id="divLogo"]/img    Cap1.logo
    


