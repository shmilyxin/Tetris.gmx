/**
 根据数字取得对应方块
**/
var key = argument0;
if(is_string(key)){
    key = real(key);
}
switch(key){
    case 10 : return ten_obj;
    case 11 : return J_obj;
    case 12 : return Q_obj;
    case 13 : return K_obj;
    case 14 : return A_obj;
}

