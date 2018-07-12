*** Settings ***
Library  SSHLibrary


*** Variables ***
${HOST}         91.134.247.202
${username}     test
${pass}         test

*** Keywords ***
Open Connection and log in
    Open Connection     ${HOST}
    Login               ${username}     ${pass}

Close connection
    Close connection

*** Test Cases ***
Conectar
    log to console  Buenas!
    Open Connection and log in
    Close connection