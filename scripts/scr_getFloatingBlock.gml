var controler = argument0;
var blockArray = controler.allBlock2dArray;
var totalList = ds_list_create();
for(var i = 1;i<array_height_2d(blockArray);i++){
    for(var j = 1;j<array_length_2d(blockArray,i);j++){
        if(blockArray[i,j]!=0){
            var returnMap = scr_checkFloating(blockArray,j,i,20);
            if(!is_undefined(returnMap)){
                var list = returnMap[? 'routeList'];
                for(var k = 0;k<ds_list_size(list);k++){
                    var posStr = string(list[|k])+"";
                    var posArray = scr_splitToArray(posStr,'_');
                    if(!scr_checkTerListContant(totalList,posStr)&&(real(blockArray[posArray[1],posArray[0]])!=0)){
                        ds_list_add(totalList,posStr);
                    }
                }
                ds_map_destroy(returnMap);
            }
        }
        
    }
}
return totalList;
if(ds_list_size(totalList)>0){
    for(var i = 0;i<ds_list_size(totalList);i++){
       var posArray = scr_splitToArray(totalList[|i],'_');
       var blockId = scr_getBlockByPos(posArray);
       scr_addDebugStr(totalList[|i],5);
       if(blockId != noone){
            with(blockId){
                
                
            }
       }
    }
}
