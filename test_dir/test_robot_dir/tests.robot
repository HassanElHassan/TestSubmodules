*** Settings ***

Library    SubForTesting

Resource   ../../SubModuleForTesting/SubForTesting/resource_robot_dir/resources1.robot

Resource   SubForTesting/resource_robot_dir/resources2.robot

Library    ImportResource      resources=importresource-testdata



*** Test Cases ***
add two numbers using py fun
    ${result}    add    5   6
    log to console    ${result}

add two numbers using submodule
    keyword one to add in robot    5    6

add two numbers using package
    keyword two to add in robot    5    6

test package importresource
    Keyword From Package importresource-testdata
