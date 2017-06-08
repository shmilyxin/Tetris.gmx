/**
    将当前单元格周围的单元格加入路线中 忽略已填加的单元格
**/
var allRouteMapList = argument0;
var minCostMap =argument1;
var allBlock2dArray =argument2;
var endIndex = argument3;
var minRouteList = minCostMap[? 'routeList'];
var xMax = array_length_2d(allBlock2dArray,0);
var yMax = array_height_2d(allBlock2dArray);
var totalCost = minCostMap[? 'totalCost'];
var minRouteListSize = ds_list_size(minRouteList);
var lastPoint = minRouteList[|minRouteListSize-1];
var indexList = scr_splitToList(lastPoint,"_");
var xIndex = real(indexList[|0]);
var yIndex = real(indexList[|1]);

if(yIndex>1){
    var newX = xIndex;
    var newY = yIndex-1;
    var blockValue = allBlock2dArray[newY,newX];
    var routeInfoMap = scr_insertNextBlock(newX,newY,blockValue,minRouteList,totalCost,endIndex);
    if(!is_undefined(routeInfoMap)){     
        ds_list_add(allRouteMapList,routeInfoMap);
    }
}
if(yIndex<yMax-1){
    var newX = xIndex;
    var newY = yIndex+1;
    var blockValue = allBlock2dArray[newY,newX];
    var routeInfoMap = scr_insertNextBlock(newX,newY,blockValue,minRouteList,totalCost,endIndex);
    if(!is_undefined(routeInfoMap)){     
        ds_list_add(allRouteMapList,routeInfoMap);
    }
}
if(xIndex>1){
    var newX = xIndex-1;
    var newY = yIndex;
    var blockValue = allBlock2dArray[newY,newX];
    var routeInfoMap = scr_insertNextBlock(newX,newY,blockValue,minRouteList,totalCost,endIndex);
    if(!is_undefined(routeInfoMap)){     
        ds_list_add(allRouteMapList,routeInfoMap);
    }
}
if(xIndex<xMax-1){
    var newX = xIndex+1;
    var newY = yIndex;
    var blockValue = allBlock2dArray[newY,newX];
    var routeInfoMap = scr_insertNextBlock(newX,newY,blockValue,minRouteList,totalCost,endIndex);
    if(!is_undefined(routeInfoMap)){     
        ds_list_add(allRouteMapList,routeInfoMap);
    }
}
ds_list_destroy(indexList);



