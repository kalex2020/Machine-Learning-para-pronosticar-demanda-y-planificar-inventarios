@echo off
setlocal

cd /d "K:\Proyecto ForecastingVentas"

if not exist ".venv\Scripts\python.exe" (
  echo ERROR: No se encontro el entorno virtual en .venv\Scripts\python.exe
  echo Crea o repara el entorno virtual y vuelve a intentar.
  pause
  exit /b 1
)

echo Iniciando aplicacion Streamlit...
".venv\Scripts\python.exe" -m streamlit run app/main.py

pause
