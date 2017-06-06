var shapeKeyId = argument0;
var mode = argument1;
var xStart = argument2;
var yStart = argument3;
var returnArray ;
switch(shapeKeyId){
    case shapeKey.OShape : 
        var OShapeOffsetStr = "";
        if(mode == shapeMode.N){
            OShapeOffsetStr = "0,0;0,1;1,1;1,0";
        }else if(mode == shapeMode.E){
            OShapeOffsetStr = "0,1;1,1;1,0;0,0";
        }else if(mode == shapeMode.S){
            OShapeOffsetStr = "1,1;1,0;0,0;0,1";
        }else if(mode == shapeMode.W){
            OShapeOffsetStr = "1,0;0,0;0,1;1,1";
        }
        return scr_changeOffsetToPosArray(OShapeOffsetStr,xStart,yStart);
    break;
    case shapeKey.LLShape : 
        var LLShapeOffsetStr ="";
        if(mode == shapeMode.N){
            LLShapeOffsetStr = "0,-1;0,0;0,1;-1,1";
        }else if(mode == shapeMode.E){
            LLShapeOffsetStr = "1,0;0,0;-1,0;-1,-1";
        }else if(mode == shapeMode.S){
            LLShapeOffsetStr = "0,1;0,0;0,-1;1,-1";
        }else if(mode == shapeMode.W){
            LLShapeOffsetStr = "-1,0;0,0;1,0;1,1";
        }
        return scr_changeOffsetToPosArray(LLShapeOffsetStr,xStart,yStart);
    case shapeKey.RLShape :
         var RLShapeOffsetStr ="";
        if(mode == shapeMode.N){
            RLShapeOffsetStr = "0,-1;0,0;0,1;1,1";
        }else if(mode == shapeMode.E){
            RLShapeOffsetStr = "1,0;0,0;-1,0;-1,1";
        }else if(mode == shapeMode.S){
            RLShapeOffsetStr = "0,1;0,0;0,-1;-1,-1";
        }else if(mode == shapeMode.W){
            RLShapeOffsetStr = "-1,0;0,0;1,0;1,-1";
        }
        return scr_changeOffsetToPosArray(RLShapeOffsetStr,xStart,yStart);
    case shapeKey.LZShape :
        var LZShapeOffsetStr ="";
        if(mode == shapeMode.N){
            LZShapeOffsetStr = "0,-1;0,0;-1,0;-1,1";
        }else if(mode == shapeMode.E){
            LZShapeOffsetStr = "-1,0;0,0;0,1;1,1";
        }else if(mode == shapeMode.S){
            LZShapeOffsetStr = "-1,1;-1,0;0,0;0,-1";
        }else if(mode == shapeMode.W){
            LZShapeOffsetStr = "1,1;0,1;0,0;-1,0";
        }
        return scr_changeOffsetToPosArray(LZShapeOffsetStr,xStart,yStart);
    case shapeKey.RZShape :
        var RZShapeOffsetStr ="";
        if(mode == shapeMode.N){
            RZShapeOffsetStr = "0,-1;0,0;1,0;1,1";
        }else if(mode == shapeMode.E){
            RZShapeOffsetStr = "1,0;0,0;0,1;-1,1";
        }else if(mode == shapeMode.S){
            RZShapeOffsetStr = "1,1;1,0;0,0;0,-1";
        }else if(mode == shapeMode.W){
            RZShapeOffsetStr = "-1,1;0,1;0,0;1,0";
        }
        return scr_changeOffsetToPosArray(RZShapeOffsetStr,xStart,yStart);
    case shapeKey.TShape :
        var TShapeOffsetStr ="";
        if(mode == shapeMode.N){
            TShapeOffsetStr = "0,0;0,-1;0,1;1,0";
        }else if(mode == shapeMode.E){
            TShapeOffsetStr = "0,0;1,0;-1,0;0,1";
        }else if(mode == shapeMode.S){
            TShapeOffsetStr = "0,0;0,1;0,-1;-1,0";
        }else if(mode == shapeMode.W){
            TShapeOffsetStr = "0,0;-1,0;1,0;0,-1";
        }
        return scr_changeOffsetToPosArray(TShapeOffsetStr,xStart,yStart);
    case shapeKey.IShape :
        var RZShapeOffsetStr ="";
        if(mode == shapeMode.N){
            IShapeOffsetStr = "0,-1;0,0;0,1;0,2";
        }else if(mode == shapeMode.E){
            IShapeOffsetStr = "-1,0;0,0;1,0;2,0";
        }else if(mode == shapeMode.S){
            IShapeOffsetStr = "0,2;0,1;0,0;0,-1";
        }else if(mode == shapeMode.W){
            IShapeOffsetStr = "2,0;1,0;0,0;-1,0";
        }
        return scr_changeOffsetToPosArray(IShapeOffsetStr,xStart,yStart);
}

