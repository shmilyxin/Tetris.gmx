var controler = argument0;
var direct = argument1;
var activeShape = controler.activeShape;
if(!is_undefined(activeShape)&&ds_list_size(activeShape)>0){
   var length =  ds_list_size(activeShape);
   var collisionFlag = false;
    for(var i = 0;i<length;i++){
        var block = activeShape[|i];
        var nextStepX = block.x+30*direct;
        collisionFlag = scr_checkPointCollision(nextStepX,block.y,controler.allBlock2dArray);
        if(collisionFlag){
            break;
        }
   }
   if(!collisionFlag){
        for(var i = 0;i<length;i++){
            var block = activeShape[|i];
            block.x= block.x+30*direct;
        }
   }
}
