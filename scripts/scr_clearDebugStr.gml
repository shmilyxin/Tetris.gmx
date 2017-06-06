var debug = global.instanceMap[? "debug"];
ds_list_destroy(debug.strList);
debug.strList = ds_list_create();
