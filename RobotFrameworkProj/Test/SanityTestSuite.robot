*** Settings ***
Library    SeleniumLibrary   

Suite Setup   Log  This stmt should execute before all test cases are executed
Suite Teardown  Log  This stmt should execute after all the testcases are executed
Test Setup    Log  This stmt should execute before every test case
Test Teardown  Log    This stmt should execute after every test case 

Default Tags  Sanity
*** Test Cases ***

FirstTest
    [Tags]    Smoke
    Log    hello world1
SecondTest
    Log    hello world2
    Set Tags    regression
    Remove Tags  regression   
ThirdTest
    Log    hello world3
FourthTest
    Log    hello world4
    
    
# FirstSeleniumTest
    # Open Browser    https://google.com    chrome
    # Input Text    name=q   search
    # #Click Button    name=btnk   
    # Press Keys    name=q    ENTER
    # Sleep    2    
    # Close Browser 
    # Log    Test complete 
    
# FirstLoginTest
    # [Documentation]    This is a simple login test 
    # Open Browser    ${URL}         chrome
    # Set Browser Implicit Wait    5
    # Input Text    id=txtUsername    @{CREDENTIALS}[0]
    # Input Password    id=txtPassword    &{LOGINDATA}[password]  
    # Click Button    id=btnLogin   
    # Click Element    id=welcome
    # Click Link    Logout    
    # Keywordsforteststeps
    # Close Browser 
    # Log    LoginTest Complete
    # Log    This test was executed by %{username} on %{os}     
    
*** Variables ***
${URL}     https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}  Admin        admin123
&{LOGINDATA}    username=Admin    password=admin123
${LOGINDATA}    
*** Keywords ***
Keywordsforteststeps
    Open Browser    ${URL}         chrome
    Set Browser Implicit Wait    5
    Input Text    id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LOGINDATA}[password]  
    Click Button    id=btnLogin   
    Click Element    id=welcome
    Click Link    Logout 
    