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
    //these variables are for the timer
    IBOutlet UILabel *seconds;
    NSTimer *timer;
    int MainInt;
    
    //these are for the picker
    IBOutlet UIPickerView *pickerView;
    NSMutableArray *arrayColors;
    
}
-(IBAction)start:(id)sender;
-(void)countup;

@property (weak, nonatomic) IBOutlet UILabel *timer;

@end
