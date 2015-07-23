//
//  Programming_DemoViewController.h
//  email_json_parsing
//
//  Created by Sam on 24/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Programming_DemoViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>
{
    IBOutlet UIButton *btn;
    IBOutlet UITextField *email;
    IBOutlet UITextField *password;
   IBOutlet UITextField *cnfpassword;
    IBOutlet UILabel *lbl1;
     IBOutlet UILabel *lbl2;
    //UITextField *passwordTextField;
    UITextField *pass;
    NSString *str11;
    NSString *str22;
    NSString *str33;
}
//@property (weak, nonatomic) IBOutlet UITextField *jsonSummary;
-(IBAction)click;

@end
