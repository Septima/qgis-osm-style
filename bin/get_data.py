import urllib
import os
import zipfile

tmpdir   = 'tmp\\'
datadir  = 'data\\'
styledir = 'styles\\'

geofabrik 	= { 'url': r'http://download.geofabrik.de/europe/denmark-latest.shp.zip', 'tmpfilename' : tmpdir + 'osm_geofabrik.zip', 'destination' : datadir }
styles 		= { 'url': r'https://github.com/3liz/osm-in-qgis/archive/master.zip', 'tmpfilename' :  tmpdir +'osm_styles.zip', 'destination' : styledir }

def download( f ):
	print "Downloading ", f['url'], " into ", f['tmpfilename']
	urllib.urlretrieve( f['url'], f['tmpfilename'] )

def unzip( f ):
	print "Unzipping ", f['tmpfilename'], " into ", f['destination']
	zip = zipfile.ZipFile( f['tmpfilename'] )
	for fname in zip.namelist():
		outfpath = os.path.join( f['destination'], fname)
		if os.path.exists( outfpath ):
			try:
				os.remove( outfpath )
			except:
				pass
	zip.extractall( f['destination'] )

def createdir( d ):
	if not os.path.exists( d ):
		os.makedirs( d )

createdir( tmpdir )
createdir( datadir )
createdir( styledir )
		
download( geofabrik )
download( styles )

unzip( geofabrik )
unzip( styles )
