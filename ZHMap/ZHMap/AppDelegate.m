//
//  AppDelegate.m
//  ZHMap
//
//  Created by 赵正华 on 16/4/3.
//  Copyright © 2016年 赵正华. All rights reserved.
//

#import "AppDelegate.h"
#import "ZHMapEngine.h"
#import "mapKey.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    /*
    一.新建工程,定义一个统一的地图协议
     1.定义协议:IMapView
     2.定义协议:IMapViewDelegate
    二.项目配置百度地图和高德地图
     1.配置百度地图
     2.配置高德地图
    三.实现基本的地图显示
       1.实现百度地图的封装
       2.实现高德地图的封装
     */
    
   //初始化我们的地图引擎
    [[ZHMapEngine shareInstance]configEngine:ZHMapEngineTypeGaode appKey:ZHMAP_GAODE_KEY];
    
    return YES;
}


@end
