var pos = argument0;
var xRmIndex = pos[0];
var yRmIndex = pos[1];
var blockId = instance_position(scr_getPosByIndex(xRmIndex), scr_getPosByIndex(yRmIndex), square_obj);
return blockId;
