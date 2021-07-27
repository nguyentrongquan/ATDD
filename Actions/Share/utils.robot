*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem


*** Keywords ***
Before Test
    init test env     stagingnew

After Test
    Close All Browsers
