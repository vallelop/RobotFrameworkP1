from robotremoteserver import RobotRemoteServer
from remoteLibrary import SistemaBancario

server = RobotRemoteServer(SistemaBancario(),serve = False)
server.serve()
