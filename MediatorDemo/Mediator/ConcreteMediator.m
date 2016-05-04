//
//  ConcreteMediator.m
//  MediatorDemo
//
//  Created by chentengfei on 16/4/28.
//  Copyright © 2016年 chentengfei. All rights reserved.
//

#import "ConcreteMediator.h"


@implementation ConcreteMediator

- (void)sendWithMess:(NSString *)message Colleague:(Colleague *)colleague {
    
    if (colleague == self.colleague1) {
        
        [self.colleague2 notifyWithMess:message];
    }
    
    if (colleague == self.colleague2) {
        
        [self.colleague1 notifyWithMess:message];
    }
}

#pragma mark - Getters & Setters
- (ConcreteColleague1 *)colleague1 {
    if (_colleague1 == nil) {
        _colleague1 = [[ConcreteColleague1 alloc] initWithMediator:self];
    }
    return _colleague1;
}

- (ConcreteColleague2 *)colleague2 {
    if (_colleague2 == nil) {
        _colleague2 = [[ConcreteColleague2 alloc] initWithMediator:self];
    }
    return _colleague2;
}

@end
