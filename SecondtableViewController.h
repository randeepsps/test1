//
//  SecondtableViewController.h
//  DemoTest
//
//  Created by Sanjeevareddy Nandela on 8/6/15.
//  Copyright (c) 2015 Sanjeevareddy Nandela. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SecondtableViewController : UIViewController<UITableViewDataSource,UITableViewDataSource>{
    
}

@property (strong, nonatomic) IBOutlet NSString* Str_first;
@property (strong, nonatomic) IBOutlet NSString* Str_second;
@property (strong, nonatomic) IBOutlet NSString* Str_third;
@property (strong, nonatomic) IBOutlet NSString* Str_forth;

@property (strong, nonatomic) IBOutlet UIImage* Img_one;
@property (strong, nonatomic) IBOutlet UIImage* Img_two;
@property (strong, nonatomic) IBOutlet UIImage* Img_three;
@property (strong, nonatomic) IBOutlet UIImage* Img_four;
@property (strong, nonatomic) IBOutlet UIImage* Btn_next;
@property (strong, nonatomic) IBOutlet UITableView* tableview;
//@property (strong, nonatomic) IBOutlet NSString* Btn_tag;

@end
