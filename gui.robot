*** Settings ***
Library         Selenium2Library
Library         OperatingSystem

*** Variables ***
${BROWSER}  Chrome
${locator-en}  /eng

*** Test Cases ***
FireRobot Test Case
    [Teardown]  Close All Browsers
    Open Browser   http://www.wsb.pl/   ${BROWSER}
    Location Should be  http://www.wsb.pl/
    Click Link  ${locator-en}
    Location Should be  http://www.wsb.pl/english/
    Element text should be  css=.active>a EN
