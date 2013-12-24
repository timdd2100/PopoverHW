//
//  ViewController.h
//  PopoverHW
//
//  Created by timkao on 13/12/23.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Popover.h"

@interface ViewController : UIViewController<UIPopoverControllerDelegate, PopPassData>
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (strong,nonatomic) NSString *lastTapData;
@end
