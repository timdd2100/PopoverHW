//
//  ViewController.m
//  PopoverHW
//
//  Created by timkao on 13/12/23.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import "ViewController.h"
#import "Popover.h"
#import "PopoverBySegue.h"
#import "customSegue.h"


@interface ViewController ()
{
    UIPopoverController *myPopoverView;
    
    PopoverBySegue *p;
}


@property (nonatomic, strong) UIPopoverController *detailViewPopover;

@property (nonatomic, strong) id lastTappedButton;//最後按的按鈕

@end

@implementation ViewController
@synthesize textView,lastTapData;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    Popover *content = [self.storyboard instantiateViewControllerWithIdentifier:@"Popover"];
    
    //委派
     content.delegate = self;
    
    //強制大小
    // self.detailViewPopover.popoverContentSize = CGSizeMake(320., 320.);
    
    self.detailViewPopover = [[UIPopoverController alloc] initWithContentViewController:content];
    
    //self.detailViewPopover.delegate = self;
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showPopover:(id)sender {
    
    //程式控制
    UIButton *tapbutton = (UIButton *)sender;
    
    
    [self.detailViewPopover presentPopoverFromRect:tapbutton.frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    
    self.lastTappedButton = sender;
    
}

#pragma mark - Popover controller delegates

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController
{
	// If a popover is dismissed, set the last button tapped to nil.
	self.lastTappedButton = nil;
}


#pragma mark - Popover delegate
-(void) returnFromPopup:(NSString *)popupData
{
    lastTapData  = popupData;
    
    [textView setText:popupData];
    
    [self.detailViewPopover dismissPopoverAnimated:YES];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"PopoverBySegue"])
    {
        myPopoverView = [(UIStoryboardPopoverSegue*)segue popoverController];
        
        
        
        
        
        
        
    }
}
- (IBAction)CustomSegueRun:(id)sender {
   
     p = [self.storyboard instantiateViewControllerWithIdentifier:@"PopoverBySegue"];
    
    customSegue *mySegue = [[customSegue alloc]initWithIdentifier:@"mySegue" source:self destination:p];
    
    [mySegue perform];
   }



@end
