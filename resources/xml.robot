*** Settings ***
Library  XML

*** Variables ***
${XML_MENU_PATH} =  Inputs/menu.xml
#${XML_MENU_PATH} =  Inputs/test.xml

*** Keywords ***
Should be one menu in the file
    ${menu_count} =  Get element count  ${XML_MENU_PATH}
    should be equal as numbers  ${menu_count}  1

Verify Menu Name
    ${root} =  parse xml  ${XML_MENU_PATH}
    should be equal as strings  ${root.tag}  breakfast_menu

Verify Food Count
    ${food_count} =  get element count  ${XML_MENU_PATH}  food
    should be equal as numbers  ${food_count}  6

Verify First Food Name
    ${first_food_name} =  get element  ${XML_MENU_PATH}  food[1]/name
    should be equal as strings  ${first_food_name.text}  Belgian Waffles