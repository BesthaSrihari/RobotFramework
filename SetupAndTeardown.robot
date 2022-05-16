*** Settings ***
Library     SeleniumLibrary

Suite Setup     log to console     Opening Browser
Suite Teardown      log to console  Closing Browser

Test Setup  log to console  Login to application
Test Teardown   log to console  Logout from application

*** Test Cases ***
TC1 Prepaid Recharge
    log to console  This is Prepaid recharge testcase
TC2 Postpaid Recharge
    log to console  This is Postpaid recharge testcase
TC3 Search
    log to console  This is Search testcase
TC4 Advanced Search
    log to console  This is adv search test Cases
    

