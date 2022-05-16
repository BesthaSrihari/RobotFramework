*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
RegTest
   open browser    http://demowebshop.tricentis.com/register    chrome
   maximize browser window


   ${time}=   get selenium timeout
   log to console   ${time}


   set selenium timeout  10 seconds
   wait until page contains   GiftCards  #5sec is default
  
   select radio button    Gender   M
   input text    name:FirstName      Srihari
   input text    name:LastName       Bestha
   input text    name:Email         sreehari7893640985@gmail.com
   input text    name:Password      Srihari@123
   input text    name:ConfirmPassword      Srihari@123

