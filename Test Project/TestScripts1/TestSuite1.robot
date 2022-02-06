*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://google.com
${Browser}    Chrome

*** Test Cases ***
TestCase1    #Logging test
    Log    Testing Test case..
    
TestCase2    #Title fecthing and validation test
    Create Webdriver    Chrome    executable_path=/Users/shubhamadlakha/Downloads/chromedriver
    Go To    ${URL} 
    Set Browser Implicit Wait    5
    Maximize Browser Window
    Title Should Be    Google       
            
TestCase3    #Finding Element and Inputing text test
    Input Text    name=q    Testing Assignment
    Click Button    name=btnK    
    Sleep    2 
    Close Browser
    Log    Test Completed