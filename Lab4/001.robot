*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser To Registration Page
Suite Teardown    Close Browser

*** Variables ***
${URL}      http://localhost:7272/Lab4/Registration.html
${BROWSER}  chrome

*** Test Cases ***
Open Workshop Registration Page
    Go To    ${URL}
    Title Should Be    Registration
    Page Should Contain    Workshop Registration
    Capture Page Screenshot
	
Register Success
    Input Text    id=firstname     Somyod
    Input Text    id=lastname      Sodsai
    Input Text    id=organization  CS KKU
    Input Text    id=email         somyod@kkumail.com
    Input Text    id=phone         091-001-1234
    Click Button  id=registerButton
    Title Should Be    Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.
    Capture Page Screenshot  

Open Workshop Registration Page1
    Go To    ${URL}
    Title Should Be    Registration
    Page Should Contain    Workshop Registration
    Capture Page Screenshot
	
Register Success No Organization Info
    Go To    ${URL}
    Input Text    id=firstname     Somyod
    Input Text    id=lastname      Sodsai
    Input Text    id=email         somyod@kkumail.com
    Input Text    id=phone         091-001-1234
    Click Button  id=registerButton
    Title Should Be    Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.
    Capture Page Screenshot 

*** Keywords ***
Open Browser To Registration Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
