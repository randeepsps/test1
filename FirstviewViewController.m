//
//  FirstviewViewController.m
//  DemoTest
//
//  Created by Sanjeevareddy Nandela on 8/6/15.
//  Copyright (c) 2015 Sanjeevareddy Nandela. All rights reserved.
//

#import "FirstviewViewController.h"

@interface FirstviewViewController ()

@end

@implementation FirstviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.Btn_tag = nil;
    self.Img_first.tag = 1;
    self.Img_Second.tag = 2;
    self.Img_Third.tag = 3;
    self.Img_forth.tag = 4;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma - mark TextField Delegate Methods
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
//    UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"TextField Begin Editing Method Called!" message:nil delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
//    [alertView show];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
//    UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"TextField End Editing Method Called!" message:nil delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
//    [alertView show];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"TextField Should Return Method Called!" message:nil delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alertView show];
    [textField resignFirstResponder];
    
    return YES;
    
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    
    int length = textField.text.length - range.length + string.length;
    if(length > 1000)
    {
        return NO;
    }
    return YES;
}


-(IBAction)Btn_Action:(id)sender{
    
    UIButton* Btn_sender = (UIButton*)sender;
    
    if (sender == self.Btn_next) {
        SecondtableViewController* Secondview = nil;
        
         Secondview = [[SecondtableViewController alloc] initWithNibName:@"SecondtableViewController" bundle:nil];
        
        if (![self.fld_first.text isEqualToString:@""]) {
            Secondview.Str_first = self.fld_first.text;
        }
        if (![self.fld_second.text isEqualToString:@""]) {
            Secondview.Str_second = self.fld_second.text;
        }
        if (![self.fld_third.text isEqualToString:@""]) {
            Secondview.Str_third = self.fld_third.text;
        }
        if (![self.fld_forth.text isEqualToString:@""]) {
            Secondview.Str_forth = self.fld_forth.text;
        }
        UIImage *image1 = self.Img_first.currentBackgroundImage;
        UIImage *image2 = self.Img_Second.currentBackgroundImage;
        UIImage *image3 = self.Img_Third.currentBackgroundImage;
        UIImage *image4 = self.Img_forth.currentBackgroundImage;
        
        if (image1 != nil) {
            Secondview.Img_one = image1;
        }
        if (image2 != nil) {
            Secondview.Img_two = image2;
        }
        if (image3 != nil) {
           Secondview.Img_three = image3;
        }
        if (image4 != nil) {
            Secondview.Img_four = image4;
        }
        
        //[self presentModalViewController:self.Secondview animated:YES];
        
        [self presentViewController:Secondview animated:YES completion:nil];
    }
    else {
        self.Btn_tag = [NSString stringWithFormat:@"%ld",(long)Btn_sender.tag];
                UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
                imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
                imagePickerController.delegate = self;
                [self presentViewController:imagePickerController animated:YES completion:nil];
    }
}

// This method is called when an image has been chosen from the library or taken from the camera.
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    //You can retrieve the actual UIImage
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    //Or you can get the image url from AssetsLibrary
    NSURL *path = [info valueForKey:UIImagePickerControllerReferenceURL];
    if ([self.Btn_tag isEqualToString:@"1"]) {
        [self.Img_first setBackgroundImage:image forState:UIControlStateNormal];
    }else if ([self.Btn_tag isEqualToString:@"2"]) {
        [self.Img_Second setBackgroundImage:image forState:UIControlStateNormal];
    }
    else if ([self.Btn_tag isEqualToString:@"3"]) {
        [self.Img_Third setBackgroundImage:image forState:UIControlStateNormal];
    }
    else if ([self.Btn_tag isEqualToString:@"4"]) {
        [self.Img_forth setBackgroundImage:image forState:UIControlStateNormal];
    }
   
    [picker dismissViewControllerAnimated:YES completion:^{
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
