@echo off

setlocal 

echo Configurando variaveis
set DB_USER=eduardo
set DB_NAME=bicimoto
set PGPASSWORD=123456
set BACKUP_DIR=C:\Users\Eduar\Documents\backup

set TIMESTAMP=%DATE:~10,4%-%DATE:~7,2%-%DATE:~4,2%_%TIME:~0,2%-%TIME:~3,2%-%TIME:~6,2%
set BACKUP_FILE=%BACKUP_DIR%\%DB_NAME%\%TIMESTAMP%.tar

echo Backup com pg_dump
pg_dump.exe -U %DB_USER% -w -F t %DB_NAME% > "%BACKUP_FILE%"

echo Verificando o backup
if exist "%BACKUP_FILE%" (
    echo Backup %DB_NAME% realizado com sucesso!
) else (
    echo Erro ao realizar backup!
)

endlocal