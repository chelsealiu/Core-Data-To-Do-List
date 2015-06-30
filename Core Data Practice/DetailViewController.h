//
//  DetailViewController.h
//  Core Data Practice
//
//  Created by Chelsea Liu on 6/29/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"

@interface DetailViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *insideTitleTextField;

@property (weak, nonatomic) IBOutlet UITextView *detailTextField;

@property (weak, nonatomic) IBOutlet UITextField *priorityLabel;

@property (strong, nonatomic) Event *event;

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@property (strong, nonatomic) NSNumber *taskCompletionNumber;

@property (weak, nonatomic) IBOutlet UISegmentedControl *completionSegment;


@end

