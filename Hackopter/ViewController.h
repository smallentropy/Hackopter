//
//  ViewController.h
//  Hackopter
//
//  Created by Krzysztof Szczepaniak on 21/04/2013.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UISwitch *powerSwitch;

- (IBAction)powerValueChanged:(id)sender;
- (IBAction)play:(id)sender;

@end
