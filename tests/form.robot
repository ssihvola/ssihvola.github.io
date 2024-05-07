*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Contact form works
    Open Browser   url=https://samposihvola.com/contact.html   browser=chrome
		Input Text   name   testi
		Input Text   email   testi@testi.com
		Input Text   message   "hello"
		Click Element   xpath=//button[text()='Send']
    Wait Until Page Contains   Formspree   timeout=10s
    Page Should Contain   Formspree
    Close Browser