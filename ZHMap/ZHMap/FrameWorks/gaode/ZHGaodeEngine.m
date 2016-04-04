//
//  ZHGaodeEngine.m
//  ZHMap
//
//  Created by 赵正华 on 16/4/3.
//  Copyright © 2016年 赵正华. All rights reserved.
//

#import "ZHGaodeEngine.h"
#import "ZHGaodeMapView.h"
#import <MAMapKit/MAMapKit.h>

@implementation ZHGaodeEngine


-(instancetype)initWithApKey:(NSString *)key{
    if (self = [super init]) {
        [MAMapServices sharedServices].apiKey = key;
    }
    return self;
}
-(id<IMapView>)createMapViewWithFrame:(CGRect)frame{

    return [[ZHGaodeMapView alloc]initWithFrame:frame];
}
@end
