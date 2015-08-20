//
//  FirstviewViewController.h
//  DemoTest
//
//  Created by Sanjeevareddy Nandela on 8/6/15.
//  Copyright (c) 2015 Sanjeevareddy Nandela. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondtableViewController.h"

@interface FirstviewViewController : UIViewController<UITextFieldDelegate,UIImagePickerControllerDelegate>{
    
}
@property (strong, nonatomic) IBOutlet UITextField* fld_first;
@property (strong, nonatomic) IBOutlet UITextField* fld_second;
@property (strong, nonatomic) IBOutlet UITextField* fld_third;
@property (strong, nonatomic) IBOutlet UITextField* fld_forth;

@property (strong, nonatomic) IBOutlet UIButton* Img_first;
@property (strong, nonatomic) IBOutlet UIButton* Img_Second;
@property (strong, nonatomic) IBOutlet UIButton* Img_Third;
@property (strong, nonatomic) IBOutlet UIButton* Img_forth;
@property (strong, nonatomic) IBOutlet UIButton* Btn_next;
@property (strong, nonatomic) IBOutlet NSString* Btn_tag;
//@property (assign, nonatomic) int Btn_tag;


@end
