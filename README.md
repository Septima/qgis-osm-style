qgis-osm-style
==============

En let og hurtig måde at få OpenStreetMap vektor data ind i QGIS med nogenlunde udholdelige styles.

Projektet er hurtigt strikket sammen til eget og kollegaernes brug, men andre kunne måske have glæde af at komme nemt i gang med OSM og QGIS. Fejl og problemer kan rapporteres på projektets [issuetracker](https://github.com/AsgerPetersen/qgis-osm-style/issues).

Features
--------------
1.  Downloader, udpakker og opretter spatielle index på OSM data fra http://www.geofabrik.de/. Indtil videre downloades kun Danmark.
2.  Indeholder en fiks og færdig QGIS projekt-fil, som peger på de downloadede data.
3.  Downloader individuelle styles-filer fra opfinderne af de anvendte styles https://github.com/3liz/osm-in-qgis

Vejledning
--------------
1.  Download qgis-osm-style her https://github.com/AsgerPetersen/qgis-osm-style/archive/master.zip
2.  Unzip filen i en folder. I denne folder vil de downloadede OSM data og styles blive placeret.
3.  Dobbeltklik på filen get_data.bat. Dette starter et script, som downloader og arrangerer data. Det kan tage lidt tid.
4.  Åbn QGIS projektfilen styled_osm.qgs
5.  Når du på et tidspunkt har brug for at få de sidste nye data fra OSM (de opdateres natligt), så sletter du bibliotekerne "data" og "styles" og dobbeltklikker på filen get_data.bat.

Tip: Projektfilen er i EPSG:4326 (Længde/breddegrader), hvis du vil arbejde med data i EPSG:25832 (UTM32 EUREF89), så klikker du på globen i nederste højre hjørne af QGIS. Herved får du dialogen til indstilling af projektets koordinatreferencesystem. I denne dialog slår du 'on the fly' transformation til og vælger EPSG:25832 fra listen af koordinatreferencesystemer.

![Screendump med stylede data](https://github.com/AsgerPetersen/qgis-osm-style/raw/readme-content/img/screendump.png)

Licens
--------------
Kort sagt: Brug det som du vil. Du kan ikke klage, hvis det ikke virker. For styles (også i projektfiler) gælder, at afledte værker skal frigives under CC-BY-SA.

For scripts:
```
Copyright (C) 2013 Septima P/S

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and 
associated documentation files (the "Software"), to deal in the Software without restriction, 
including without limitation the rights to use, copy, modify, merge, publish, distribute, 
sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is 
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or 
substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT 
NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, 
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT 
OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

For styles og projektfiler:
```
CC-BY-SA. See http://creativecommons.org/licenses/by-sa/3.0/
```
