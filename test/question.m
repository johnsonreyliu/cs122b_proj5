//
//  question.m
//  test
//
//  Created by Johnson Liu on 6/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "question.h"

@implementation question


@synthesize uniqueID, title, star_first_name, star_last_name, director, year;

-(id) initWithUniqueId:(int)uniqueId name:(NSString *)name address:(NSString *)address{
    self = [super init];
    if(self){
        self.uniqueID = uniqueID;
        self.title = title;
        self.star_first_name = star_first_name;
        self.star_last_name = star_last_name;
        self.director = director;
        self.year = year;
    }
    return self;
}

-(void)dealloc{
    self.title = nil;
    self.star_last_name = nil;
    self.star_first_name = nil;
    self.director = nil;
    self.year = nil;
    
    [super dealloc];
}

@end
