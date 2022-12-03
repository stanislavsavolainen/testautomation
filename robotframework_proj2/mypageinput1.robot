*** Settings ***
# Library 			Selenium2Library
Library 			SeleniumLibrary
# Suite Teardown		Close All Browsers

*** Variables ***
${URL}		file:///home/stanislavsavolainen/programming2022/robotproj1/html1/page1.html

*** Test Cases ***
Add element
	Open Browser	${URL}		firefox
	# Maximize Browser Window
	Sleep    5s
	Input Text	id=inputname	Pekka
	Select From List by Value	id=gender	man
	Click Button	id=addData
	Sleep    5s
	Input Text	id=inputname	Kalle
	Select From List by Value	id=gender	man
	Click Button	id=addData
	Sleep    5s
	Input Text	id=inputname	Tarja
	Select From List by Value	id=gender	woman
	Click Button	id=addData
	Sleep    5s
	Input Text	id=inputname	Jorma
	Select From List by Value	id=gender	man
	Click Button	id=addData
	Sleep    20s	
	Close Browser
	
	
	
