var OShapeOffsetStr = argument0;
var xStart = argument1;
var yStart = argument2;
var posArray2d ;
var offset2d = scr_splitTo2DArray(OShapeOffsetStr,";",",");
for (var i = 0; i<array_height_2d(offset2d); i++){
    posArray2d[i,0] = xStart+30*real(offset2d[i, 0]);
    posArray2d[i,1] = yStart+30*real(offset2d[i, 1]);
}
return posArray2d;

