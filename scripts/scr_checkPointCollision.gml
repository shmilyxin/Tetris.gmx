var xPoint = argument0;
var yPoint = argument1;
var allBlock2dArray = argument2;
var xIndex = scr_getIndexByPos(xPoint);
var yIndex = scr_getIndexByPos(yPoint);
var collisionFlag = false;
if(xPoint>scr_getPosByIndex(10)||xPoint<scr_getPosByIndex(1)){
    collisionFlag = true;
    return collisionFlag;
}
if(yPoint>scr_getPosByIndex(20)||yPoint<scr_getPosByIndex(1)){
    collisionFlag = true;
    return collisionFlag;
}
if(allBlock2dArray[yIndex,xIndex]!=0){
    collisionFlag = true;
    return collisionFlag;
}
return collisionFlag;
