var array = argument0;
var thisObj = argument1;
var length =  array_length_1d(array);
for(var i = 0;i<length;i++){
    if(array[i] == thisObj){
        return true;
    }
}
return false;
