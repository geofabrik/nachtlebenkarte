/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various styles */
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";

@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #000000;
@water:             #000025; //for ocean and rivers
@water_inland:      #000020; // for lakes, riverbanks etc.
@residential:       #0a0a0a;
@streets_low:       #171717;
@streets:           #292929;
@lit_normal:        lighten(@streets, 25%);
@lit_gas:           #ffc545;
@traffic_solid:     #228b22;
@traffic_dashed:    fadeout(#a2cd5a, 20%);

@building:          #1c1c1c;
@restaurant:        #d400c9;
@bandstand:         #007f56;
@dance:             #340094;
@bar:               #de0f4a;
@nightclub:         #007cbf;
@biergarten:        #3c9400;
@cafe:              #ff4f3f;
@pub:               #ff8e00;


/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

@place_text_low:     #e8e8e8;
@place_text_med:     #d6d6d6;
@place_text:         #bebebe;
@place_halo:         fadeout(#000000,34%);

@road_text:         #888;
@road_halo:         #000;

@localities_text:   #ffffff;

/* ****************************************************************** */



