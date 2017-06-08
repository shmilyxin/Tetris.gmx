var array = argument0;
var count = argument1;
var splitRex = argument2;
var str ="";
for(var i =0;i<count;i++){
    if(i==0){
       str+=string(array[i]);
    }else{
       str+=splitRex+string(array[i]);
    }
}
return str;
