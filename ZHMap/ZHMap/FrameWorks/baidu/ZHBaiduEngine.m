//
//  ZHBaiduEngine.m
//  ZHMap
//
//  Created by 赵正华 on 16/4/3.
//  Copyright © 2016年 赵正华. All rights reserved.
//

#import "ZHBaiduEngine.h"
#import "ZHBaiDuMapView.h"
#import <BaiduMapAPI_Map/BMKMapComponent.h>



@interface ZHBaiduEngine ()
{
    BMKMapManager *manager;

}
@end
@implementation ZHBaiduEngine

-(instancetype)initWithApKey:(NSString *)key{
    if (self = [super init]) {
        manager = [[BMKMapManager alloc]init];
        
        [manager start:key generalDelegate:nil];
    }
    return self;
}
-(id<IMapView>)createMapViewWithFrame:(CGRect)frame{
    return [[ZHBaiDuMapView alloc]initWithFrame:frame];
}
@end
