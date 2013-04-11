qgis-osm-style
==============

En let og hurtig måde at få OpenStreetMap vektor data ind i QGIS med nogenlunde udholdelige styles.

Projektet er 

Features
--------------
1.  Downloader, udpakker og opretter spatielle index på OSM data fra http://www.geofabrik.de/.
2.  Indeholder en fiks og færdig QGIS projekt-fil, som peger på de downloadede data.
3.  Downloader individuelle styles-filer fra opfinderne af de anvendte styles https://github.com/3liz/osm-in-qgis

Vejledning
--------------
1.  Download qgis-osm-style her XXXX
2.  Unzip filen i en folder. I denne folder vil de downloadede OSM data og styles blive placeret.
3.  Dobbeltklik på filen XXXX. Dette starter et script, som downloader og arrangerer data. Det kan tage lidt tid.
4.  Åbn QGIS projektfilen XXXX
5.  Når du på et tidspunkt har brug for at få det sidste nye data fra OSM (De opdateres natligt), så sletter du bibliotekerne "data" og "styles" og dobbeltklikker på filen XXXX.

Tip: Projektfilen er i EPSG:4326 (Længde/breddegrader), hvis du vil arbejde med data i EPSG:25832 (UTM32 EUREF89), så klikker du på globen i nederste højre hjørne af QGIS. Herved får du dialogen til indstilling af projektets koordinatreferencesystem. I denne dialog slår du 'on the fly' transformation til og vælger EPSG:25832 fra listen af koordinatreferencesystemer.

