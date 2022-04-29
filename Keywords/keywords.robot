*** Settings ***

Library     SeleniumLibrary
Library     ../Resources/CustomLib.py


*** Variables ***


${LENGTH}               ${8}
${NUM_TO_BE_ADDED}      ${1}
${NUM_TO_BE_CMP_WITH}   ${2}
${ID_ORDER}             ${9989852}
${PASSWORD}             password123
${WEBSITE_LINK}         http://automationpractice.com/


*** Keywords ***


Navigate to Store
    Open Browser    ${WEBSITE_LINK}     browser=chrome

Verify Page Contains Store
    ${GET_TITLE}=                   Get Title
    Should Be Equal As Strings      ${GET_TITLE}    My Store

Signin With Dummy Email
    Click Element                       css=.login
    Wait Until Page Contains Element    email           20s
    ${RANDOM_EMAIL}                     Generate Random Emails  ${LENGTH}
    Input Text                          email           ${RANDOM_EMAIL}
    Input Text                          passwd          ${PASSWORD}
    Click Element                       SubmitLogin
    Wait Until Page Contains            Authentication failed   10s

Add Num
    ${VALUE}=                           Add Number     ${NUM_TO_BE_ADDED}
    SHOULD BE EQUAL                     ${VALUE}    ${NUM_TO_BE_CMP_WITH}

Bestseller
    Click Element                       css=.blockbestsellers

ContactUS
    Click Element                       id=contact-link
    ${CONTACT_TITLE}                    Get Title
    Should Be Equal As Strings          ${CONTACT_TITLE}    Contact us - My Store
    Select from List By Value           id=id_contact   1
    ${RANDOM_EMAIL}                     Generate Random Emails  ${LENGTH}
    Input Text                          email           ${RANDOM_EMAIL}
    Input Text                          id_order        ${ID_ORDER}
    ${RANDOM_TEXT}                      Read From File
    Input Text                          message         ${RANDOM_TEXT}
    Click Element                       id=submitMessage


