//
//  ConcreteMediator.h
//  MediatorDemo
//
//  Created by chentengfei on 16/4/28.
//  Copyright © 2016年 chentengfei. All rights reserved.
//

#import "Mediator.h"

#import "ConcreteColleague1.h"
#import "ConcreteColleague2.h"

/**
 *  具体中介者类
 */
@interface ConcreteMediator : Mediator

@property (nonatomic, strong) ConcreteColleague1 * colleague1;
@property (nonatomic, strong) ConcreteColleague2 * colleague2;

@end
