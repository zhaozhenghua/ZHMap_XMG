//
//  ZHMapEngine.h
//  ZHMap
//
//  Created by 赵正华 on 16/4/3.
//  Copyright © 2016年 赵正华. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IMapEngin.h"
#import "IMapView.h"

typedef NS_ENUM(NSInteger,ZHMapEngineType) {
    ZHMapEngineTypeBaidu = 0,
    ZHMapEngineTypeGaode
};
@interface ZHMapEngine : NSObject
+(ZHMapEngine *)shareInstance;
//配置引擎
-(id<IMapEngin>)configEngine :(ZHMapEngineType)mapEngineType appKey:(NSString *)appKey;

-(id <IMapView>)getMapViewWithFrame:(CGRect)frame;
@end
