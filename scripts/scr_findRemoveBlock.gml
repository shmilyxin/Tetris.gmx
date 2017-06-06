/**
查找单元格周围可消除格子
clearArray[0] X坐标
clearArray[1] Y坐标
clearArray[2] 方格值
clearArray[3] 消除类型
clearArray[4] 消除方向 0为横 1为纵
clearArray[5] 坐标字符串 用来作为比较 X Y坐标之间用"_"分隔 每个坐标之间用";"分隔
**/

var baseBlockX = argument0;
var baseBlockY = argument1;
var allBlockArray = argument2;

var allClearTypeStr = "0,1,2,3,4;-1,0,1,2,3;-2,-1,0,1,2;-3,-2,-1,0,1;-4,-3,-2,-1,0;0,1,2,3;-1,0,1,2;-2,-1,0,1;-3,-2,-1,0;0,1,2;-1,0,1;-2,-1,0";
var allClearType = scr_splitToArray(allClearTypeStr,";");
var clearArrays = ds_list_create();;
for(var i = 0;i<array_length_1d(allClearType);i++){
    scr_checkClearType(allClearType[i],allBlockArray,0,baseBlockX,baseBlockY,clearArrays);
}
for(var i = 0;i<array_length_1d(allClearType);i++){
    scr_checkClearType(allClearType[i],allBlockArray,1,baseBlockX,baseBlockY,clearArrays);
}

return clearArrays;
