var str = argument0;
var array2d;
var splitOut = argument1;
var splitInside = argument2;
var returnArray ;
if(str!=""){
    var outsideArray= scr_splitToArray(str,splitOut);
    var height = array_length_1d(outsideArray);
    for(var i = 0;i<height;i++){
        var insideArray = scr_splitToArray(outsideArray[i],splitInside);
        var width = array_length_1d(insideArray);
        for(var j = 0;j<width;j++){
            returnArray[i,j] = insideArray[j];
        }
    }
}
return returnArray;
