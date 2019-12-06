//
//  ViewController.m
//  AnimationDemo
//
//  Created by wayou on 12/6/19.
//  Copyright © 2019 wayou. All rights reserved.
//

#import "AnimationDemo-Swift.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  // test swfit method
  Foo *foo = [Foo new];
  [foo greeting];

  CGSize screenSize = self.view.frame.size;
  CGFloat cubeSize = 50.0f;
  SpringView *springView = [[SpringView alloc]
      initWithFrame:CGRectMake((screenSize.width - cubeSize) / 2,
                               (screenSize.height - cubeSize) / 2, cubeSize, cubeSize)];
  springView.backgroundColor = [UIColor redColor];
  springView.animation = @"flipX";
  springView.autostart = YES;
  springView.duration = 3.0f;
  springView.repeatCount = INFINITY;
  [springView animate];
  [self.view addSubview:springView];
}

@end
