*** Settings ***
Library         Selenium2Library
Library         OperatingSystem

*** Variables ***
${BROWSER}  Chrome
${locator-en}  /eng

*** Test Cases ***
FireRobot Test Case
    [Teardown]  Close All Browsers
    # Set Environment Variable    webdriver.chrome.driver    ${EXECDIR}/chromedriver
    Open Browser   http://www.wsb.pl/   ${BROWSER}
    Location Should be  http://www.wsb.pl/
    Click Link  ${locator-en}
    Location Should be  http://www.wsb.pl/english/
