//
//  IMapEngin.h
//  ZHMap
//
//  Created by 赵正华 on 16/4/3.
//  Copyright © 2016年 赵正华. All rights reserved.

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "IMapView.h"

@protocol IMapEngin <NSObject>

-(instancetype)initWithApKey:(NSString *)key;

-(id <IMapView>)createMapViewWithFrame:(CGRect)frame;

@end
