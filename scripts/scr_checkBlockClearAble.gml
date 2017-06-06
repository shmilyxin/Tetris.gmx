var valueArray = argument0;
var valueAbs = 0;
var clearAbleFlag = true;
if(valueArray[0]==0){
        clearAbleFlag = false;
        return clearAbleFlag;
}
for(var j = 1;j<array_length_1d(valueArray);j++){
    if(valueArray[j]==0){
        clearAbleFlag = false;
        break;
    }
    if(array_length_1d(valueArray)==3||array_length_1d(valueArray)==4){
        if(valueArray[j]-valueArray[j-1]!=0){
            clearAbleFlag = false;
            break;
        }
    }
    else if(array_length_1d(valueArray)==5){
        if(j==1&&valueArray[j]-valueArray[j-1] == 1||valueArray[j]-valueArray[j-1] ==-1){
            valueAbs = valueArray[j]-valueArray[j-1];
        }
        else if(valueArray[j]-valueArray[j-1]!=valueAbs){
            clearAbleFlag = false;
            break;
        }
    }
}

return clearAbleFlag;
