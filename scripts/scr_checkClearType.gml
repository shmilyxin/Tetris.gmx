var clearTypeStr = argument0;
var allBlockArray = argument1;
var type  = argument2;
var baseBlockX = argument3;
var baseBlockY = argument4;
var clearArrays = argument5;
var baseBlockValue = allBlockArray[baseBlockY,baseBlockX];
var clearType = scr_splitToArray(clearTypeStr,",");//
    var total = 0;
    var clearArray ;
    var valueArray;
    clearArray[0] = baseBlockX;
    clearArray[1] = baseBlockY;
    clearArray[2] = baseBlockValue;
    clearArray[3] = clearTypeStr;
    clearArray[4] = type;
    clearArray[5] = "";
    for(var j = 0;j<array_length_1d(clearType);j++){
        var indexX = 0;
        var indexY = 0;
      
        if(type == 0){
            indexX = real(baseBlockX)+real(clearType[j]);
            indexY = baseBlockY;
            
        }else if(type == 1){
            indexX = baseBlockX;
            indexY = real(baseBlockY)+real(clearType[j]);
            
        }
        
        if(indexX>0&&indexX<11&&indexY>0&&indexY<21){
            if(j!=0){
                clearArray[5] +=";";
            }
            clearArray[5] += string(indexX)+"_"+string(indexY);
            valueArray[j] = allBlockArray[indexY,indexX];
        }else{
            valueArray[j] = 0;
        }
    }
    if(scr_checkBlockClearAble(valueArray)){
        ds_list_add(clearArrays,clearArray);
        return 0;
    }
