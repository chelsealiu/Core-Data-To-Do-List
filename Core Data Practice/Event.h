//
//  Event.h
//  Core Data Practice
//
//  Created by Chelsea Liu on 6/29/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Event : NSManagedObject

@property (nonatomic, retain) NSString * insideTaskName;
@property (nonatomic, retain) NSString * priority;
@property (nonatomic, retain) NSString * taskDescription;
@property (nonatomic, retain) NSString * taskName;
@property (nonatomic, retain) NSDate * createdDate;
@property (nonatomic, retain) NSNumber * completed;

@end
