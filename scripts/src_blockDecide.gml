var controler = argument0;
var decideBlocks = argument1;


for(var i=0;i<ds_list_size(decideBlocks);i++){
    var block = decideBlocks[|i];
    var xIndex = scr_getIndexByPos(block.x);
    var yIndex = scr_getIndexByPos(block.y);
    controler.allBlock2dArray[yIndex,xIndex]=block.value;
}
var allRemoveBlockList = ds_list_create();
for(var i=0;i<ds_list_size(decideBlocks);i++){
    scr_findRemoveBlockList(allRemoveBlockList,decideBlocks[|i],controler);
}
for(var i=0;i<ds_list_size(allRemoveBlockList);i++){
    var removeArray = allRemoveBlockList[|i];
    var removeBlockStr = removeArray[5];
    var blockListArray = scr_splitToArray(removeBlockStr,";");
    for(var j = 0;j<array_length_1d(blockListArray);j++){
        pos = scr_splitToArray(blockListArray[j],"_");
        controler.allBlock2dArray[ pos[1], pos[0]] = 0;
        var blockId = scr_getBlockByPos(pos);
        if (blockId != noone){
            with(blockId){
                instance_destroy();
            }
        }
    }
}
ds_list_destroy(decideBlocks);
ds_list_destroy(allRemoveBlockList);
