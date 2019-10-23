*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${WEB}    http://www.google.com
${URL}    http://www.cs.kku.ac.th
${BROWSER}    Chrome

*** Test Cases ***

TestOpen
	Open Browser    ${WEB}    ${BROWSER}
    Input Text    q    ${URL}
    Submit Form
    Wait Until Page Contains    www.cs.kku.ac.th
    Close Browser