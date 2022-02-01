*** Settings ***

Library    SubForTesting

#Resource   ./SubForTesting/resource_robot_dir/recources.robot

Resource   SubForTesting/resource_robot_dir/recources2.robot

Library    ImportResource      resources=importresource-testdata



*** Test Cases ***
add two numbers usin py fun
    ${result}    add    5   6
    log to console    ${result}

add two numbers using submodule
    keyword to add in robot    5    6

add two numbers using package
    keyword two to add in robot    5    6

test package importresource
    Keyword From Package importresource-testdata
