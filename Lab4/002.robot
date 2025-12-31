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

Empty First Name
    Go To    ${URL}
    Input Text    id=lastname      Sodyod
    Input Text    id=organization  CS KKU
    Input Text    id=email         somyod@kkumail.com
    Input Text    id=phone         091-001-1234
    Click Button  id=registerButton
    Title Should Be    Registration
    Page Should Contain    Please enter your first name!!
    Capture Page Screenshot

Open Workshop Registration Page1
    Go To    ${URL}
    Title Should Be    Registration
    Page Should Contain    Workshop Registration
    Capture Page Screenshot
	
Empty Last Name
    Go To    ${URL}
    Input Text    id=firstname     Somyod
    Input Text    id=organization  CS KKU
    Input Text    id=email         somyod@kkumail.com
    Input Text    id=phone         091-001-1234
    Click Button  id=registerButton
    Title Should Be    Registration
    Page Should Contain    Please enter your last name!!
    Capture Page Screenshot

Open Workshop Registration Page2
    Go To    ${URL}
    Title Should Be    Registration
    Page Should Contain    Workshop Registration
    Capture Page Screenshot
	
Empty First Name and Last Name
    Go To    ${URL}
    Input Text    id=organization  CS KKU
    Input Text    id=email         somyod@kkumail.com
    Input Text    id=phone         091-001-1234
    Click Button  id=registerButton
    Title Should Be    Registration
    Page Should Contain    Please enter your name!!
    Capture Page Screenshot

Empty Email
    Go To    ${URL}
    Input Text    id=firstname     Somyod
    Input Text    id=lastname      Sodsai
    Input Text    id=organization  CS KKU
    Input Text    id=phone         091-001-1234
    Click Button  id=registerButton
    Title Should Be    Registration
    Page Should Contain    Please enter your email!!
    Capture Page Screenshot

Open Workshop Registration Page3
    Go To    ${URL}
    Title Should Be    Registration
    Page Should Contain    Workshop Registration
    Capture Page Screenshot
	
Empty Phone Number
    Go To    ${URL}
    Input Text    id=firstname     Somyod
    Input Text    id=lastname      Sodsai
    Input Text    id=organization  CS KKU
    Input Text    id=email         somyod@kkumail.com
    Click Button  id=registerButton
    Title Should Be    Registration
    Page Should Contain    Please enter your phone number!!
    Capture Page Screenshot

Open Workshop Registration Page4
    Go To    ${URL}
    Title Should Be    Registration
    Page Should Contain    Workshop Registration
    Capture Page Screenshot
	
Invalid Phone Number
    Go To    ${URL}
    Input Text    id=firstname     Somyod
    Input Text    id=lastname      Sodsai
    Input Text    id=organization  CS KKU
    Input Text    id=email         somyod@kkumail.com
    Input Text    id=phone         1234
    Click Button  id=registerButton
    Title Should Be    Registration
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678
    Capture Page Screenshot

*** Keywords ***
Open Browser To Registration Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
