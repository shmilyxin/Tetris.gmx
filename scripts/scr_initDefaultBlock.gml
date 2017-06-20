var controler = argument0;
var str = "1,20,10;2,20,11;3,20,12";
var defaultBlockList = scr_splitToList(str,";");
for(var i = 0;i<ds_list_size(defaultBlockList);i++){
    var blockInfoStr = defaultBlockList[|i];
    var blockInfo = scr_splitToList(blockInfoStr,",");
    var xPos = scr_getPosByIndex(blockInfo[|0]);
    var yPos = scr_getPosByIndex(blockInfo[|1]);
    var key = blockInfo[|2];
    controler.allBlock2dArray[real(blockInfo[|1]),real(blockInfo[|0])] = real(key);
    scr_getBlockByKey(xPos,yPos,key);
}
