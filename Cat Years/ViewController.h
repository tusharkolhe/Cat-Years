//
//  ViewController.h
//  Cat Years
//
//  Created by Felix ITs 04 on 07/09/16.
//  Copyright © 2016 Felix-ITs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *humanYeartxtfld;

- (IBAction)resetbtn:(id)sender;
- (IBAction)calculatebtn:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *outputlbl;

@end

