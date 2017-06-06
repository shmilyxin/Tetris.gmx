globalvar instanceMap;//作为全局通用变量保存集合
instanceMap = ds_map_create();
enum shapeKey {
    OShape = 1,
    LLShape = 2,
    RLShape = 3,
    LZShape = 4,
    RZShape = 5,
    TShape = 6,
    IShape = 7,
    OtherShape = 8
}
enum shapeMode {
    N = 1,
    E = 2,
    S = 3,
    W = 4
}
