*** Settings ***
Resource    ../resources/os.robot

*** Variables ***
${output_directory} =  Outputs

*** Test Cases ***
Output Directory should be able to be created
    [Tags]  OperatingSystem
    os.Create Directory 1

Output Directory should be able to be removed
    os.Remove the Base Directory