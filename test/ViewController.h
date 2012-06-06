//
//  ViewController.h
//  test
//
//  Created by Johnson Liu on 6/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *seconds;
    NSTimer *timer;
    
    int MainInt;
    
}
-(IBAction)start:(id)sender;
-(void)countup;

@property (weak, nonatomic) IBOutlet UILabel *timer;

@end
