echo "access through browser via localhost:4000/docs"

:: run container localy with bind mount;
docker run -it -v "%cd%:/home/app" -p 4000:4000 -e PORT=4000 -e MLFLOW_TRACKING_URI=%MLFLOW_TRACKING_URI% -e AWS_ACCESS_KEY_ID=%AWS_ACCESS_KEY_ID% -e AWS_SECRET_ACCESS_KEY=%AWS_SECRET_ACCESS_KEY% -e BACKEND_STORE_URI=%BACKEND_STORE_URI% -e ARTIFACT_ROOT=%ARTIFACT_ROOT% getaround-api

pause