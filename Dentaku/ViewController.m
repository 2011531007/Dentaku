//
//  ViewController.m
//  Dentaku
//
//  Created by 浦本　竜 on 13/10/17.
//  Copyright (c) 2013年 University of Kitakyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

NSInteger InitialState = 0;

- (IBAction)NumberButton:(id)sender {
    UIButton *b = (UIButton *)sender;
    if(InitialState == 0){  
        if(b.tag == 0){ 
        return;
        }else{ 
    _result.text = [NSString stringWithFormat:@"%d", b.tag]; 
            InitialState = 1; 
        }
    }else{
    _result.text = [NSString stringWithFormat:@"%@%d", _result.text, b.tag];
    }
}

- (IBAction)OperatorButton:(id)sender {
    UIButton *o = (UIButton *)sender;
    /*(if(o.tag = 0){
    
    }
        
    
  */  
}

- (IBAction)Epual:(id)sender {
    
    
    
    
    
}

- (IBAction)AllClear:(id)sender {
    
    
    
    
    
}
@end
