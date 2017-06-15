var controler = argument0;
var direct = argument1;
var activeShape = controler.activeShape;
if(!is_undefined(activeShape)){
   var length =  array_length_1d(activeShape);
   var collisionFlag = false;
    for(var i = 0;i<length;i++){
        var block = activeShape[i];
        var nextStepX = block.x+30*direct;
        collisionFlag = scr_checkPointCollision(nextStepX,block.y,controler.allBlock2dArray);
        if(collisionFlag){
            break;
        }
   }
   if(!collisionFlag){
        for(var i = 0;i<length;i++){
            var block = activeShape[i];
            block.x= block.x+30*direct;
        }
   }
}
