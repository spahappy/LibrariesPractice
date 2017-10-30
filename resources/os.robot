*** Settings ***
Library  OperatingSystem

*** Variables ***

${directory_1} =  first directory
${directory_2} =  second directory
${file_1} =  first file.txt
${file_2} =  second file.txt
${file_3} =  third file.txt

*** Keywords ***
#Create the Base Directory
#    Create Directory  ${output_directory}
#    should exist  ${output_directory}

Create Directory 1
    ${directory_path} =  join path  ${output_directory}  ${directory_1}
    create directory  ${directory_path}
    should exist  ${directory_path}

Remove the Base Directory
    remove directory  ${output_directory}
    should not exist  ${output_directory}