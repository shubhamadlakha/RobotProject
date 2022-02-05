*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
FirstTest
    Log    Hello World..
    
SecondTest
    Create Webdriver    Chrome    executable_path=/Users/shubhamadlakha/Downloads/chromedriver
    Go To    https://google.com 
    Set Browser Implicit Wait    5
    Input Text    name=q    Testing Assignment
    Press Keys    name=q    ENTER
    #Click Button    name=btnK    
    Sleep    2        
    Close Browser
    Log    Test Completed    
    
