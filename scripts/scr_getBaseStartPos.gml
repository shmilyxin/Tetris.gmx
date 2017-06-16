var activeShape = argument0;
var shapeKeyId = argument1;
var mode = argument2;
var returnArray ;
switch(shapeKeyId){
    case shapeKey.OShape : 
        if(mode == shapeMode.N){
            returnArray[0]= activeShape[|0].x;
            returnArray[1]= activeShape[|0].y;
        }else if(mode == shapeMode.E){
            returnArray[0]= activeShape[|3].x;
            returnArray[1]= activeShape[|3].y;
        }else if(mode == shapeMode.S){
            returnArray[0]= activeShape[|2].x;
            returnArray[1]= activeShape[|2].y;
        }else if(mode == shapeMode.W){
            returnArray[0]= activeShape[|1].x;
            returnArray[1]= activeShape[|1].y;
        }
        return returnArray;
    break;
    case shapeKey.LLShape : 
        
        if(mode == shapeMode.N){
            returnArray[0]= activeShape[|1].x;
            returnArray[1]= activeShape[|1].y;
        }else if(mode == shapeMode.E){
            returnArray[0]= activeShape[|1].x;
            returnArray[1]= activeShape[|1].y;
        }else if(mode == shapeMode.S){
            returnArray[0]= activeShape[|1].x;
            returnArray[1]= activeShape[|1].y;
        }else if(mode == shapeMode.W){
            returnArray[0]= activeShape[|1].x;
            returnArray[1]= activeShape[|1].y;
        }
        return returnArray;
    case shapeKey.RLShape :
        if(mode == shapeMode.N){
            returnArray[0]= activeShape[|1].x;
            returnArray[1]= activeShape[|1].y;
        }else if(mode == shapeMode.E){
            returnArray[0]= activeShape[|1].x;
            returnArray[1]= activeShape[|1].y;
        }else if(mode == shapeMode.S){
            returnArray[0]= activeShape[|1].x;
            returnArray[1]= activeShape[|1].y;
        }else if(mode == shapeMode.W){
            returnArray[0]= activeShape[|1].x;
            returnArray[1]= activeShape[|1].y;
        }
        return returnArray;
    case shapeKey.LZShape :
        if(mode == shapeMode.N){
            returnArray[0]= activeShape[|1].x;
            returnArray[1]= activeShape[|1].y;
        }else if(mode == shapeMode.E){
            returnArray[0]= activeShape[|1].x;
            returnArray[1]= activeShape[|1].y;
        }else if(mode == shapeMode.S){
            returnArray[0]= activeShape[|2].x;
            returnArray[1]= activeShape[|2].y;
        }else if(mode == shapeMode.W){
            returnArray[0]= activeShape[|2].x;
            returnArray[1]= activeShape[|2].y;
        }
        return returnArray;
    case shapeKey.RZShape :
        if(mode == shapeMode.N){
            returnArray[0]= activeShape[|1].x;
            returnArray[1]= activeShape[|1].y;
        }else if(mode == shapeMode.E){
            returnArray[0]= activeShape[|1].x;
            returnArray[1]= activeShape[|1].y;
        }else if(mode == shapeMode.S){
            returnArray[0]= activeShape[|2].x;
            returnArray[1]= activeShape[|2].y;
        }else if(mode == shapeMode.W){
            returnArray[0]= activeShape[|2].x;
            returnArray[1]= activeShape[|2].y;
        }
        return returnArray;
    case shapeKey.TShape :
        if(mode == shapeMode.N){
            returnArray[0]= activeShape[|0].x;
            returnArray[1]= activeShape[|0].y;
        }else if(mode == shapeMode.E){
            returnArray[0]= activeShape[|0].x;
            returnArray[1]= activeShape[|0].y;
        }else if(mode == shapeMode.S){
            returnArray[0]= activeShape[|0].x;
            returnArray[1]= activeShape[|0].y;
        }else if(mode == shapeMode.W){
            returnArray[0]= activeShape[|0].x;
            returnArray[1]= activeShape[|0].y;
        }
        return returnArray;
    case shapeKey.IShape :
        if(mode == shapeMode.N){
            returnArray[0]= activeShape[|1].x;
            returnArray[1]= activeShape[|1].y;
        }else if(mode == shapeMode.E){
            returnArray[0]= activeShape[|1].x;
            returnArray[1]= activeShape[|1].y;
        }else if(mode == shapeMode.S){
            returnArray[0]= activeShape[|2].x;
            returnArray[1]= activeShape[|2].y;
        }else if(mode == shapeMode.W){
            returnArray[0]= activeShape[|2].x;
            returnArray[1]= activeShape[|2].y;
        }
        return returnArray;
}

