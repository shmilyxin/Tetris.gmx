var str = argument0;
var splitRex = argument1;
var index = 0;
var length = string_length(str);
var list = ds_list_create();

while(index<length){
    var count = string_pos(splitRex, str);
    if(count>0){
        var strTemp = string_copy(str,0,count-1);
        ds_list_add(list,strTemp);
        str = string_copy(str,count+1,length-count);
        index = index+count;
    }else{
        ds_list_add(list,str);
        index = length;
    }
    
}
return list;
   
