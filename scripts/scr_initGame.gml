var controler = argument0;
ds_map_add(global.instanceMap,'controler',controler);
var allBlock2dArray;
for(var i = 1;i<21;i++){
    for(var j = 1;j<11;j++){
        allBlock2dArray[i,j] = 0;
    }
}

controler.allBlock2dArray = allBlock2dArray;
scr_initDefaultBlock(controler);
controler.activeShapeCode = irandom_range(1,7);
controler.activeShapeMode = 1;
var blockArray = scr_getShape(controler.activeShapeCode,controler.activeShapeMode,scr_getPosByIndex(5),scr_getPosByIndex(1));
ds_list_clear(controler.activeShape);
for(var i=0;i<array_length_1d(blockArray);i++){
    ds_list_add(controler.activeShape,blockArray[i]);
}

controler.nextShapeCode = irandom_range(1,7);
scr_initNextShape(controler);
controler.alarm[0] = controler.gameSpeed;
