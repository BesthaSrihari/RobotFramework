*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
RegTest
   open browser    http://demowebshop.tricentis.com/register    chrome
   maximize browser window 

   set selenium implicit wait   10 seconds

   
   ${implicttime}=    get selenium implicit wait
   log to console   ${implicttime}   
   select radio button    Gender   M
   input text    name:FirstName1      Srihari
   input text    name:LastName       Bestha
   input text    name:Email         sreehari7893640985@gmail.com
   input text    name:Password      Srihari@123
   input text    name:ConfirmPassword      Srihari@123

