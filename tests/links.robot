*** Settings ***
Library   SeleniumLibrary
Suite Setup    Set Log Level    INFO

*** Test Cases ***
Check sitelinks
    Open Browser   url=https://samposihvola.com   browser=chrome
    Click Link   works
		Page Should Contain   Music
		Wait Until Page Contains   Music
		Click Link   contact
    Page Should Contain   Contact
		Wait Until Page Contains   Contact
		Click Link   Sampo Sihvola
		Page Should Contain   My name is Sampo Sihvola
		Wait Until Page Contains   My name is Sampo Sihvola
		Click Link   works
		Click Link   home
		Page Should Contain   My name is Sampo Sihvola
		Wait Until Page Contains   My name is Sampo Sihvola
		Close Browser

Check music links
		Check Video   Pummit Tampereella (2023)
		Check Video   zalando k-market zalando (2021)
		Check Video   Sampo Sihvola & Antti Alanko - Kova kiire (2019)
		Check Video   Kohteliaat pummit - Kortti vie, kortti tuo (2018)
		Check Video   Kohteliaat pummit - Ei oo fyrkkaa (2017)
		Check Video   Tenebris Locus - Meticulosa Allucinationes (2014)
		Check Video   In The Time Of Water - Ennala Mixtape (2011)
		Check Video   In The Time Of Water - untitled (2009)

Check video links
		Check Video   Circle of Light (2024)
		Check Video   Hannunniitty (2021)
		Check Video   Alallaan palkittu (2020)
		Check Video   guitar performance (2020)
		Check Video   IKIKIKYNYKYTYKY-klubi live (2019)
		Check Video   Kansanrunoutta pizzauunin luota (2015)
		Check Video   Hymyilevä Apollo @ Sture 21 (2014)

Check poetry links
		Check Poem   Irtikytkentöjä (2024)
		Check Poem   my territory (2023)
		Check Poem   toisinaan meillä (2022)
		Check Poem   Stagnaatio (2021)
		Check Poem   Hankalat tuhatvuotiset reitit (2020)
		Check Poem   no healthy upstream (2020)
		Check Poem   Kaupunkimetsät (2019)
		Check Poem   Sampo Sihvola on kovassa nosteessa (2019)
		Check Poem   Pihalla on 3d-tulostin (2019)
		Check Poem   Syystihku (2013)

*** Keywords ***
Check Video
    [Arguments]   ${video_title}
		Open Browser   url=https://samposihvola.com/works.html   browser=chrome
		Click Link   ${video_title}
		${current_window}   Switch Window   NEW
		Wait Until Page Contains Element   
		...    xpath=//div[@id='player-container']   timeout=10s
		Page Should Contain Element   xpath=//div[@id='player-container']
		Close Browser

Check Poem
    [Arguments]   ${poem_title}
    Open Browser   url=https://samposihvola.com/works.html   browser=chrome
    Click Link   ${poem_title}
    ${current_window}   Switch Window   NEW
    ${title_array}=   Evaluate   '${poem_title}'.split(' ')
    ${first_word}=   Set Variable   ${title_array[0]}
    Wait Until Page Contains Element   
		...    xpath=//title[contains(text(), '${first_word}')]   timeout=10s
    Page Should Contain Element   
		...    xpath=//title[contains(text(), '${first_word}')]
    Close Browser
