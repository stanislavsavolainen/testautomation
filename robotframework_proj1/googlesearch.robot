*** Settings ***
# Library 			Selenium2Library
Library 			SeleniumLibrary
Test Setup			Go to G
# Suite Teardown		Close All Browsers

*** Variables ***
${URL}		https://google.com

*** Test Cases ***
Simple example Search
	Simple Search		robotframework


*** Keywords ***
Simple Search
	[Arguments]		${SearchWord}
	# Input Text    id:input    ${SearchWord}
	# Press Keys    id:input    ENTER
	Input Text    name:q    ${SearchWord}
	Press Keys    name:q    ENTER

Go to G
	Open Browser	${URL}		firefox
	# Maximize Browser Window
	Sleep    5s
	
	