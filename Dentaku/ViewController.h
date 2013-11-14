//
//  ViewController.h
//  Dentaku
//
//  Created by 浦本　竜 on 13/10/17.
//  Copyright (c) 2013年 University of Kitakyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//0~9までのボタン
- (IBAction)NumberButton:(id)sender;

//演算子のボタン
- (IBAction)OperatorButton:(id)sender;

//=ボタン
- (IBAction)Epual:(id)sender;

//AllClearボタン
- (IBAction)AllClear:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *result;

@end
