var length = argument0;

var returnArray;

for(var i = 0;i<length;i++){
var repeateFlag = false;
do{
    var key = irandom_range(10,14);
    returnArray[i] = key;
    var count =0;
    for(var j = 0;j<array_length_1d(returnArray);j++ ){
        if(returnArray[j]==key){
            count++;
        }
    }
    if(count>2){
        repeateFlag = true;
    }else{
        repeateFlag = false;
    }
}until(repeateFlag==false);
}
return returnArray;
