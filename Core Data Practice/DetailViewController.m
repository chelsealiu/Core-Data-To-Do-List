//
//  DetailViewController.m
//  Core Data Practice
//
//  Created by Chelsea Liu on 6/29/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item



- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self configureView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


- (void)configureView {

    if (self.event) {
        
        self.detailTextField.text = [[self.event valueForKey:@"taskDescription"] description];
        self.insideTitleTextField.text = [[self.event valueForKey:@"insideTaskName"] description];
        self.priorityLabel.text = [[self.event valueForKey:@"priority"] description];
        self.dateLabel.text = [[self.event valueForKey:@"createdDate"] description];
        self.completionSegment.selectedSegmentIndex =[[self.event valueForKey:@"completed"] integerValue];
    
    }
}

- (IBAction)saveData:(id)sender {
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
    NSDate *dateFromString = [dateFormat dateFromString:self.dateLabel.text];
    
    self.event.insideTaskName = self.insideTitleTextField.text;
    self.event.priority = self.priorityLabel.text;
    self.event.taskDescription = self.detailTextField.text;
    self.event.createdDate = dateFromString;
    self.event.completed = self.taskCompletionNumber;
    self.event.taskName = self.insideTitleTextField.text;
    
    NSError *error = nil;
    if (![self.event.managedObjectContext save:&error]) {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)completionSegment:(UISegmentedControl *)sender {
    
    NSInteger selectedSegment = sender.selectedSegmentIndex;
    
    if (selectedSegment == 0) {
        self.taskCompletionNumber = [NSNumber numberWithBool:NO]; //0, aka completed (YES) in terms of segment index
        
    } else if (selectedSegment == 1) {
        self.taskCompletionNumber = [NSNumber numberWithBool:YES]; //1, aka not completed (NO) in terms of segment index 
    
    }
    
}


@end
