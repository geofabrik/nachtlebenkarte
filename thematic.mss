/* BASE.MSS CONTENTS
 * - Buildings localities
 * - Streets lit
 * - Streetlampss
 * - Traffic night
 * - Localities pois
 *
 */

/* ================================================================== */
/* BUILDINGS LOCALITIES
/* ================================================================== */

#locality_buildings[zoom>=16]{
  polygon-fill:@building;
  line-color:darken(@building,10%);
  line-width:1;
  [type = 'bar'],
  [type = 'nightclub'],
  [type = 'biergarten'],
  [type = 'cafe'],
  [type = 'pub'],
  [type = 'restaurant'],
  [type_b = 'dance'],
  [type_b = 'bandstand']{polygon-fill: lighten(@building,8%)}
}

/* ================================================================== */
/* STREETS UNLIT, LIT
/* ================================================================== */


#streets_med[zoom>=10]{
  line-color: @streets;
  line-width: 0.5;
  [lit = 'no']{
    line-color: @streets_low;
    line-width: 0.5;
  }
}
#streets_high[zoom>=12]{
  line-color: @streets;
  line-width: 0.5;
  [lit = 'no']{ line-color: @streets_low;}
  [zoom >=14]{
    [anzahl_pois_pro_km >= 7]{ line-width: 0.75;}
    [anzahl_pois_pro_km >= 25]{ line-width: 1.0;}
    [anzahl_pois_pro_km >= 50]{ line-width: 1.5;}
  }
  [zoom >=16] {
    line-color: lighten(@streets, 5%);
    line-width: 1.0;
    [anzahl_pois_pro_km >= 7]{ line-width: 2.5;    [type = 'service']{line-width: 1.0;}}
    [anzahl_pois_pro_km >= 25]{ line-width: 4.0;    [type = 'service']{line-width: 1.0;}}
    [anzahl_pois_pro_km >= 50]{ line-width: 6.0;    [type = 'service']{line-width: 1.0;}}
  }
  [zoom >=17] {
    line-color: lighten(@streets, 10%);
    line-width: 2.0;
    [anzahl_pois_pro_km >= 7]{ line-width: 4.0;    [type = 'service']{line-width: 2.0;}}
    [anzahl_pois_pro_km >= 25]{ line-width: 6.0;    [type = 'service']{line-width: 2.0;}}
    [anzahl_pois_pro_km >= 50]{ line-width: 8.0;    [type = 'service']{line-width: 2.0;}}
  }
}

#streets_med_lit[zoom>=10]{
  line-color: @lit_normal;
  line-width: 0.5;
  [lit_gas ='yes'] {line-color: @lit_gas;}
}

#streets_high_lit[zoom >=12]{
  line-color: @lit_normal;
  line-width: 0.5;
  [zoom >=14]{
    [lit_gas ='yes'] {line-color: @lit_gas;}
    [anzahl_pois_pro_km >= 7]{ line-width: 0.75;}
    [anzahl_pois_pro_km >= 25]{ line-width: 1.0;}
    [anzahl_pois_pro_km >= 50]{ line-width: 1.5;}
  }
  [zoom >=16] {
    line-color: lighten(@lit_normal, 5%);
    line-width: 1.0;
    [lit_gas ='yes'] {line-color: lighten(@lit_gas, 5%);}
    [anzahl_pois_pro_km >= 7]{ line-width: 2.5;    [type = 'service']{line-width: 1.0;}}
    [anzahl_pois_pro_km >= 25]{ line-width: 4.0;    [type = 'service']{line-width: 1.0;}}
    [anzahl_pois_pro_km >= 50]{ line-width: 6.0;    [type = 'service']{line-width: 1.0;}}
  }
  [zoom >=17] {
    line-color: lighten(@lit_normal, 10%);
    line-width: 2.0;
    [lit_gas ='yes'] {line-color: lighten(@lit_gas, 10%);}
    [anzahl_pois_pro_km >= 7]{ line-width: 4.0;    [type = 'service']{line-width: 2.0;}}
    [anzahl_pois_pro_km >= 25]{ line-width: 6.0;    [type = 'service']{line-width: 2.0;}}
    [anzahl_pois_pro_km >= 50]{ line-width: 8.0;    [type = 'service']{line-width: 2.0;}}
  }
}

/* ================================================================== */
/* STREETLAMPS
/* ================================================================== */

#street_lamps[zoom>=18]{
    marker-file: url(symbols/lamp_normal.png);
    marker-height: 36.0;
    marker-line-opacity: 0;
    marker-allow-overlap: true;
  [lit_gas = 'yes']{
    marker-file: url(symbols/lamp_gas.png);
    marker-height: 36.0;
    marker-line-opacity: 0;
    marker-allow-overlap: true;
  }
}


/* ================================================================== */
/* TRAFFIC NIGHT
/* ================================================================== */


#nightliner[zoom>=12]{
  ::solid {
    line-color: darken(@traffic_solid, 20%);
    line-width: 1;
  }
  ::dashed {
    line-color: darken(@traffic_dashed, 20%);
    line-dasharray: 3,3;
    line-width: 1;
  }
  [zoom>=17]{  
    ::solid {
      line-color: @traffic_solid;
      line-width: 2;
    }
    ::dashed {
      line-color: @traffic_dashed;
      line-dasharray: 3,3;
      line-width: 2;
    }
  }
  [zoom>=19]{  
    ::solid {
      line-color: @traffic_solid;
      line-width: 3;
    }
    ::dashed {
      line-color: @traffic_dashed;
      line-dasharray: 3,3;
      line-width: 3;
    }
  }
}

#nightliner_stops[zoom>=14]{
  marker-fill: darken(@traffic_solid, 20%);
  marker-line-color: darken(@traffic_dashed, 20%);
  marker-height: 4.0;
  [zoom>=16]{
    marker-height: 5.0;
    marker-fill: darken(@traffic_solid, 20%);
    marker-line-color: darken(@traffic_dashed, 20%);
  }
  [zoom>=17]{
    marker-height: 7.5;
    marker-fill: @traffic_solid;
    marker-line-color: @traffic_dashed;
  }
}

/* ================================================================== */
/* LOCALITIES
/* ================================================================== */


#POIs[zoom>=2][zoom<10]{
  marker-file: url(symbols/local_low.png);
  marker-fill: #ffffff;
  marker-line-opacity: 0;
  marker-allow-overlap: true;
  [zoom>=2][zoom<4] {marker-height: 0.5;}
  [zoom=4] {marker-height: 0.75;}
  [zoom>4][zoom<7] {marker-height: 1.0;}
  [zoom>=7][zoom<=9] {marker-height: 2.0;}
}

#POIs_high{
[zoom>=10]{
  marker-height: 2.0;
  [type = 'bar']{
  marker-file: url(symbols/local_bar.png);
  marker-fill: @bar;
  }
  [type = 'nightclub']{
  marker-file: url(symbols/local_nightclub.png);
  marker-fill: @nightclub;
  }
  [type = 'biergarten']{
  marker-file: url(symbols/local_biergarten.png);
  marker-fill: @biergarten;
  }
  [type = 'cafe']{
  marker-file: url(symbols/local_cafe.png);
  marker-fill: @cafe;
  }
  [type = 'pub']{
  marker-file: url(symbols/local_pub.png);
  marker-fill: @pub;
  }
  [type = 'restaurant']{
  marker-file: url(symbols/local_restaurant.png);
  marker-fill: @biergarten;
  }
  [type_b = 'bandstand']{
  marker-file: url(symbols/local_bandstand.png);
  marker-fill: @cafe;
  }
  [type_b = 'dance']{
  marker-file: url(symbols/local_dance.png);
  marker-fill: @pub;
  }
  marker-allow-overlap: false;
}
[zoom>=12]{
  marker-height: 3.0;
  [type = 'bar']{
  marker-file: url(symbols/local_bar.png);
  marker-fill: @bar;
  }
  [type = 'nightclub']{
  marker-file: url(symbols/local_nightclub.png);
  marker-fill: @nightclub;
  }
  [type = 'biergarten']{
  marker-file: url(symbols/local_biergarten.png);
  marker-fill: @biergarten;
  }
  [type = 'cafe']{
  marker-file: url(symbols/local_cafe.png);
  marker-fill: @cafe;
  }
  [type = 'pub']{
  marker-file: url(symbols/local_pub.png);
  marker-fill: @pub;
  }
  [type = 'restaurant']{
  marker-file: url(symbols/local_restaurant.png);
  marker-fill: @biergarten;
  }
  [type_b = 'bandstand']{
  marker-file: url(symbols/local_bandstand.png);
  marker-fill: @cafe;
  }
  [type_b = 'dance']{
  marker-file: url(symbols/local_dance.png);
  marker-fill: @pub;
  }
  marker-allow-overlap: false;
}
[zoom>=14]{
  marker-height: 5.0;
  [type = 'bar']{
  marker-file: url(symbols/local_bar.png);
  marker-fill: @bar;
  }
  [type = 'nightclub']{
  marker-file: url(symbols/local_nightclub.png);
  marker-fill: @nightclub;
  }
  [type = 'biergarten']{
  marker-file: url(symbols/local_biergarten.png);
  marker-fill: @biergarten;
  }
  [type = 'cafe']{
  marker-file: url(symbols/local_cafe.png);
  marker-fill: @cafe;
  }
  [type = 'pub']{
  marker-file: url(symbols/local_pub.png);
  marker-fill: @pub;
  }
  [type = 'restaurant']{
  marker-file: url(symbols/local_restaurant.png);
  marker-fill: @biergarten;
  }
  [type_b = 'bandstand']{
  marker-file: url(symbols/local_bandstand.png);
  marker-fill: @cafe;
  }
  [type_b = 'dance']{
  marker-file: url(symbols/local_dance.png);
  marker-fill: @pub;
  }
  marker-allow-overlap: true;
}
[zoom>=17]{
  [type = 'bar']{
    marker-file: url(symbols/local_bar_sig.png);
    marker-height: 21.0;
    marker-fill: @bar;
  }
  [type = 'nightclub']{
    marker-file: url(symbols/local_nightclub_sig.png);
    marker-height: 21.0;
    marker-fill: @nightclub;
  }
  [type = 'biergarten']{
    marker-file: url(symbols/local_biergarten_sig.png);
    marker-height: 21.0;
    marker-fill: @biergarten;
  }
  [type = 'cafe']{
    marker-file: url(symbols/local_cafe_sig.png);
    marker-height: 21.0;
    marker-fill: @cafe;
  }
  [type = 'pub']{
    marker-file: url(symbols/local_pub_sig.png);
    marker-height: 21.0;
    marker-fill: @pub;
  }
  [type = 'restaurant']{
    marker-file: url(symbols/local_restaurant_sig.png);
    marker-height: 21.0;
    marker-fill: @restaurant;
  }
  [type_b = 'bandstand']{
    marker-file: url(symbols/local_bandstand_sig.png);
    marker-height: 21.0;
    marker-fill: @bandstand;
  }
  [type_b = 'dance']{
    marker-file: url(symbols/local_dance_sig.png);
    marker-height: 21.0;
    marker-fill: @dance;
  }
  marker-allow-overlap: true;
}
}
