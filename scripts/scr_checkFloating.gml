var allBlock2dArray = argument0;
var startX = argument1;
var startY = argument2;
var endY = argument3;

var startStr = string(startX)+"_"+string(startY);


/**初始化**/
var allRouteMapList = ds_list_create();
var routeInfoMap = ds_map_create();
var routeList = ds_list_create();
var distance = abs(startY-endY);
ds_list_add(routeList,startStr);
ds_map_add_list(routeInfoMap,'routeList',routeList);
ds_map_add(routeInfoMap,'totalCost',0);
ds_map_add(routeInfoMap,'distance',distance);
ds_list_add(allRouteMapList,routeInfoMap);

var count = 0;
var returnMap = undefined;
while(true){
    
    var minCostMap = scr_getMinCostMap(allRouteMapList);
    
    scr_insertAroundBlock(allRouteMapList,minCostMap,allBlock2dArray,endY);
    if(ds_list_size(allRouteMapList)==0){
        returnMap = minCostMap;
        break;
    }else{
        var arrivalFlag = false;
        for(var i = 0;i<ds_list_size(allRouteMapList);i++){
            tempMap = allRouteMapList[|i];
            if(real(tempMap[? 'distance'])==0){
                
                arrivalFlag = true;
                break;
            }
        }
        if(arrivalFlag){
            ds_map_destroy(minCostMap);
            returnMap = undefined;
            break;
        }   
    }
    ds_map_destroy(minCostMap);
}

//释放内存
for(var i = 0;i<ds_list_size(allRouteMapList);i++){
    var tempRouteMap = allRouteMapList[|i];
    ds_map_destroy(tempRouteMap);
}
ds_list_destroy(allRouteMapList);


return returnMap;



