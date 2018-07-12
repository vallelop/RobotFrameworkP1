*** Settings ***
Documentation  This test suite is number 2
...  (pruebas de escenario de suite2)
...  Historia: Como usuario de bicing,
...  quiero saber cuantas bicis hay en cada estación,
...  para maximizar mis chances y optimizar el tiempo.
Resource  ../Resources/common.robot

Test Setup  Inicio sistema  General
Test Teardown  Finalizacion sistema  General

*** Variables ***
#documentación de las variables
${nombre site}  kiki

*** Keywords ***

*** Test Cases ***
Test Case 1
    [Setup]  Inicio sistema
    #vamos a loguear algo
    log  Se ha iniciado Test Case 1  console=true
    log to console  Esto sale por consola
    [Teardown]  Finalizacion sistema

Test Case 2
    #otro test case
    log  Se ha iniciado el Test Case 2  console=true
