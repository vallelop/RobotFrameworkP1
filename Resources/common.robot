*** Keywords ***
Init suite
    [Arguments]  ${text1}=kiki
    log to console  What the fick with this ${text1}!

Fin suite
    [Arguments]  ${text1}=kiki
    log to console  Finished the fick test with this ${text1}

Inicio sistema
    [Arguments]  ${whatTheFuck}=Valle
    log  inicio sistema pruebas para ${whatTheFuck}  console=true

Finalizacion sistema
    [Arguments]  ${whatTheFuck}=Valle
    log  finalizacion sistema pruebas para ${whatTheFuck}  console=true

Accion que retorna un valor
    [Arguments]  ${parametro1}

    [Return]  Valor retornado es: ${parametro1}