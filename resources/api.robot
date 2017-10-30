*** Settings ***
Library  RequestsLibrary
Library  Selenium2Library


*** Variables ***


*** Keywords ***
Check Github User Name
    create session  my_github_session  https://api.github.com

    ${response} =  get request  my_github_session  users/robotframeworktutorial
    log  ${response.json()}
    should be equal as strings  ${response.status_code}  200

    ${response_json} =  set variable  ${response.json()}
    should be equal as strings  ${response_json["login"]}  robotframeworktutorial
