//
//  ConcreteColleague1.m
//  MediatorDemo
//
//  Created by chentengfei on 16/4/28.
//  Copyright © 2016年 chentengfei. All rights reserved.
//

#import "ConcreteColleague1.h"

@implementation ConcreteColleague1

- (void)notifyWithMess:(NSString *)mess {
    
    NSLog(@"同事1 收到消息:%@", mess);
}

- (void)dealloc {
    
}

@end
