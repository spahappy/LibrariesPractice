*** Settings ***
Resource  ../resources/xml.robot


*** Variables ***



*** Test Cases ***
Verify Menu Count
    [Tags]  XML
    xml.should be one menu in the file

Verify Menu Name
    [Tags]  XML
    xml.Verify Menu Name

The count of element "food" should be correct
    [Tags]  XML
    xml.Verify Food Count

The name of first "food" should be expected
    xml.Verify First Food Name

Feature Test 1
    Log  Do feature Test 1
