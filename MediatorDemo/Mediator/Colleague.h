//
//  Colleague.h
//  MediatorDemo
//
//  Created by chentengfei on 16/4/28.
//  Copyright © 2016年 chentengfei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Mediator.h"

/**
 *  同事类的协议
 */
@protocol Colleague <NSObject>

@required
- (void)notifyWithMess:(NSString *)mess;

- (void)sendWithMess:(NSString *)mess;
@end

/**
 *  抽象同事类
 */
@interface Colleague : NSObject<Colleague>

@property (nonatomic, weak) Mediator *mediator;

- (instancetype)initWithMediator:(Mediator *)mediator;


@end
