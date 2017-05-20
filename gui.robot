*** Settings ***
Library         Selenium2Library


*** Variables ***
${locator-en}  /eng

*** Test Cases ***
ENG Button Test - Chrome
    [Setup]  Open Browser   http://www.wsb.pl/   Chrome
    [Teardown]  Close All Browsers

    Check If Redirection Works After Click  http://www.wsb.pl/  ${locator-en}    http://www.wsb.pl/english/



ENG Button Test - Firefox
    [Setup]  Open Browser   http://www.wsb.pl/   Firefox
    [Teardown]  Close All Browsers

    Check If Redirection Works After Click  http://www.wsb.pl/  ${locator-en}    http://www.wsb.pl/english/


*** Keywords ***
Check If Redirection Works After Click
    [Arguments]  ${first_link}  ${second_link}  ${button_locator}
    Location Should be  http://www.wsb.pl/
    Click Link  ${button_locator}
    Location Should be  http://www.wsb.pl/english/
