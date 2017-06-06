var xStart = argument0;
var yStart = argument1;
var returnArry;
var key = irandom_range(10,14);
returnArry[0] = scr_getBlockByKey(xStart,yStart,key);
key = irandom_range(10,14);
returnArry[1] = scr_getBlockByKey(xStart,yStart+30,key);
key = irandom_range(10,14);
returnArry[2] = scr_getBlockByKey(xStart,yStart+60,key);
key = irandom_range(10,14);
returnArry[3] = scr_getBlockByKey(xStart+30,yStart+60,key);
return returnArry;

