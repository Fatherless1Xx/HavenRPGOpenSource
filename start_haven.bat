@echo off
wsl bash -lc "cd \"$(wslpath -a '%cd%')\" && ./start_haven.sh"
pause
