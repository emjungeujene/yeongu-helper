@echo off
cd /d "%~dp0"
title 연구 도우미 - 이 창을 닫으면 꺼집니다
echo.
echo   연구 도우미를 이 컴퓨터에서 엽니다.
echo   브라우저가 자동으로 열립니다. 이 검은 창은 그대로 두십시오.
echo.

where python >nul 2>nul
if %errorlevel%==0 goto runpython
where py >nul 2>nul
if %errorlevel%==0 goto runpy
goto nopython

:runpython
start "" "http://localhost:8765/"
python -m http.server 8765
goto :eof

:runpy
start "" "http://localhost:8765/"
py -3 -m http.server 8765
goto :eof

:nopython
echo.
echo   [!] 이 컴퓨터에 Python 이 없습니다.
echo.
echo   1) 설치 없이 바로 쓰기
echo      "단일파일" 폴더의 IRB_도우미.html 을 두 번 누르십시오.
echo      도구는 그대로 돌아갑니다. 다만 AI 보조는 켜지지 않습니다.
echo.
echo   2) AI 보조까지 쓰시려면 Python 설치 (5분)
echo      https://www.python.org/downloads/
echo      설치할 때 "Add python.exe to PATH" 를 반드시 체크하십시오.
echo      설치 후 이 파일을 다시 두 번 누르십시오.
echo.
pause
