@echo off

SET flutter_path=flutter\bin\flutter.bat

IF NOT EXIST "%flutter_path%" (
  ECHO Error: The flutter submodule is not fetched yet.
  ECHO        To fetch flutter submodule, run the following command:
  ECHO        git submodule update --init --recursive
  EXIT /B 1
)

CALL "%flutter_path%" %*
