//
//  ViewController.m
//  Hackopter
//
//  Created by Krzysztof Szczepaniak on 21/04/2013.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "HackopterSteeringManager.h"

@interface ViewController ()

@property (nonatomic, strong) HackopterSteeringManager *steeringManager;

@end

@implementation ViewController

@synthesize steeringManager = _steeringManager;
@synthesize powerSwitch;

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        _steeringManager = [[HackopterSteeringManager alloc] init];
    }
    return self;
}

#pragma mark - Target Action Methods
- (void)powerValueChanged:(UISwitch *)sender {
    [self.steeringManager powerOn:sender.on];
}

- (void)play:(id)sender {
    [self.steeringManager test];
}

#pragma mark - UI Initialization Methods

- (void)setupUI {
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:kBackgroundImage]];
    self.powerSwitch.onTintColor = [UIColor redColor];
}

- (void)viewDidLoad {
    [self setupUI];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

@end
