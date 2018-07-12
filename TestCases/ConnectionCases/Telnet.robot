*** Settings ***
Library         Telnet
Library         Connections
Suite Setup     Conectarse via Telnet
Suite Teardown  Desconectarse del Telnet

*** Variables ***
${ip}  64.13.139.230
#${port}  23
${port}  80


*** Keywords ***
Conectarse via Telnet
    log to console  Empieza la conexion
    ${print}  Open Connection  host=${ip}  port=${port}
    log to console  ${print}
    log to console  Logado!

Desconectarse del Telnet
    log to console  Ciao Chochin
    Close Connection


*** Test Cases ***
Obtener info del sistema conectado
    log to console  vamos a logarnos
    Write  joke
    ${out}=  Read until prompt
    log to console  log: ${out}
    log to console  kk