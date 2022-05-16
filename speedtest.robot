*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
RegTest
   open browser    http://demowebshop.tricentis.com/register    chrome
   maximize browser window

   #sleep  3
   set selenium speed   3 seconds   #it will take delay to all elements
   select radio button    Gender   M
 
   input text    name:FirstName      Srihari
   input text    name:LastName       Bestha
   input text    name:Email         sreehari7893640985@gmail.com
   input text    name:Password      Srihari@123
   input text    name:ConfirmPassword      Srihari@123
   ${speed}=  get selenium speed
   log to console  ${speed}
