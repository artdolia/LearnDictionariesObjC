//
//  ADStudent.m
//  Lesson8HW
//
//  Created by A D on 12/13/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADStudent.h"

@implementation ADStudent

@synthesize studentName = _studentName;
@synthesize studentLastName = _studentLastName;
@synthesize studentGreeting = _studentGreeting;

-(NSString *) studentID{
    NSString *studentID = [NSString stringWithFormat: @"%@%@", self.studentName, self.studentLastName];
    return studentID;
}

-(NSString *) description{
    //NSString *description = @"student";
    NSString * description = [NSString stringWithFormat:@"%@, %@, %@", self.studentName, self.studentLastName, self.studentGreeting];
    return description;
}

#pragma mark - NSCopying -

- (id)copyWithZone:(NSZone *)zone{
    id copy = [[[self class] allocWithZone:zone] init];
    [copy setStudentName:[self studentName]];
    [copy setStudentGreeting:[self studentGreeting]];
    [copy setStudentLastName:[self studentLastName]];
    //[copy [self studentID]:[self studentID]];
    return copy;
}

@end
