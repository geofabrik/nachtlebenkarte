/* BASE.MSS CONTENTS
 * - Landuse & landcover
 * - Buildings
 * - Water areas
 * - Water ways
 * - Administrative Boundaries
 * - Streets
 */

/* ================================================================== */
/* LANDUSE & LANDCOVER
/* ================================================================== */

#land-low[zoom>=0][zoom<10],
#land-high[zoom>=10] {
  polygon-fill: @land;
  polygon-gamma: 0.75;
}

#residential[type='residential'][zoom>=11] {
  [zoom=11]{ polygon-fill: lighten(@residential, 3%); }
  [zoom>11]{ polygon-fill: @residential; }
}

/* ================================================================== */
/* BUILDINGS
/* ================================================================== */


#buildings[zoom>=14]{
  polygon-fill:@building;
  line-width:0.6;
  line-color:darken(@building,10%);
}

/* ================================================================== */
/* WATER AREAS
/* ================================================================== */

Map { background-color: @water; }

#water_gen0[zoom>8][zoom<=12]{
  polygon-fill: @water_inland;
}
#water[zoom>12] {
  polygon-fill: @water_inland;
}

/* ================================================================== */
/* WATER WAYS
/* ================================================================== */

#waterway_low[zoom>=8][zoom<=12] {
  line-color: @water;
  [zoom=8] { 
    line-width: 0.8;
    line-color: lighten(@water, 10%); 
  }
  [zoom=10]{ line-width: 1.0;}
  [zoom=11]{ 
    line-width: 1.2;
  }
  [zoom=12]{ 
    line-width: 1.5;
  }
}

#waterway_med[zoom>=13] {
  line-color: @water;
  [type='river'],
  [type='canal'] {
    line-cap: round;
    line-join: round;
    [zoom=13]{ line-width: 1.5; }
    [zoom>=14]{ line-width: 2.0; }
    [zoom>=15]{ line-width: 2.5; }
  }
  [type='stream'] {
    [zoom=13]{ line-width: 1.0; }
    [zoom>=14]{ line-width: 1.5; }
    [zoom>=15]{ line-width: 2.0; }
  }
}

/* ================================================================== */
/* STREETS
/* ================================================================== */


#streets_low[zoom>=8][zoom<10]{
  line-color: @streets_low;
  line-width: 0.5;
}



