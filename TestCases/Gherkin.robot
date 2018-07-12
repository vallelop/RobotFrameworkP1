*** Settings ***


*** Variables ***


*** Keywords ***
usuario con credenciales correctas
usuario entra username
usuario entra password
le aparece el profile de usuario


*** Test Cases ***
usuario accede sistema con credenciales
    [Tags]  gherkin
    Given usuario con credenciales correctas
    When usuario entra username
    And usuario entra password
    Then le aparece el profile de usuario

