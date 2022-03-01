cd %~dp0
call ./docker/load-env.bat
docker run --rm --name vue_app -it -e HTTP_PROXY=%HTTP_PROXY%^
 -v "%CD%":/app^
 vue_app || pause