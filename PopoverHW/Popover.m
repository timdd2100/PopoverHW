//
//  Popover.m
//  PopoverHW
//
//  Created by timkao on 13/12/23.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import "Popover.h"


@interface Popover ()

@end

@implementation Popover
@synthesize delegate,popData,popField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma -mark --keyboard dismiss

//-(void)textFieldDidEndEditing:(UITextField *)textField
//{
//    [self.view endEditing:YES];
//}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //[textField resignFirstResponder];
    popData = popField.text;
    [self.view endEditing:YES];
    return YES;
}

- (IBAction)popDone:(id)sender {
    popData = popField.text;
    [[self delegate] returnFromPopup:popData];
}

@end
