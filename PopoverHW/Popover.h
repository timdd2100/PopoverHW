//
//  Popover.h
//  PopoverHW
//
//  Created by timkao on 13/12/23.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol PopPassData <NSObject>
@required
-(void) returnFromPopup:(NSString*) popupData;
@end

//----------------------

@interface Popover : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) id delegate;
@property  (strong, nonatomic) NSString  *popData;
@property (strong, nonatomic) IBOutlet UITextField *popField;

@end
