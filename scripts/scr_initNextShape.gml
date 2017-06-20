var controler = argument0;
var nextBlockArray = scr_getShape(controler.nextShapeCode,1,scr_getPosByIndex(14),scr_getPosByIndex(3));
for(var i=0;i<ds_list_size(controler.nextShape);i++){
    var block = controler.nextShape[|i];
    with(block){
        instance_destroy();
    }
}
ds_list_clear(controler.nextShape);
for(var i=0;i<array_length_1d(nextBlockArray);i++){
    ds_list_add(controler.nextShape,nextBlockArray[i]);
}
