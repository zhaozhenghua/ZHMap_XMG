# ZHMap_XMG
二次封装地图,含高德和百度地图
#How Use
  1.在AppDelegate初始化地图引擎
  //初始化我们的地图引擎
    [[ZHMapEngine shareInstance]configEngine:ZHMapEngineTypeGaode appKey:ZHMAP_GAODE_KEY];
     注:ZHMapEngineTypeGaode为地图引擎类型,可选择ZHMapEngineTypeGaode和ZHMapEngineTypeBaidu两种类型
        ZHMAP_GAODE_KEY为在对应开发者平台申请的appKey,填自己的即可;  ZHMAP_GAODE_KEY为高德地图的appKey,程序还提供ZHMAP_BAIDU_KEY百度的地图appKey
        
  2.在控制器中的viewDidLoad中实现以下步骤
     2.1  //创建地图视图mapView
   mapView = [[ZHMapEngine shareInstance]getMapViewWithFrame:self.view.bounds];
     2.2  //设置地图类型并添加到当前控制器的view中
    [mapView setMapType:ZHMapTypeStandard];
    [self.view addSubview:[mapView getMapView]];
