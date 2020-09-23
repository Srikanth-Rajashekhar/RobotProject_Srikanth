*** Settings ***
Library    SeleniumLibrary    

Suite Setup    Log    I am inside test suite setup
Suite Teardown    Log    I am inside test suite tear down        
Test Setup    Log    I am inside test setup
Test Teardown    Log    I am inside test tear down    

*** Test Cases ***
FirstSeleniumTest
    [Tags]    smoke
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    LoginKW
    Set Browser Implicit Wait    5
    Click Element    id=welcome
    Click Element    link=Logout    
    Close Browser
    Log    Test completed              
    Log    This test was executed by %{username} on %{os}    

SecondTest
    Log    message    

*** Variables ***
${URL}          https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}    username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text    name=txtUsername    @{CREDENTIALS}[0]
    Input Password    name=txtPassword    &{LOGINDATA}[password]
    Click Button    id=btnLogin
    
    