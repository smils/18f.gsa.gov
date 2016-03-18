var proj = d3.geo.albersUsa()
  // .translate([0, 0])
  .scale(.5);

var AlbersProjection = {
  project: function(latLng) {
    var point = proj([latLng.lng, latLng.lat]);
    return point ? 
        new L.Point(point[0], point[1]) : 
	    	new L.Point(0, 0);
  },
  unproject: function(point) {
    var latLng = proj.invert([point.x, point.y]);
    return new L.LatLng(latLng[1], latLng[0]);
  }
}

var AlbersCRS = L.extend({}, L.CRS, {
  projection: AlbersProjection,
  transformation: new L.Transformation(1, 0, 1, 0),
  infinite: true
});

var center = [37.8, -96];
var map = new L.Map('map', {crs: AlbersCRS})
  .setView(center, 3);

var layer;

d3.json("states.json", function(error, data) {
  if (error) return console.error(error);
  layer = L.geoJson(data, {
  		style: {
        color: '#000',
        weight: 1,
        fillOpacity: 1,
        fillColor: '#fff'
      }
	  })
    .addTo(map);
  
  // map.fitBounds(layer.getBounds());
});