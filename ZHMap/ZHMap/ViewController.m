//
//  ViewController.m
//  ZHMap
//
//  Created by 赵正华 on 16/4/3.
//  Copyright © 2016年 赵正华. All rights reserved.
//

#import "ViewController.h"
#import "ZHMapEngine.h"

@interface ViewController (){

    id<IMapView>mapView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   mapView = [[ZHMapEngine shareInstance]getMapViewWithFrame:self.view.bounds];
    //设置地图类型
    [mapView setMapType:ZHMapTypeStandard];
    [self.view addSubview:[mapView getMapView]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
