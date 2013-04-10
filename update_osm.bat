SET GEOFABRIK_URL=http://download.geofabrik.de/europe/denmark-latest.shp.zip
SET STYLE_URL=https://github.com/3liz/osm-in-qgis/archive/master.zip

SET EXEDIR=.\bin\
SET TMPDIR=.\tmp\
SET DATADIR=.\data\

IF NOT EXIST %TMPDIR% MKDIR %TMPDIR%
IF NOT EXIST %DATADIR% MKDIR %DATADIR%

IF NOT EXIST %TMPDIR%\osm_geofabrik.zip %EXEDIR%\wget %GEOFABRIK_URL% -O %TMPDIR%\osm_geofabrik.zip
IF NOT EXIST %TMPDIR%\osm_styles.zip %EXEDIR%\wget %STYLE_URL% -O %TMPDIR%\osm_styles.zip

%EXEDIR%\unzip %TMPDIR%\osm_geofabrik.zip -d %DATADIR%
%EXEDIR%\unzip %TMPDIR%\osm_styles.zip -d %DATADIR%

:: TODO: Look for ogr in c:\osgeo4w and in qgis installation.
:: If found make indexes for shape files

