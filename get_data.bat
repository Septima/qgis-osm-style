@ECHO off

IF DEFINED OSGEO4W_ROOT GOTO :success

:: Stand alone install
IF EXIST "%PROGRAMFILES%\Quantum GIS Lisboa\OSGeo4W.bat" (
	ECHO Found QGIS stand alone install
	CALL "%PROGRAMFILES%\Quantum GIS Lisboa\OSGeo4W.bat" %0
	GOTO :eof
) 

:: Osgeo4w install
IF EXIST c:\osgeo4w\OSGeo4W.bat (
	ECHO Found OSGeo4W install at c:\osgeo4w
	CALL c:\osgeo4w\OSGeo4W.bat %0
	GOTO :eof
)

:: Hmm, search high and low for something smelling like osgeo4w
for /r %%x in (OSGeo4W.bat) do (
	ECHO Found OSGeo4W at %%r
	CALL %%x %0
	GOTO :eof
)

GOTO :notfound

:success

ECHO Getting data
python bin\get_data.py

ECHO Creating shapefile indices
FOR %%f IN (data\*.shp) DO (
	ECHO Creating index for %%~nf
	ogrinfo -sql "CREATE SPATIAL INDEX ON %%~nf" %%f
)

ECHO Alt endte tilsyneladende godt!
GOTO :eof

:notfound
ECHO Could not find QGIS! Exiting.
PAUSE
