/* LABELS.MSS CONTENTS:
 * - place names
 * - road labels
 * - localities labels 
 */

/* Font sets are defined in palette.mss */

/* ================================================================== */
/* PLACE NAMES
/* ================================================================== */

/* ---- Cities ------------------------------------------------------ */

#place_label[type='city'][zoom>=6][zoom<=12] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-halo-fill:@place_halo;
  text-halo-radius:2;
  [zoom>=6]{
    text-fill:@place_text_low;
    text-size: 9;
    text-min-distance:10;
  }
  [zoom>=7]{
    text-fill:@place_text_med;
    text-size: 10;
  }
  [zoom>=8]{
    text-fill:@place_text_med;
    text-size: 10;
  }
  [zoom>=9] {
    text-fill:@place_text_med;
    text-size:10;
    text-wrap-width: 60;
  }
  [zoom=10] {
    text-fill:@place_text;
    text-size:11;
    text-wrap-width: 70;
  }
  [zoom=11] {
    text-fill:darken(@place_text, 10%);
    text-size:12;
    text-character-spacing: 1;
    text-wrap-width: 80;
  }
  [zoom=12] {
    text-fill:darken(@place_text, 10%);
    text-size:13;
    text-character-spacing: 1;
    text-wrap-width: 100;
  }
}

#place_label_b[type='city'][zoom>=13][zoom<=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-halo-fill:@place_halo;
  text-halo-radius:2;
  [zoom=13] {
    text-fill:darken(@place_text, 20%);
    text-size:14;
    text-character-spacing: 2;
    text-wrap-width: 200;
    text-transform: uppercase;
  }
  [zoom=14] {
    text-fill:darken(@place_text, 20%);
    text-size:15;
    text-character-spacing: 4;
    text-wrap-width: 300;
    text-transform: uppercase;
  }
  [zoom=15] {
    text-fill:darken(@place_text, 20%);
    text-size:16;
    text-character-spacing: 6;
    text-wrap-width: 400;
    text-transform: uppercase;
  }
}

/* ---- Towns ------------------------------------------------------- */

#place_label[type='town'][zoom>=8][zoom<=12] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@place_text;
  text-halo-fill:@place_halo;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>=8]{
    text-fill:@place_text_med;
    text-size: 10;
    text-min-distance:75;
  }
  [zoom>=9] {
    text-fill:@place_text_med;
    text-size: 10;
    text-min-distance:50;
  }
  [zoom>=10] {
    text-fill:@place_text;
    text-size: 10;
  }
  [zoom>=11]{ 
    text-fill:darken(@place_text, 10%);
    text-size:11; 
  }
  [zoom>=12]{
    text-fill:darken(@place_text, 10%);
    text-size:12;
    text-line-spacing: 1;
  }
}

#place_label_b[type='town'][zoom>=13][zoom<=17] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@place_text;
  text-halo-fill:@place_halo;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>=13]{
    text-fill:darken(@place_text, 10%);
    text-transform: uppercase;
    text-character-spacing: 1;
    text-line-spacing: 2;
  }
  [zoom>=14]{
    text-fill:darken(@place_text, 10%);
    text-size:13;
    text-character-spacing: 2;
    text-line-spacing: 3;
  }
  [zoom>=15]{
    text-fill:darken(@place_text, 10%);
    text-size:14;
    text-character-spacing: 3;
    text-line-spacing: 4;
  }
  [zoom>=16]{
    text-fill:darken(@place_text, 10%);
    text-size:15;
    text-character-spacing: 4;
    text-line-spacing: 5;
  }
  [zoom>=17]{
    text-fill:darken(@place_text, 10%);
    text-size:16;
    text-character-spacing: 5;
    text-line-spacing: 6;
  }
}


/* ---- Other small places ------------------------------------------ */

#place_label_b[type='village'][zoom>=13],
#place_label_b[type='suburb'][zoom>=13],
#place_label_b[type='hamlet'][zoom>=13],
#place_label_b[type='neighbourhood'][zoom>=13] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@place_text;
  text-size:10;
  text-halo-fill:@place_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  [zoom>=14] {
    text-size:11;
    text-character-spacing: 1;
    text-wrap-width: 40;
    text-line-spacing: 1;
  }
  [zoom>=15] {
    text-halo-radius: 2;
    text-transform: uppercase;
    text-character-spacing: 1;
    text-wrap-width: 60; 
    text-line-spacing: 1;
  }
  [zoom>=16] {
    text-size:12;
    text-character-spacing: 2;
    text-wrap-width: 120;
    text-line-spacing: 2;
  } 
  [zoom>=17] {
    text-size:13; 
    text-character-spacing: 3;
    text-wrap-width: 160;
    text-line-spacing: 4;
  }
  [zoom>=18] {
    text-size:14;
    text-character-spacing: 4;
    text-line-spacing: 6;
  }
}

/* ================================================================== */
/* ROAD LABELS
/* ================================================================== */

#roads_label[zoom>=18] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-size:10;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:120;
}

/* ================================================================== */
/* LOCALITIES NAMES
/* ================================================================== */


#localities_label[zoom>=18]{
  marker-height: 21.0;
  marker-fill: #000000;
  marker-opacity: 0%;
  marker-allow-overlap: true;
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@localities_text;
  text-size: 12;
  text-wrap-width: 50;
  text-halo-radius:1; 
  text-placement-type: simple;
  text-placements: "N,S,E,W,NE,SE,NW,SW";
  text-dy: 13;
  text-dx: 13;
  [type = 'bar']{
    text-halo-fill:@bar;}
  [type = 'nightclub']{
    text-halo-fill:@nightclub;}
  [type = 'biergarten']{
    text-halo-fill:@biergarten;}
  [type = 'cafe']{
    text-halo-fill:@cafe;}
  [type = 'pub']{
    text-halo-fill:@pub;}
  [type = 'restaurant']{
    text-halo-fill:@restaurant;}
  [type_b = 'bandstand']{
    text-halo-fill:@bandstand;}
  [type_b = 'dance']{
    text-halo-fill:@dance;}
}

