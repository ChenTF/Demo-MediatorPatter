//
//  Mediator.h
//  MediatorDemo
//
//  Created by chentengfei on 16/4/28.
//  Copyright © 2016年 chentengfei. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Colleague;

/**
 *  抽象中介者
 */
@interface Mediator : NSObject

- (void)sendWithMess:(NSString *)message Colleague:(Colleague *)colleague;


@end
