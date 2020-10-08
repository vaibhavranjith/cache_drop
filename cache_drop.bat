ECHO OFF
setlocal enabledelayedexpansion 
SET BACKEND_DIR=%1
SET nba[0]=NBA21
SET nba[1]=NBA22
SET nba[2]=NBA22A
SET nba[3]=NBA23
set nba[4]=NBA24
set nba[5]=NBA24A
set nba[6]=NBA25
set nba[7]=NBA26
set nba[8]=NBA27
SET /A "x=0"
:SymLoop 

if defined nba[%x%] ( 
   set /a "x+=1"
   GOTO :SymLoop 
)

for /l %%n in (0,1,8) do (
	call echo !nba[%%n]!
)

SET FILE_TO_DROP=__pycache__
RMDIR /S %BACKEND_DIR%\%FILE_TO_DROP%
for /l %%n in (0,1,8) do (
	FOR /D %%y IN (%BACKEND_DIR%\!nba[%%n]!\*) DO (
		IF EXIST %BACKEND_DIR%\!nba[%%n]!\%FILE_TO_DROP% (
			RMDIR /S %BACKEND_DIR%\!nba[%%n]!\%FILE_TO_DROP%
		) ELSE (
			ECHO NO
		)
	)
)
PAUSE
