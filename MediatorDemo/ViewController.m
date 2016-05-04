//
//  ViewController.m
//  MediatorDemo
//
//  Created by chentengfei on 16/4/28.
//  Copyright © 2016年 chentengfei. All rights reserved.
//

#import "ViewController.h"

#import "ConcreteMediator.h"

@interface ViewController ()

@property (nonatomic, strong) ConcreteMediator *mediator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.mediator = [[ConcreteMediator alloc] init];
    
    [self.mediator.colleague1 sendWithMess:@"1的消息, 吃了吗?"];
    [self.mediator.colleague2 sendWithMess:@"2的消息, 还没,要请客吗?"];
}

- (IBAction)btnClick:(id)sender {

    // 通过colleague1的dealloc测试循环引用问题
    self.mediator = nil;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
