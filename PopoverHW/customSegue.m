//
//  customSegue.m
//  PopoverHW
//
//  Created by timkao on 13/12/24.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import "customSegue.h"

@interface customSegue()
{
    UIViewController *temp;
}

@end

@implementation customSegue

- (void) perform
{
    UIViewController *src  = (UIViewController *)self.sourceViewController;
    UIViewController *dest = (UIViewController *)self.destinationViewController;
    
    [src presentViewController:dest animated:YES completion:^{
        temp = dest;
        [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(showConsole) userInfo:Nil repeats:false];
        
    }];
  }


-(void)showConsole
{
    [temp dismissViewControllerAnimated:YES completion:^{
        NSLog(@"disappear!!");
    }];
}


@end
