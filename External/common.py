from robot.api import logger
from robot.api.deco import keyword
from robot.libraries.BuiltIn import *

def test_python():
    logger.console("que passa Nen!")
    logger.info("Hola HOOOOLLLLLAAAAAA", also_console=True)
    return "Test"


@keyword(name="funcion chachi") #sirve apra decorar, llamar por otro nombre la funcion python
def py_deco():
    logger.info("Habia una vew una mariquita verde con topos amarillos...", also_console=True)
    return "y vivieron felices y comieron perdices"


def abrir_navegador(url):
    logger.info(url, also_console=True)
    selenium_lib = BuiltIn().get_library_instance("SeleniumLibrary")
    browser = selenium_lib._current_browser()
    list_prod = browser.find_element_by_class_name('productos')
    for prod in list_prod:
        logger.console(prod)

