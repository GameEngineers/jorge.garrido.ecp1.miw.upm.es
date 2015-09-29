@echo off
set workspace=H:\Desarrollos\eclipse\jorge.garrido.ecp1.miw.upm.es
set PATH=%PATH%C:\Program Files\Java\jdk1.8.0_05\bin;H:\apache-maven-3.3.3\bin
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_05
set M2_HOME=H:\apache-maven-3.3.3

echo Workspace --- %workspace%
echo .
cd %workspace%
echo .
echo ==== clean y test en perfil develop ====
echo .
call mvn clean test 
if errorLevel 1 goto errorDevelop
pause
echo ==== package en el perfil preproduccion ====
echo .
call mvn package -Denvironment.type=preproduction
pause
exit
:errorDevelop
echo .
echo .
echo .
echo ########  ERRORES...
pause
