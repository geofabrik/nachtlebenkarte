# nachtlebenkarte
Nachtleben-Kartenstil für OpenStreetMap (osm2pgsql, CartoCSS)

Dieser Kartenstil war Gegenstand der Bachelor-Arbeit von Lisa Stolz
an der Hochschule Karlsruhe im Juli 2015. Die Arbeit wurde von 
Frederik Ramm bei der Geofabrik extern betreut.

Das Verzeichnis enthält die benötigten .mss-Dateien sowie eine .yml-
Datei, mit der in "Kosmtik" direkt gearbeitet werden kann. 

Zur direkten Verwendung in Mapnik muss erst die .yml in eine .mml 
umgewandelt werden, siehe z.B. https://github.com/gravitystorm/openstreetmap-carto/blob/master/scripts/yaml2mml.py 

Danach ist die .mml mit "carto" in eine Mapnik-XML umzuwandeln.

Der Stil beruht auf einem osm2pgsql-Import mit der "--hstore"-Option.

![Screenshot](screenshot.png)

Der Kartenstil wird unter der freien Lizenz CC-BY-SA 3.0 veröffentlicht.

![CC-BY-SA](https://licensebuttons.net/l/by-sa/3.0/88x31.png)

Die vollständige Bachelor-Arbeit befindet sich als PDF in diesem Github-Repository.

