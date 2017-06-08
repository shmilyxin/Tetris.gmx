
//得出当前所有路线最小cost路线

var allRouteMapList =argument0;
var minCostIndex =0;
var minCost = 999;
for(var i=0;i<ds_list_size(allRouteMapList);i++){
    var thisMap = allRouteMapList[|i];
    var thisTotalCost = thisMap[? 'totalCost'];
    var thisDistance = thisMap[? 'distance'];
    var thisCost = thisTotalCost + thisDistance;
    if(thisCost<=minCost){
        minCostIndex = i;
        minCost=thisCost;
    }
}
var minCostMap = allRouteMapList[|minCostIndex];
ds_list_delete(allRouteMapList,minCostIndex)
return minCostMap;
