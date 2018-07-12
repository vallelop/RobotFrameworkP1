*** Settings ***
Library   SeleniumLibrary
Resource  ../Resources/common.robot
Library   ../external/common.py
Library   Remote  http://127.0.0.1:8270

*** Variables ***
${navegador}    firefox
${URL}          http://www.google.es
${URL2}         https://www.google.es/search?ei=OkZDW8_eAsbcUcnqvtAE&q=robotframework&oq=robotframework&gs_l=psy-ab.3..0l4j0i10i30k1l2j0i30k1l2j0i10i30k1l2.21830.24436.0.24752.14.14.0.0.0.0.216.1607.2j10j1.13.0....0...1c.1.64.psy-ab..1.13.1602...0i131k1j0i3k1j0i10k1.0.jEpZ_FlLCqE
${URL3}         http://www.amazon.com
${locator}      lst-ib
${text}         gtd
${Ok_button}    btnK
${xpath}        xpath://a[contains(text(),'Robot')]

*** Keywords ***
paso de ejecucion con parametro
    [Arguments]  ${param}
    log to console  ${param}

llamada a python
    log to console  llama al python
    ${test_py}  common.test_python
    log to console  ${test_py}

keywordA
    log to console  Menor

keywordB
    log to console  Mayor

*** Test Cases ***
Abrir y cerrar navegador
    [Tags]  browser
    Open Browser    ${URL}      ${navegador}
    Input Text      ${locator}  ${text}
    Click Button    ${Ok_button}
    Close Browser

Abrir enlace que contiene Robot en su descripcion
    [Tags]  links  wip
    Open Browser    ${URL2}      ${navegador}
    Click Link      ${xpath}
    ${valor retornado}  Accion que retorna un valor  Vallelop
    log to console  hola hola! ${valor retornado}!
    Close Browser

Encontrar Amazon y verificar el título
    [Tags]  browser  amazon
    Open Browser    ${URL3}      ${navegador}
    ${titulo}       Get title
    #log to console  El titulo es: ${titulo}
    SHOULD Contain  ${titulo}    Amazon
    Sleep           2
    mouse over      id:nav-link-accountList
    Click Link      xpath://a[@data-nav-role = 'signin']
    [Teardown]  Close Browser

Sentencia condicional
    [Tags]      cond
    ${edad}  Convert to integer  17
    #log to console  ${edad}
    run keyword if  ${edad} == 17  keywordA
    ...  ELSE  keywordB

Test Case 3
    log to console
    [Template]  paso de ejecucion con parametro
    Juan
    Alberto
    Maria

Test Case 4
    [Tags]
    #llamada a python
    ${ret}  common.funcion chachi
    log to console  ${ret}

Test Case 5
    [Tags]
    #llamada a python
    Open Browser  https://www.mercadona.es/  ${navegador}
    Sleep  2
    ${ret}  common.abrir_navegador  mercapeich
    [Teardown]  Close Browser

Test Case 6
    [Tags]
    abrir_cuenta
    cerrar cuenta
    ${saldo}  obtener_saldo
    log to console  Mi saldo es: ${saldo}

Test Case 7
    [Tags]  este
    log to console  trabajar con Telnet

    log to console  Mi saldo es: ${saldo}