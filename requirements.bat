@echo off
echo Installing Python 3.11.9 (if not already installed)...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python not found. Installing Python 3.11.9...
    REM You may need to adjust this URL based on the latest Python release.
    REM Check https://www.python.org/downloads/ for the latest version.
    start /wait "" https://www.python.org/ftp/python/3.11.9/python-3.11.9-amd64.exe /quiet InstallAllUsers=1 PrependPath=1 Include_launcher=0
    echo Python 3.11.9 installed.
) else (
    echo Python is already installed.
)

echo.
echo Installing required Python packages...
pip install pycryptodome pywin32 requests
echo All required packages installed.
pause

