var newX = argument0;
var newY = argument1;
var blockValue = argument2;
var minRouteList =argument3;
var totalCost =argument4;
var endIndex = argument5;
var routeInfoMap = ds_map_create();
var routeList = ds_list_create();
for(var i = 0;i<ds_list_size(minRouteList);i++){
    ds_list_add(routeList,minRouteList[|i]);
}

var blockIndex;
blockIndex[0]=newX;
blockIndex[1]=newY;
var cost = totalCost;
var distance = abs(blockIndex[1]-endIndex);
var blockStr = scr_arrayToStr(blockIndex,2,"_")
if(!scr_checkTerListContant(routeList,blockStr)&&blockValue!=0){
    cost += 1;
    ds_list_add(routeList,blockStr);
    ds_map_add_list(routeInfoMap,'routeList',routeList);
    ds_map_add(routeInfoMap,'totalCost',cost);
    ds_map_add(routeInfoMap,'distance',distance);
    return routeInfoMap;
}else{
    ds_list_destroy(routeList);
    ds_map_destroy(routeInfoMap);  
}
return undefined;



