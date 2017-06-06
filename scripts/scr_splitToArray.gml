var str = argument0;
var splitRex = argument1;
var index = 0;
var length = string_length(str);
var array;
var i = 0;
while(index<length){
    var count = string_pos(splitRex, str);
    if(count>0){
        var strTemp = string_copy(str,0,count-1);
        array[i]=strTemp;
        str = string_copy(str,count+1,length-count);
        index = index+count;
    }else{
        array[i]=str;
        index = length;
    }
    i++;
}
return array;
