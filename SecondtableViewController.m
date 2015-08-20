//
//  SecondtableViewController.m
//  DemoTest
//
//  Created by Sanjeevareddy Nandela on 8/6/15.
//  Copyright (c) 2015 Sanjeevareddy Nandela. All rights reserved.
//

#import "SecondtableViewController.h"

#define FONT_SIZE 14.0f
#define CELL_CONTENT_WIDTH 320.0f
#define CELL_CONTENT_MARGIN 10.0f
@interface SecondtableViewController ()

@end

@implementation SecondtableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//#params tableview delegate


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{

    switch (indexPath.section) {
        case 0:{
            //Coupon
            switch (indexPath.row) {
                case 0:{
                    
//                        NSString *text = self.Str_first;//[items objectAtIndex:[indexPath row]];
//                    
//                        CGSize constraint = CGSizeMake(CELL_CONTENT_WIDTH - (CELL_CONTENT_MARGIN * 2), 20000.0f);
//                    
//                        CGSize size = [text sizeWithFont:[UIFont systemFontOfSize:FONT_SIZE] constrainedToSize:constraint lineBreakMode:UILineBreakModeWordWrap];
//                        
//                        CGFloat height = MAX(size.height, 44.0f);
                    NSString *string = self.Str_first;
                   // CGSize size = [stringToSize  sizeWithFont:[UIFont systemFontOfSize:13.0f] constrainedToSize:CGSizeMake(300, 5000) lineBreakMode:UILineBreakModeWordWrap];
                    CGSize size = [string sizeWithFont:[UIFont systemFontOfSize:20]
                                  constrainedToSize:CGSizeMake(self.view.bounds.size.width - 40,     CGFLOAT_MAX)  // - 40 For cell padding
                                      lineBreakMode:NSLineBreakByWordWrapping];
                   CGFloat rowHeight = size.height+10;

                    return rowHeight;
                }break;
                case 1:{
                    NSString *text = self.Str_first;//[items objectAtIndex:[indexPath row]];
                    
                    CGSize constraint = CGSizeMake(CELL_CONTENT_WIDTH - (CELL_CONTENT_MARGIN * 2), 20000.0f);
                    
                    CGSize size = [text sizeWithFont:[UIFont systemFontOfSize:FONT_SIZE] constrainedToSize:constraint lineBreakMode:UILineBreakModeWordWrap];
                    
                    CGFloat height = MAX(size.height, 44.0f);
                    
                    return height;

                }break;
                case 2:{
                    NSString *text = self.Str_first;//[items objectAtIndex:[indexPath row]];
                    
                    CGSize constraint = CGSizeMake(CELL_CONTENT_WIDTH - (CELL_CONTENT_MARGIN * 2), 20000.0f);
                    
                    CGSize size = [text sizeWithFont:[UIFont systemFontOfSize:FONT_SIZE] constrainedToSize:constraint lineBreakMode:UILineBreakModeWordWrap];
                    
                    CGFloat height = MAX(size.height, 44.0f);
                    
                    return height;

                }break;
                case 3:{
                    NSString *text = self.Str_first;//[items objectAtIndex:[indexPath row]];
                    
                    CGSize constraint = CGSizeMake(CELL_CONTENT_WIDTH - (CELL_CONTENT_MARGIN * 2), 20000.0f);
                    
                    CGSize size = [text sizeWithFont:[UIFont systemFontOfSize:FONT_SIZE] constrainedToSize:constraint lineBreakMode:UILineBreakModeWordWrap];
                    
                    CGFloat height = MAX(size.height, 44.0f);
                    
                    return height;

                }break;
            }
        }
    }
    
    return 100;//height + (CELL_CONTENT_MARGIN * 2);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    static NSString *FirstLevelCell= @"FirstLevelCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:FirstLevelCell];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:FirstLevelCell];
    }
    
    //UILabel* lbl_text = [[UILabel alloc] initWithFrame:CGRectMake(70.0f, 5.0f, self.view.frame.size.width-80.0f, <#CGFloat height#>)]
    switch (indexPath.section) {
        case 0:{
            //Coupon
            switch (indexPath.row) {
                case 0:{
                    cell.textLabel.text = self.Str_first;
                    cell.textLabel.numberOfLines=0;
                    cell.imageView.image = self.Img_one;
                }break;
                case 1:{
                    cell.textLabel.text = self.Str_second;
                    cell.imageView.image = self.Img_two;
                    cell.textLabel.numberOfLines=0;
                }break;
                case 2:{
                    cell.textLabel.text = self.Str_third;
                    cell.imageView.image = self.Img_three;
                    cell.textLabel.numberOfLines=0;
                }break;
                case 3:{
                    cell.textLabel.text = self.Str_forth;
                    cell.imageView.image = self.Img_four;
                    cell.textLabel.numberOfLines=0;
                }break;
            }
        }
    }
    
                    
                    
                    
                    
                    
//    switch([indexPath section]){
//        case 0:
//        {
//          cell.textLabel.text = self.Str_first;
//            cell.imageView.image = self.Img_one;
//        }
//            break;
//        case 1:{
//            cell.textLabel.text = self.Str_second;
//            cell.imageView.image = self.Img_two;
//        }
//            break;
//        case 2:{
//            cell.textLabel.text = self.Str_third;
//            cell.imageView.image = self.Img_three;
//        }
//            break;
//        case 3:{
//            cell.textLabel.text = self.Str_forth;
//            cell.imageView.image = self.Img_four;
//            
//        }
//         break;
//    }
//    cell.textLabel.text = controller.title;
//    cell.imageView.image = controller.rowImage;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    NSString *continent = [self tableView:tableView titleForHeaderInSection:indexPath.section];
//    NSString *country = [[self.countries valueForKey:continent] objectAtIndex:indexPath.row];
//    
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[NSString stringWithFormat:@"You selected %@!", country] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//    [alert show];
//    [alert release];
//    
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
