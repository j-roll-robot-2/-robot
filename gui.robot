*** Settings ***
Library         Selenium2Library




*** Variables ***
${locator-en}  /eng




*** Test Cases ***
ENG Button Test - Chrome
    [Setup]  Open Browser   http://www.wsb.pl/   Chrome
    [Teardown]  Close All Browsers

    Check If Redirection Works After Click  http://www.wsb.pl/  http://www.wsb.pl/english/  ${locator-en}


ENG Button Test - Firefox
    [Setup]  Open Browser   http://www.wsb.pl/   Firefox
    [Teardown]  Close All Browsers

    Check If Redirection Works After Click  http://www.wsb.pl/   http://www.wsb.pl/english/  ${locator-en}




*** Keywords ***
Check If Redirection Works After Click
    [Arguments]  ${first_link}  ${second_link}  ${button_locator}
    Location Should be  http://www.wsb.pl/
    ${txt}  Get Text    xpath=//*[@id="header"]/div/div[1]/label
    Log To Console    ${txt}
    Click Link  ${button_locator}
    Wait Until Element Is Not Visible    xpath=//*[@id="header"]/div/div[1]/label
    Location Should be  http://www.wsb.pl/english/
