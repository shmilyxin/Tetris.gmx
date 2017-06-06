var xPos = argument0;
var yPos = argument1;
var key = argument2;
var obj = scr_getBlockObjByKey(key);
var block = instance_create(xPos,yPos,obj);
return block;
