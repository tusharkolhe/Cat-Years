//
//  ViewController.m
//  Cat Years
//
//  Created by Felix ITs 04 on 07/09/16.
//  Copyright © 2016 Felix-ITs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)reset
{
    self.humanYeartxtfld.text=@"";
    self.outputlbl.text=@"";
    
}

-(void)cal
{
    float hy,cy;
    hy=self.humanYeartxtfld.text.intValue;
    
    if(hy>0)
    {

    cy= hy/7;
    self.outputlbl.text=[NSString stringWithFormat:@"Your age in cat years is:%0.2f",cy];
    }
    else{
        self.outputlbl.text=@"";
        UIAlertController *alert=[UIAlertController  alertControllerWithTitle:@"Attention Please!!!" message:@"Human Years must be greater than '0'" preferredStyle:UIAlertControllerStyleAlert];
        
        
        UIAlertAction *yesButton=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            
        }];
        
        
        [alert addAction:yesButton];
        [self presentViewController:alert animated:YES completion:nil];

            }
}


- (IBAction)resetbtn:(id)sender {
    
    [self reset];
}

- (IBAction)calculatebtn:(id)sender {
    [self cal];

}
@end
