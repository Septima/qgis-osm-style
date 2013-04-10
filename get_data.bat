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
python bin\get_data.py

GOTO :eof

:notfound
ECHO Could not find QGIS! Exiting.
PAUSE
