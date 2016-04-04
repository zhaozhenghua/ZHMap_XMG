//
//  ZHMapEngine.m
//  ZHMap
//
//  Created by 赵正华 on 16/4/3.
//  Copyright © 2016年 赵正华. All rights reserved.
//

#import "ZHMapEngine.h"
#import "ZHBaiduEngine.h"
#import "ZHBaiDuMapView.h"

#import "ZHGaodeEngine.h"
#import "ZHGaodeMapView.h"

static ZHMapEngine *shareObj = nil;


@interface ZHMapEngine ()
@property ZHMapEngineType type;

@property (nonatomic,strong)NSArray *engineArray;
@property (nonatomic,strong)NSArray *mapViewArray;
@end
@implementation ZHMapEngine
//0x00007fe86af21bf0

-(instancetype)init{
    if (self = [super init]) {
        self.engineArray = [NSArray arrayWithObjects:@"ZHBaiduEngine",@"ZHGaodeEngine", nil];
        self.mapViewArray = [NSArray arrayWithObjects:@"ZHBaiDuMapView",@"ZHGaodeMapView", nil];
    }
    return self;
}
+(ZHMapEngine *)shareInstance{
    @synchronized(self) {
        if (shareObj == nil) {
            shareObj = [[ZHMapEngine alloc]init];
        }
    }
    return shareObj;
}
//配置引擎
-(id<IMapEngin>)configEngine :(ZHMapEngineType)mapEngineType appKey:(NSString *)appKey{
    
    self.type = mapEngineType;
//    if (mapEngineType == ZHMapEngineTypeBaidu) {
//        return [[ZHBaiduEngine alloc]initWithApKey:appKey];
//    }else if(mapEngineType == ZHMapEngineTypeGaode){
//        return [[ZHGaodeEngine alloc]initWithApKey:appKey];
//    }
//    return nil;
    return [[NSClassFromString(self.engineArray[self.type]) alloc]initWithApKey:appKey];
}

-(id <IMapView>)getMapViewWithFrame:(CGRect)frame{
    
//    if (self.type == ZHMapEngineTypeBaidu) {
//        return [[ZHBaiDuMapView alloc]initWithFrame:frame];
//        
//    }else if( self.type == ZHMapEngineTypeGaode){
//        return [[ZHGaodeMapView alloc]initWithFrame:frame];
//    }
//    return nil;
    return [[NSClassFromString(self.mapViewArray[self.type]) alloc]initWithFrame:frame];
}

@end
