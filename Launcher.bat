@echo off
cls

:menu
cls
color 7
echo.
echo " __   ___   _   _    _   _ ____  _   _ _____ _   _ ";
echo " \ \ / / | | | / \  | \ | / ___|| | | | ____| \ | |";
echo "  \ V /| | | |/ _ \ |  \| \___ \| |_| |  _| |  \| |";
echo "   | | | |_| / ___ \| |\  |___) |  _  | |___| |\  |";
echo "   |_|  \___/_/   \_\_| \_|____/|_| |_|_____|_| \_|";
echo "                                                   ";            
echo "  _                __    __    __   ";
echo " | |    ___ _   _ / /_  / /_  / /_  ";
echo " | |   / __| | | | '_ \| '_ \| '_ \ ";
echo " | |__| (__| |_| | (_) | (_) | (_) |";
echo " |_____\___|\__, |\___/ \___/ \___/ ";
echo "            |___/                   ";
echo ѡ������(Please choose a language):
echo 1 - English
echo 2 - ����
echo 3 - �˳�(Exit)
echo.
choice /C:123 /M "ѡ��(Enter your choice): "

if errorlevel 3 goto exit
if errorlevel 2 goto chinese
if errorlevel 1 goto english

:english
cls
echo " __   ___   _   _    _   _ ____  _   _ _____ _   _ ";
echo " \ \ / / | | | / \  | \ | / ___|| | | | ____| \ | |";
echo "  \ V /| | | |/ _ \ |  \| \___ \| |_| |  _| |  \| |";
echo "   | | | |_| / ___ \| |\  |___) |  _  | |___| |\  |";
echo "   |_|  \___/_/   \_\_| \_|____/|_| |_|_____|_| \_|";
echo "                                                   ";            
echo "  _                __    __    __   ";
echo " | |    ___ _   _ / /_  / /_  / /_  ";
echo " | |   / __| | | | '_ \| '_ \| '_ \ ";
echo " | |__| (__| |_| | (_) | (_) | (_) |";
echo " |_____\___|\__, |\___/ \___/ \___/ ";
echo "            |___/                   ";
echo You have chosen English.
echo.
    if not exist .\app\player.json (
        goto :gamenotfind
    )
)
if exist .\app\player.json (
    set /p game=<.\app\player.json
    goto :s
)
:gamenotfind
echo.&set /p select2=Enter the path to Genshin Impact's main program, but please note that folders with spaces should be in double quotation marks, for example��d:\program files\"genshin impact game"\genshinimpact.exe��.
mkdir app
cd app
echo %select2% > .\player.json
cd ..
:s
echo Hello, welcome to the program!
echo current date��%date%
echo current time��%time%
echo This one-click launch tool is made by Lcy666
echo Please press any key to start��
echo ------------------------------
pause > nul
cls
echo " __   ___   _   _    _   _ ____  _   _ _____ _   _ ";
echo " \ \ / / | | | / \  | \ | / ___|| | | | ____| \ | |";
echo "  \ V /| | | |/ _ \ |  \| \___ \| |_| |  _| |  \| |";
echo "   | | | |_| / ___ \| |\  |___) |  _  | |___| |\  |";
echo "   |_|  \___/_/   \_\_| \_|____/|_| |_|_____|_| \_|";
echo "                                                   ";            
echo "  _                __    __    __   ";
echo " | |    ___ _   _ / /_  / /_  / /_  ";
echo " | |   / __| | | | '_ \| '_ \| '_ \ ";
echo " | |__| (__| |_| | (_) | (_) | (_) |";
echo " |_____\___|\__, |\___/ \___/ \___/ ";
echo "            |___/                   ";
echo Checking for port occupancy and trying to resolve it...
for /f "tokens=2,4,5" %%a in ('netstat -ano^|find /i ":27017 "') do (
    if not "%%c"=="" (
        set pid=%%c
    ) else (
        set pid=%%b
    )
)
for /f "tokens=1" %%a in ('tasklist /fi "pid eq %pid%"') do set prog=%%a
taskkill /f /fi "pid eq %pid%"
for /f "tokens=2,4,5" %%a in ('netstat -ano^|find /i ":21000 "') do (
    if not "%%c"=="" (
        set pid=%%c
    ) else (
        set pid=%%b
    )
)
for /f "tokens=1" %%a in ('tasklist /fi "pid eq %pid%"') do set prog=%%a
taskkill /f /fi "pid eq %pid%"
for /f "tokens=2,4,5" %%a in ('netstat -ano^|find /i ":443 "') do (
    if not "%%c"=="" (
        set pid=%%c
    ) else (
        set pid=%%b
    )
)
for /f "tokens=1" %%a in ('tasklist /fi "pid eq %pid%"') do set prog=%%a
taskkill /f /fi "pid eq %pid%"
echo Attempt to resolve complete.
echo ------------------------------
cd Database
echo Database starting...
start /min mongod.exe --dbpath data --port 27017
echo An attempt was made to start the database.
cd ..
cd Tool
echo ------------------------------
echo Launching directives and proxy tools...
start Directive and Proxy Tools.exe
echo An attempt was made to launch the directive and proxy tools.
cd ..
echo ------------------------------
cd Grasscutter
echo The server is being started...
timeout 3 >nul
start /high ..\Java\bin\java.exe -jar Grasscutter.jar
echo An attempt was made to start the server��
echo ------------------------------
cd ..
start /high /wait %game%
color B
echo An attempt was made to launch the game��
echo ------------------------------
pause
goto menu

:chinese
cls
echo " __   ___   _   _    _   _ ____  _   _ _____ _   _ ";
echo " \ \ / / | | | / \  | \ | / ___|| | | | ____| \ | |";
echo "  \ V /| | | |/ _ \ |  \| \___ \| |_| |  _| |  \| |";
echo "   | | | |_| / ___ \| |\  |___) |  _  | |___| |\  |";
echo "   |_|  \___/_/   \_\_| \_|____/|_| |_|_____|_| \_|";
echo "                                                   ";            
echo "  _                __    __    __   ";
echo " | |    ___ _   _ / /_  / /_  / /_  ";
echo " | |   / __| | | | '_ \| '_ \| '_ \ ";
echo " | |__| (__| |_| | (_) | (_) | (_) |";
echo " |_____\___|\__, |\___/ \___/ \___/ ";
echo "            |___/                   ";
echo ��ѡ�����ġ�
echo.
echo ��ã���ӭʹ�ñ�����
echo ���ڼ����Ϸ������...  
if not exist .\app\player.json (
        goto :gamenotfind1
 )
if exist .\app\player.json (
    set /p game=<.\app\player.json
    goto :s1
)
:gamenotfind1
echo.&set /p select2=����ԭ����������·�������硰D:\program files\"genshin impact game"\genshinimpact.exe����
mkdir app
cd app
echo %select2% > .\player.json
cd ..
:s1
echo ��ǰ���ڣ�%date%
echo ��ǰʱ�䣺%time%
echo ��һ������������lcy666����
echo �밴�����������
echo ------------------------------
pause > nul
cls
echo " __   ___   _   _    _   _ ____  _   _ _____ _   _ ";
echo " \ \ / / | | | / \  | \ | / ___|| | | | ____| \ | |";
echo "  \ V /| | | |/ _ \ |  \| \___ \| |_| |  _| |  \| |";
echo "   | | | |_| / ___ \| |\  |___) |  _  | |___| |\  |";
echo "   |_|  \___/_/   \_\_| \_|____/|_| |_|_____|_| \_|";
echo "                                                   ";            
echo "  _                __    __    __   ";
echo " | |    ___ _   _ / /_  / /_  / /_  ";
echo " | |   / __| | | | '_ \| '_ \| '_ \ ";
echo " | |__| (__| |_| | (_) | (_) | (_) |";
echo " |_____\___|\__, |\___/ \___/ \___/ ";
echo "            |___/                   ";
echo ���ڼ��˿�ռ�ò����Խ��...
for /f "tokens=2,4,5" %%a in ('netstat -ano^|find /i ":27017 "') do (
    if not "%%c"=="" (
        set pid=%%c
    ) else (
        set pid=%%b
    )
)
for /f "tokens=1" %%a in ('tasklist /fi "pid eq %pid%"') do set prog=%%a
taskkill /f /fi "pid eq %pid%"
for /f "tokens=2,4,5" %%a in ('netstat -ano^|find /i ":21000 "') do (
    if not "%%c"=="" (
        set pid=%%c
    ) else (
        set pid=%%b
    )
)
for /f "tokens=1" %%a in ('tasklist /fi "pid eq %pid%"') do set prog=%%a
taskkill /f /fi "pid eq %pid%"
for /f "tokens=2,4,5" %%a in ('netstat -ano^|find /i ":443 "') do (
    if not "%%c"=="" (
        set pid=%%c
    ) else (
        set pid=%%b
    )
)
for /f "tokens=1" %%a in ('tasklist /fi "pid eq %pid%"') do set prog=%%a
taskkill /f /fi "pid eq %pid%"
echo ���Խ����ɡ�
echo ------------------------------
cd ���ݿ�
echo �����������ݿ�...
start /min mongod.exe --dbpath data --port 27017
echo �ѳ����������ݿ⡣
cd ..
cd ָ��ʹ�����
echo ------------------------------
echo ��������ָ��ʹ�����...
start ָ��ʹ�����.exe
echo �ѳ�������ָ��ʹ����ߡ�
cd ..
echo ------------------------------
cd ��ݻ�
echo ����������ݻ������...
timeout 3 >nul
start /high ..\Java\bin\java.exe -jar ��ݻ�����.jar
echo �ѳ�����������ˡ�
echo ------------------------------
cd ..
start /high /wait %game%
color B
echo �ѳ���������Ϸ��
echo ------------------------------
pause
goto menu

:exit
cls
echo " __   ___   _   _    _   _ ____  _   _ _____ _   _ ";
echo " \ \ / / | | | / \  | \ | / ___|| | | | ____| \ | |";
echo "  \ V /| | | |/ _ \ |  \| \___ \| |_| |  _| |  \| |";
echo "   | | | |_| / ___ \| |\  |___) |  _  | |___| |\  |";
echo "   |_|  \___/_/   \_\_| \_|____/|_| |_|_____|_| \_|";
echo "                                                   ";            
echo "  _                __    __    __   ";
echo " | |    ___ _   _ / /_  / /_  / /_  ";
echo " | |   / __| | | | '_ \| '_ \| '_ \ ";
echo " | |__| (__| |_| | (_) | (_) | (_) |";
echo " |_____\___|\__, |\___/ \___/ \___/ ";
echo "            |___/                   ";
echo �˳�����(Exiting the program).
pause
exit