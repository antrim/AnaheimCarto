// Basic color palette, from which variations will be derived.
@motorway:         #a1c2df;
@main:            #a1c2df;
@street:           #a1c2df;
@street_limited:    #9ba5df;

// ---------------------------------------------------------------------

// Roads are split across 3 layers: #road, #bridge, and #tunnel. Each
// road segment will only exist in one of the three layers. The
// #bridge layer makes use of Mapnik's group-by rendering mode;
// attachments in this layer will be grouped by layer for appropriate
// rendering of multi-level overpasses.

// The main road style is for all 3 road layers and divided into 2 main
// attachments. The 'case' attachment is 

#overpass-turbo.eu_export {
    line-join:round;
     line-cap: round;
      line-color: @street;
      #tunnel { line-color:lighten(@main,4); }
      [zoom>=8] { line-width:0.5; }
      [zoom>=10] { line-width:1; }
      [zoom>=13] { line-width:1.5; }
      [zoom>=14] { line-width:2.5; }
      [zoom>=15] { line-width:3.5; }
      [zoom>=16] { line-width:6; }
  
   ::fill[zoom>=6]['mapnik::geometry_type'=2] {
 
    [class='main'][zoom>=8] {
      line-join:round;
      #road, #bridge { line-cap: round; }
      line-color: @street;
      #tunnel { line-color:lighten(@main,4); }
      [zoom>=8] { line-width:0.5; }
      [zoom>=10] { line-width:1; }
      [zoom>=13] { line-width:1.5; }
      [zoom>=14] { line-width:2.5; }
      [zoom>=15] { line-width:3.5; }
      [zoom>=16] { line-width:6; }
  }
    }
      
  }


#road, #bridge, #tunnel {
  
  // casing/outlines & single lines
  ::case[zoom>=6]['mapnik::geometry_type'=2] {
    [class='main']
      {
      line-join:round;
      line-width:0;
      line-color: white;//mix(@main, #800, 75);
      //#road { line-cap: round; }
     // #tunnel { line-dasharray:3,2; }
     /* [zoom>=6] { line-width:0.2; }
      [zoom>=7] { line-width:0.4; }
      [zoom>=8] { line-width:1.5; }
      [zoom>=10] { line-width:2.4; }
      [zoom>=13] { line-width:2.5; }
      [zoom>=14] { line-width:4; }
      [zoom>=15] { line-width:5; }
      [zoom>=16] { line-width:8; }*/
    }
    [class='street'][zoom>=12],
      
      [class='street_limited'][zoom>=12] {
      /*line-join:round;
      #road { line-cap: round; }
      #tunnel { line-dasharray:3,2; }
      line-width:0;
      line-color: white;//@land * 0.8;*/
    /*  [zoom>=12] { line-width:0.5; }
      [zoom>=14] { line-width:1; }
      [zoom>=15] { line-width:4; }
      [zoom>=16] { line-width:6.5; }*/
    }
   /* [class='service'][zoom>=15] {
      line-join:round;
      #road { line-cap: round; }
      #tunnel { line-dasharray:3,2; }
      line-color: @land * 0.9;
      [zoom>=15] { line-width:1; }
      [zoom>=16] { line-width:4; }
    }*/
    /*[class='path'][zoom>=15] {
      opacity: 0;
      line-color: #cba;
      line-dasharray: 2,1;
      [zoom>=16] { line-width: 1.2; }
      [zoom>=17] { line-width: 1.5; }
    }*/
  }
  
  // fill/inlines
  ::fill[zoom>=6]['mapnik::geometry_type'=2] {
 
    [class='main'][osmid='4271736'][zoom>=8] {
      line-join:round;
      #road, #bridge { line-cap: round; }
      line-color: @street;
      #tunnel { line-color:lighten(@main,4); }
      [zoom>=8] { line-width:0.5; }
      [zoom>=10] { line-width:1; }
      [zoom>=13] { line-width:1.5; }
      [zoom>=14] { line-width:2.5; }
      [zoom>=15] { line-width:3.5; }
      [zoom>=16] { line-width:6; }
    }
   /* [class='street'][zoom>=15], {
      line-join:round;
     
      #road, #bridge { line-cap: round; }
      [zoom>=15] { line-width:2.5; }
      [zoom>=16] { line-width:4; }
      line-color: #76919d;
    }*/
    
   /* [class='service'][zoom>=16], {
     // line-join:round;
    
      #road, #bridge { line-cap: round; }
      //[zoom>=16] { line-width:2; line-color:#fff; }
      //  line-color: @street;
    }*/
 
    
  }
}
