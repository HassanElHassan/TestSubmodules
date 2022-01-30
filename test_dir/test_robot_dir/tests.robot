*** Settings ***
Resource   ./SubForTesting/resource_robot_dir/recources.robot
Library    ImportResource      resources=SubForTesting;importresource-testdata

*** Test Cases ***
add two numbers submodule
    keyword to add in robot    5    6

add two numbers
    Keyword From Package importresource-testdata
    keyword to add    5    6



