//
//  Programming_DemoViewController.m
//  email_json_parsing
//
//  Created by Sam on 24/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#define MAX_LENGTH 6

#import "Programming_DemoViewController.h"

@interface Programming_DemoViewController ()

@end

@implementation Programming_DemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    if(email.delegate!=self)
//    {
//        //lbl.text=@"Please enter value in field";
//        //NSLog(@"Please enter value in field");
//    }
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)click
{
    //email.text=@"maftabsabir@gmail.com";
    //password.text= @"";
    //cnfpassword.text= @"";
    //NSString *str1= [[NSString alloc] initWithString:email.text];
    //NSString *str2 = [[NSString alloc] initWithString:password.text];
    //NSString *str3= [[NSString alloc] initWithString:cnfpassword.text];
   
    int strlen2=password.text.length;
    int strlen3=cnfpassword.text.length;
    if ([email.text isEqualToString:@""]) {
        [self addAlertView1];
    }
    
     else if ([ password.text isEqualToString:@""]) {
       
        [self addAlertView2];
    }
//     else{
//         if (strlen2>6) {
//             
//             [self addAlertView4];
//         }
//     }
    
     else
     {
   
        if ([cnfpassword.text isEqualToString:@""]) {
            [self addAlertView3];
        }
         
         else if (strlen2>6) {
             
        [self addAlertView4];
             
         }
    
        else{
     
         if (strlen3>6)
         {
         
        [self addAlertView5];
             
         }
     }
}
//        else{
//            if (strlen3>6) {
//               
//                [self addAlertView5];
//            }
//        }
//     }
        //[cnfpassword.text isEqualToString:@""];
        //NSLog(@"Please enter confirm password");
        //lbl1.text=@"Please enter confirm Password";
        //[self addAlertView];
   
   
    //NSLog(@"%@",str11);
    //int strlen2=password.text.length;
    //int strlen3=cnfpassword.text.length;
//    if (strlen2>6) {
////        //NSLog(@"please enter enter a password within 6 digits");
////        //lbl1.text=@"please enter enter a password within 6 digits";
//         [self addAlertView4];
//    }
//    if (strlen3>6) {
////       //lbl1.text=@"please enter enter a password within 6 digits";
//         [self addAlertView5];
//    }
    BOOL equal = [password.text isEqualToString:cnfpassword.text];
     //NSLog(@"%d",equal);
    if ((strlen2<=6)&&(strlen3<=6)) {
   
    if (equal) {
        lbl2.text=@"Both passwords are equal";
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:500];
        [array addObject:email.text];
        [array addObject:password.text];
        [array addObject:cnfpassword.text];
        NSArray *keys = [NSArray arrayWithObjects:@"Email", @"Password", @"cnfpassword", nil];
        //NSArray *values = [string componentsSeparatedByString:@","];
        NSMutableDictionary  *myDetails = [NSMutableDictionary dictionaryWithObjects:array
                                                              forKeys:keys];
        NSLog(@"loans: %@", myDetails);
        str11= [myDetails objectForKey:@"Email"];
        str22= [myDetails objectForKey:@"Password"];
         NSLog(@"email: %@", str11);
         NSLog(@"password: %@", str22);
       

    }
    else
    {
           lbl2.text=@"Both passwords are not equal";
    }
    }
    else{
        lbl2.text=@"One or Both passwords are not within 6 digits";
    }
}


-(void)textFieldDidBeginEditing:(UITextField *)textField{
   NSLog(@"Text field begin editing");
}

// This method is called once we complete editing
-(void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"Text field ended editing");
   
    
  
}

// This method enables or disables the processing of return key
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"textFieldShouldReturn:");
    
    if (textField.tag == 1) {
        UITextField *passwordTextField = (UITextField *)[self.view viewWithTag:2];
        [passwordTextField becomeFirstResponder];
    }
    else if(textField.tag == 2){
        UITextField *passwordTextField = (UITextField *)[self.view viewWithTag:3];
        [passwordTextField becomeFirstResponder];
    }
    
        [textField resignFirstResponder];
   
    return YES;
}

-(void)addAlertView1{
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:
                              @"!Error" message:@"Please fill an email id" delegate:self
                                             cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
}
- (void)alertView1:(UIAlertView *)alertView clickedButtonAtIndex:
(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
           // NSLog(@"Cancel button clicked");
            break;
        case 1:
            NSLog(@"OK button clicked");
            break;
            
        default:
            break;
    }
}
-(void)addAlertView2{
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:
                              @"!Error" message:@"Please fill password" delegate:self
                                             cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
}
- (void)alertView2:(UIAlertView *)alertView clickedButtonAtIndex:
(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            // NSLog(@"Cancel button clicked");
            break;
        case 1:
            NSLog(@"OK button clicked");
            break;
            
        default:
            break;
    }
}
-(void)addAlertView3{
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:
                              @"!Error" message:@"Please fill confirm password" delegate:self
                                             cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
}
- (void)alertView3:(UIAlertView *)alertView clickedButtonAtIndex:
(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            // NSLog(@"Cancel button clicked");
            break;
        case 1:
            NSLog(@"OK button clicked");
            break;
            
        default:
            break;
    }
}
-(void)addAlertView4{
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:
                              @"!Error" message:@"Password should be within 6 digits" delegate:self
                                             cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
}
- (void)alertView4:(UIAlertView *)alertView clickedButtonAtIndex:
(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            // NSLog(@"Cancel button clicked");
            break;
        case 1:
            NSLog(@"OK button clicked");
            break;
            
        default:
            break;
    }
}
-(void)addAlertView5{
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:
                              @"!Error" message:@"Password should be within 6 digits" delegate:self
                                             cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
}
- (void)alertView5:(UIAlertView *)alertView clickedButtonAtIndex:
(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            // NSLog(@"Cancel button clicked");
            break;
        case 1:
            NSLog(@"OK button clicked");
            break;
            
        default:
            break;
    }
}



@end
