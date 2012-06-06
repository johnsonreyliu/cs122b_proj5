//
//  PickerViewController.m
//  test
//
//  Created by Johnson Liu on 6/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import "PickerViewController.h"

@implementation PickerViewController

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView{
    return 1;
    //return 3 for 3 components, etc...
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component{
    return [list count];
}

- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{

return [list objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{

NSLog(@"selected item: %@ index of selected item %i", [list objectAtIndex:row], row);
}


- (void)viewDidLoad{
[super viewDidLoad];


list = [[NSMutableArray alloc] init];
[list addObject:@"Light bulb"];
[list addObject:@"orange"];
    

}


//- (void)dealloc{
//
//[list release];
//[super dealloc];
//
//}

@end
