REM @echo off

CD %~dp0

python -m venv venv

call venv\Scripts\activate.bat

git submodule init

git submodule update

pip install -e SubModuleForTesting

pip install -r requirements.txt



