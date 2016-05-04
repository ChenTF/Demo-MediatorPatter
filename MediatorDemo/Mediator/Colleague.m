//
//  Colleague.m
//  MediatorDemo
//
//  Created by chentengfei on 16/4/28.
//  Copyright © 2016年 chentengfei. All rights reserved.
//

#import "Colleague.h"

@implementation Colleague

- (instancetype)initWithMediator:(Mediator *)mediator {
    self = [super init];
    if (self) {
        self.mediator = mediator;
    }
    
    return self;
}


#pragma mark - Colleague
- (void)notifyWithMess:(NSString *)mess {
    
}

- (void)sendWithMess:(NSString *)mess {
    
    [self.mediator sendWithMess:mess Colleague:self];
}

@end
