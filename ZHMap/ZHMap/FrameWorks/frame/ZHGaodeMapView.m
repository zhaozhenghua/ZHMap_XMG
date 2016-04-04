//
//  ZHGaodeMapView.m
//  ZHMap
//
//  Created by 赵正华 on 16/4/3.
//  Copyright © 2016年 赵正华. All rights reserved.
//

#import "ZHGaodeMapView.h"
#import <MAMapKit/MAMapKit.h>

@interface ZHGaodeMapView ()<MAMapViewDelegate>{
    
    MAMapView *mapView;
   
}

@end
@implementation ZHGaodeMapView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super init]) {
        mapView = [[MAMapView alloc]initWithFrame:frame];
    }
    return self;
}
-(UIView *)getMapView{
    return mapView;
}
-(void)setDelegate:(id<ZHMapViewDelegate>)delegate{
    if (delegate) {
        mapView.delegate = self;
    }else{
        mapView.delegate = nil;
    }
    
}

//地图类型
-(void)setMapType:(ZHMapType)mapType{
    if (mapType == ZHMapTypeSatellite) {
        mapView.mapType = MAMapTypeSatellite;
    }else if(mapType == ZHMapTypeStandard){
        mapView.mapType = MAMapTypeStandard;
    }
}
-(ZHMapType)getMapType{
    return ZHMapTypeStandard;
}

//设定地图是否打开路况图层
-(void)setTrafficEnabled:(BOOL)isTrafficEnabled{
    mapView.showTraffic = isTrafficEnabled;
}
-(BOOL)isTrafficEnabled{
    return mapView.showTraffic;
}

//设定地图View能否支持用户移动地图
-(void)setScrollEnabled:(BOOL)isScrollEnabled{
    mapView.scrollEnabled = isScrollEnabled;
}
-(BOOL)isScrollEnabled{
    return mapView.scrollEnabled;
}

//是否显示当前位置
-(void)setShowUserLocation:(BOOL)isShowsUserLocation{
    mapView.showsUserLocation = isShowsUserLocation;
    
}
-(BOOL)isShowsUserLocation{
    return mapView.showsUserLocation;
}
@end
