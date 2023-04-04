@echo OFF
set PROXY_URL=<proxy url here without http>

echo       _   _ _____  __  __
echo      ^| \ ^| ^|  __ \^|  \/  ^|
echo      ^|  \^| ^| ^|__) ^| \  / ^|
echo      ^| . ` ^|  ___/^| ^|\/^| ^|
echo      ^| ^|\  ^| ^|    ^| ^|  ^| ^|
echo      ^|_^| \_^|_^|    ^|_^|  ^|_^|
echo      batnpm - Proxy config for npm
echo .........Proxy URL: %PROXY_URL%

set /p login="Login: "
set "psCommand=powershell -Command "$pword = read-host 'Password' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set password=%%p
REM echo

npm --proxy http://%login%:%password%@%PROXY_URL% %*
