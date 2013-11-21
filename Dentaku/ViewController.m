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
NSInteger OpratorInitialState = 0;

- (IBAction)NumberButton:(id)sender {
    UIButton *number = (UIButton *)sender;
    if(InitialState == 0){
        if(number.tag == 0){
        return;
        }else{ 
    _result.text = [NSString stringWithFormat:@"%d", number.tag];
            InitialState = 1; 
        }
    }else{
    _result.text = [NSString stringWithFormat:@"%@%d", _result.text, number.tag];
            }
    self.Box1 = _result.text.intValue;
    
   /* if(OpratorInitialState ==1)
    OpratorInitialState = 2;*/
}

- (IBAction)OperatorButton:(id)sender {
    UIButton *operator = (UIButton *)sender;
    self.Box2 = self.Box1;  //数字保持
    self.Operator = operator.tag;   //
    InitialState = 0;
    /*OpratorInitialState = 1;
    
    if(OpratorInitialState == 2){
        if(self.Operator == 0){         //足し算
            self.Box2 += self.Box1;
        }else if(self.Operator == 1){   //引き算
            self.Box2 -= self.Box1;
        }else if(self.Operator == 2){   //かけ算
            self.Box2 *= self.Box1;
        }else if(self.Operator == 3){   //割り算
            self.Box2 /= self.Box1;
        }
        _result.text = [NSString stringWithFormat:@"%d", self.Box2];
    }*/
}

- (IBAction)Epual:(id)sender {
   if(self.Operator == 0){         //足し算
        NSLog(@"Box1:%d\nBox2:%d",self.Box1,self.Box2);
        self.Box2 += self.Box1;
    }else if(self.Operator == 1){   //引き算
        self.Box2 -= self.Box1;
    }else if(self.Operator == 2){   //かけ算
        self.Box2 *= self.Box1;        
    }else if(self.Operator == 3){   //割り算
        self.Box2 /= self.Box1;        
    }
        _result.text = [NSString stringWithFormat:@"%d", self.Box2];

    InitialState = 0;
}

- (IBAction)AllClear:(id)sender {
    _result.text = [NSString stringWithFormat:@"0"];
    InitialState = 0;
}
@end
