*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Check music links
    Open Browser   url=https://samposihvola.com   browser=chrome
		Click Link   Pummit Tampereella (2023)
		Click Link   Sampo Sihvola & Antti Alanko - Kova kiire (2019)
		Click Link   Kohteliaat pummit - Kortti vie, kortti tuo (2018)
		Click Link   Kohteliaat pummit - Ei oo fyrkkaa (2017)
		Click Link   Tenebris Locus - Meticulosa Allucinationes (2014)
		Click Link   In The Time Of Water - Ennala Mixtape (2011)
		Click Link   In The Time Of Water - untitled (2009)
		Close Browser

Check poetry links
	  Open Browser   url=https://samposihvola.com   browser=chrome
		Click Link   Irtikytkentöjä (2024)
		Click Link   don't come into my territory (2023)
		Click Link   toisinaan meillä (2022)
		Click Link   Stagnaatio (2021)
		Click Link   Hankalat tuhatvuotiset reitit (2020)
		Click Link   no healthy upstream (2020)
		Click Link   Kaupunkimetsät (2019)
		Click Link   Sampo Sihvola on kovassa nosteessa (2019)
		Click Link   Pihalla on 3d-tulostin (2019)
		Click Link   Syystihku (2013)
		Close Browser

Check video links
    Open Browser   url=https://samposihvola.com   browser=chrome
		Click Link   Circle of Light (2024)
		Click Link   Hannunniitty (2021)
		Click Link   Alallaan palkittu (2020)
		Click Link   guitar performance (2020)
		Click Link   IKIKIKYNYKYTYKY-klubi live (2019)
		Click Link   Kansanrunoutta pizzauunin luota (2015)
		Click Link   Hymyilevä Apollo @ Sture 21 (2014)
		Close Browser
