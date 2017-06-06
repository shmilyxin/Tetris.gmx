var controler = argument0;
var activeShapeMode = controler.activeShapeMode;
var activeShapeCode = controler.activeShapeCode;
var posArray;
var startPos = scr_getBaseStartPos(controler.activeShape,activeShapeCode,activeShapeMode);
    var startX = startPos[0];
    var startY = startPos[1];
    var leftOffsetX = startX-30;
    var rightOffsetX = startX+30;
    var offsetY = startPos[1];
    var leftOffsetCollision = scr_checkPointCollision(leftOffsetX,offsetY,controler.activeShape);
    var rightOffsetCollision = scr_checkPointCollision(rightOffsetX,offsetY,controler.activeShape);
    if(leftOffsetCollision&&!rightOffsetCollision){
        startX += 30;
    }else if(!leftOffsetCollision&&rightOffsetCollision){
        startX -= 30;
    }
    switch(activeShapeMode){
        case shapeMode.N:
        posArray = scr_getShapePos(activeShapeCode,shapeMode.E,startX,startY);
        controler.activeShapeMode = shapeMode.E;
        break;
        case shapeMode.E:
        posArray = scr_getShapePos(activeShapeCode,shapeMode.S,startX,startY);
        controler.activeShapeMode = shapeMode.S;
        break;
        case shapeMode.S:
        posArray = scr_getShapePos(activeShapeCode,shapeMode.W,startX,startY);
        controler.activeShapeMode = shapeMode.W;
        break;
        case shapeMode.W:
        posArray = scr_getShapePos(activeShapeCode,shapeMode.N,startX,startY);
        controler.activeShapeMode = shapeMode.N;
        break;
    }
var collisionFlag = false;
    for(var i = 0;i<array_height_2d(posArray);i++){
        collisionFlag = scr_checkPointCollision(posArray[i,0],posArray[i,1],controler.activeShape);
        if(collisionFlag){
            controler.activeShapeMode = activeShapeMode;
            break;
        }
    }
    if(!collisionFlag){
        for(var i = 0;i<array_height_2d(posArray);i++){
            controler.activeShape[i].x=posArray[i,0];
            controler.activeShape[i].y=posArray[i,1];
        }
    }
    
    return 0;
