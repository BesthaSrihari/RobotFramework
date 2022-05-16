*** Settings ***


*** Test Cases ***
TC1 User RegistrationTest
    [Tags]  sanity
    log to console  This is user registration test
    log to console  User registration test is over

TC2 LoginTest
    [Tags]  regression
    log to console  This is login Test
    log to console  Login test is over

TC3 Change user Settings
    [Tags]  sanity
    log to console  This is changing user settings  test
    log to console  Change user settings test is over

TC4 Logout Test
    [Tags]  sanity
    log to console  This is logout test
    log to console  Logout test is over

           #Execution
#robot --include=sanity Taging.robot
#robot --include=regression Taging.robot
#robot -i sanity -i regression Taging.robot
#robot -i sanity -e regression Taging.robot
#robot -e sanity Taging.robot
#robot -e sanity Taging.robot
#robot -i sanity Taging.robot

