*** Settings ***
Library  Selenium2Library

*** Variables ***
${GLOBAL1} =  GLOBAL1

*** Test Cases ***
Declare and set variables
    ${some_test_data} =  Set Variable  This is only available within this test
    set suite variable  ${some_suite_data}  This is available within all tests in this suite
    set global variable  ${SOME_GLOBAL_DATA}  This is available everywhere

Logging stuff
    [Tags]  BuiltIn
    Comment  ${unset_variable}
    Comment  Just a random comment
    Comment  ${GLOBAL1}
    Log  I have something to do
    Log Many  Something to say1  Something to say2  Something to say3
    Log To Console  This is can only be seen in the console, not the log!
    log variables
    Log  ${some_suite_data}
    Log  ${GLOBAL1}
    Log  ${SOME_GLOBAL_DATA}
    ${status} =  Set Variable  True
    Run Keyword if  ${status}  Capture Page Screenshot

Ignore Failures
    Open Browser  http://www.amazon.com  Safari


    run keyword and continue on failure  wait until page contains  This text doesnt exist
    run keyword and continue on failure  wait until page contains  This another text doesnt exist

    Log  ${some_suite_data}
    Log  ${Global1}
    Log  ${SOME_GLOBAL_DATA}

    close browser

Repeat things
    Repeat keyword  3 Times  Say Something


*** Keywords ***
Say Something
    Log  "I'm Tired"