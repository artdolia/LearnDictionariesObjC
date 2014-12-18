//
//  ADStudent.h
//  Lesson8HW
//
//  Created by A D on 12/13/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ADStudent : NSObject <NSCopying>

@property (strong, nonatomic) NSString *studentName;
@property (strong, nonatomic) NSString *studentLastName;
@property (strong, nonatomic) NSString *studentGreeting;

-(NSString *) studentID;

@end
