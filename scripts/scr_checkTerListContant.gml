var teriList = argument0;
var obj = argument1;
for(var i=0;i<ds_list_size(teriList);i++){
    var thisObj = teriList[|i];
    if(thisObj==obj){
        return true;
    }
}
return false;
