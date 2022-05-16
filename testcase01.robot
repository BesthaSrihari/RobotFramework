*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}   https://www.facebook.com/

*** Test Cases ***
LoginTest
    Open Browser  ${url}   ${browser} 
    loginToApplication
    close browser  

*** Keywords ***
loginToApplication
    input text  id:email    sreehari7893640985@gmail.com
    input text  id:pass     Ammulu@1
    click element   xpath://button[@name='login']
   