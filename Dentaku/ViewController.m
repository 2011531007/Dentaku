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
NSInteger EnableOperator = 0;
NSInteger EnableEquale = 0;
NSInteger EnableDot = 0;

/*ナンバーボタンの仕様*/
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
    self.Box1 = _result.text.floatValue;
            EnableOperator = 0;
            EnableEquale = 0;
}

/*ドットボタンの仕様*/
- (IBAction)DotButton:(id)sender {
    if(EnableDot == 0){
       _result.text = [NSString stringWithFormat:@"%@.", _result.text];
        InitialState = 1;
            EnableDot = 1;
    }
}

/*演算子ボタンの仕様*/
- (IBAction)OperatorButton:(id)sender {
    UIButton *operator = (UIButton *)sender;
    if(EnableOperator == 0){
         if(OpratorInitialState == 1){
        [self calculation];
         }else{
    self.Box2 = self.Box1;  //数字保持
    InitialState = 0;
    OpratorInitialState = 1;
         }
    self.Operator = operator.tag;
        EnableOperator = 1; //連続で演算子を押せなくなる
        EnableEquale = 1;
        EnableDot = 0;
    }
}

/*イコールボタンの仕様*/
- (IBAction)Epual:(id)sender {
    if(EnableEquale == 0){
    [self calculation];
    self.Box1 = self.Box2;
    OpratorInitialState = 0;
    EnableOperator = 0;
    EnableEquale = 1;
    EnableDot = 0;

    }
}

/*オールクリアボタンの仕様*/
- (IBAction)AllClear:(id)sender {
    _result.text = [NSString stringWithFormat:@"0"];
    InitialState = 0;
    self.Box1 = 0;
    self.Box2 = 0;
    OpratorInitialState = 0;
    EnableOperator = 0;
    EnableEquale = 0;
    EnableDot = 0;
}

/*計算機能*/
-(void)calculation{
    if(self.Operator == 0){         //足し算
        NSLog(@"Box1:%g\nBox2:%g",self.Box1,self.Box2);
        self.Box2 += self.Box1;
    }else if(self.Operator == 1){   //引き算
        self.Box2 -= self.Box1;
    }else if(self.Operator == 2){   //かけ算
        self.Box2 *= self.Box1;
    }else if(self.Operator == 3){   //割り算
        self.Box2 /= self.Box1;
    }
     _result.text = [NSString stringWithFormat:@"%g", self.Box2];
    
    InitialState = 0;
};

@end
