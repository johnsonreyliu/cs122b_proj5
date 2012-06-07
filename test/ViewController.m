//
//  ViewController.m
//  test
//
//  Created by Johnson Liu on 6/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController





//timer
-(void)countup {
    MainInt += 1;
    seconds.text = [NSString stringWithFormat:@"%i", MainInt];
}


//timer
-(IBAction)start:(id)sender {
    MainInt = 0;
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countup) userInfo:nil repeats:YES];
}

@synthesize timer = _timer;
//@synthesize questionLabel;

/////////////////////////////picker view
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
    
    
    questionLabel.text=@"test question";
    
    
    
}

//////////////////text view






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//	// Do any additional setup after loading the view, typically from a nib.
//}

- (void)viewDidUnload
{
    [self setTimer:nil];
    questionLabel = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
