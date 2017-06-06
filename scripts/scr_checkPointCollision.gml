var xPoint = argument0;
var yPoint = argument1;
var activeShape = argument2;
var collisionFlag = false;
var collision_obj = collision_point(xPoint, yPoint,square_obj,true,true);
if(xPoint>scr_getPosByIndex(10)||xPoint<scr_getPosByIndex(1)){
    collisionFlag = true;
    return collisionFlag;
}
if(yPoint>scr_getPosByIndex(20)||yPoint<scr_getPosByIndex(1)){
    collisionFlag = true;
    return collisionFlag;
}
if(collision_obj!=noone){
if(!scr_arrayContainObj(activeShape,collision_obj)){
    collisionFlag = true;
    return collisionFlag;
}
}
return collisionFlag;
