cd %~dp0
call ../load-env.bat
docker build --build-arg HTTP_PROXY=%HTTP_PROXY% -t vue_app . || pause