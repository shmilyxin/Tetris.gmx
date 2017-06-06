var key = argument0;
var mode = argument1;
var xStart = argument2;
var yStart = argument3;
if(is_string(key)){
    key = real(key);
}
switch(key){
    case shapeKey.OShape : return scr_createOShape(mode,xStart,yStart);
    case shapeKey.LLShape : return scr_createLLShape(mode,xStart,yStart);
    case shapeKey.RLShape : return scr_createRLShape(mode,xStart,yStart);
    case shapeKey.LZShape : return scr_createLZShape(mode,xStart,yStart);
    case shapeKey.RZShape : return scr_createRZShape(mode,xStart,yStart);
    case shapeKey.TShape : return scr_createTShape(mode,xStart,yStart);
    case shapeKey.IShape : return scr_createIShape(mode,xStart,yStart);
}
