var mode = argument0;
var xStart = argument1;
var yStart = argument2;
var returnArry;
var posionArray = scr_getShapePos(shapeKey.RZShape,shapeMode.N,xStart,yStart)
var keyArray = scr_getBlockArray(array_height_2d(posionArray));
for(var i = 0;i<array_height_2d(posionArray);i++){
returnArry[i] = scr_getBlockByKey(posionArray[i,0],posionArray[i,1],keyArray[i]);
}
return returnArry;

