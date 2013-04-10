:: Try standalone install

IF EXIST "%PROGRAMFILES%\Quantum GIS Lisboa\OSGeo4W.bat" (
	CALL "%PROGRAMFILES%\Quantum GIS Lisboa\OSGeo4W.bat" dummyparam
	GOTO :success
) 
IF EXIST c:\osgeo4w\OSGeo4W.bat (
	CALL c:\osgeo4w\OSGeo4W.bat dummyparam
	GOTO :success
)
for /r %%x in (OSGeo4W.bat) do (
	CALL %%x dummyparam
	GOTO :success
)
GOTO :notfound

:success
ECHO Getting data
python bin\get_data.py

ECHO Creating shapefile indices
FOR %%f IN (data\*.shp) DO (
	ogrinfo -sql "CREATE SPATIAL INDEX ON %%~nf" %%f
)

GOTO :eof

:notfound
ECHO Could not find QGIS! Exiting.
PAUSE
