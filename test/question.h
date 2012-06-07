//
//  question.h
//  test
//
//  Created by Johnson Liu on 6/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface question : NSObject
{
    int uniqueID;
    NSString *title;
    NSString *star_first_name;
    NSString *star_last_name;
    NSString *director;
    NSString *year;
}

@property (nonatomic, assign)int uniqueID;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *star_first_name;
@property (nonatomic, copy) NSString *star_last_name;
@property (nonatomic, copy) NSString *director;
@property (nonatomic, copy) NSString *year;

@property (strong) NSString *question;
@property (strong) NSString *answer;
@property (strong) NSString *wrongAnswer1;
@property (strong) NSString *wrongAnswer2;
@property (strong) NSString *wrongAnswer3;

-(id) initWithUniqueId:(int)uniqueId name:(NSString *)name address:(NSString *)address;

@end
