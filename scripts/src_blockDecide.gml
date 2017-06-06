var controler = argument0;

var activeBlockArray = controler.activeShape;
for(var i=0;i<array_length_1d(activeBlockArray);i++){
    var block = activeBlockArray[i];
    var xIndex = scr_getIndexByPos(block.x);
    var yIndex = scr_getIndexByPos(block.y);
    controler.allBlock2dArray[yIndex,xIndex]=block.value;
}
var allRemoveBlockList = ds_list_create();
for(var i=0;i<array_length_1d(activeBlockArray);i++){
    scr_findRemoveBlockList(allRemoveBlockList,activeBlockArray[i],controler);
}
for(var i=0;i<ds_list_size(allRemoveBlockList);i++){
    var removeArray = allRemoveBlockList[|i];
    var removeBlockStr = removeArray[5];
    var blockListArray = scr_splitToArray(removeBlockStr,";");
    for(var j = 0;j<array_length_1d(blockListArray);j++){
        pos = scr_splitToArray(blockListArray[j],"_");
        var xRmIndex = pos[0];
        var yRmIndex = pos[1];
        controler.allBlock2dArray[yRmIndex,xRmIndex] = 0;
        blockId = instance_position(scr_getPosByIndex(xRmIndex), scr_getPosByIndex(yRmIndex), square_obj);
        if (blockId != noone){
            with(blockId){
                instance_destroy();
            }
        }
    }
}
ds_list_destroy(allRemoveBlockList);
