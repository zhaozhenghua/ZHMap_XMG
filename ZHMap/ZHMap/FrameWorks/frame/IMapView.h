//
//  IMapView.h
//  ZHMap
//
//  Created by 赵正华 on 16/4/3.
//  Copyright © 2016年 赵正华. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ZHMapViewDelegate.h"
#import "IMapView.h"



typedef NS_ENUM(NSInteger, ZHMapType)
{
    ZHMapTypeStandard = 0,  // 普通地图
    ZHMapTypeSatellite,  // 卫星地图
    ZHMapTypeStandardNight // 夜间视图
};

//定义的IMapView协议
@protocol IMapView <NSObject>

-(void)setDelegate:(id<ZHMapViewDelegate>)delegate;

//地图类型
-(void)setMapType:(ZHMapType)mapType;
-(ZHMapType)getMapType;

//设定地图是否打开路况图层
-(void)setTrafficEnabled:(BOOL)isTrafficEnabled;
-(BOOL)isTrafficEnabled;

//设定地图View能否支持用户移动地图
-(void)setScrollEnabled:(BOOL)isScrollEnabled;
-(BOOL)isScrollEnabled;

//是否显示当前位置
-(void)setShowUserLocation:(BOOL)isShowsUserLocation;
-(BOOL)isShowsUserLocation;

-(UIView *)getMapView;
@end
