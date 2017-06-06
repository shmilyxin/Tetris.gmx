var allRemoveBlockList = argument0;
var block = argument1;
var controler = argument2;
var xIndex = scr_getIndexByPos(block.x);
var yIndex = scr_getIndexByPos(block.y);
var thisVal = controler.allBlock2dArray[yIndex,xIndex];
var removeBlockList = scr_findRemoveBlock(xIndex,yIndex,controler.allBlock2dArray);
if(ds_list_size(removeBlockList)>0){
    for(var i = 0;i<ds_list_size(removeBlockList);i++){
       var containFlag = false;
       removeBlockArray = removeBlockList[|i];
       for(var j = 0;j<ds_list_size(allRemoveBlockList);j++){
            removeBlockArrayOther = allRemoveBlockList[|j];
            if(removeBlockArray[5] == removeBlockArrayOther[5]){
                containFlag = true;
                break;
            }
       }
       if(!containFlag){
            ds_list_add(allRemoveBlockList,removeBlockArray);
       }
    }
}
ds_list_destroy(removeBlockList);
