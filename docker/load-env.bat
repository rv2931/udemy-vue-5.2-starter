SET CURRENT=%cd%
echo "CURRENT=%CURRENT%"
echo "CHANGE CURRENT TO %~dp0"
cd %~dp0
for /f "tokens=1,2 delims==" %%A in (./.env) do set %%A=%%B
for /f "tokens=1,2 delims==" %%A in (./.env.local) do set %%A=%%B
if "%ENV%"=="" SET ENV=dev
for /f "tokens=1,2 delims==" %%A in (./.env.%ENV%) do set %%A=%%B
SET http_proxy=%HTTP_PROXY%
SET https_proxy=%HTTP_PROXY%
echo "RETURN TO %CURRENT%"
cd %CURRENT%