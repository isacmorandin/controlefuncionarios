//
//  LoginViewController.h
//  controlefuncionarios
//
//  Created by Isac Morandin on 04/04/15.
//  Copyright (c) 2015 Curso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NovoFuncionarioViewController.h"

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *loginField;
@property (weak, nonatomic) IBOutlet UITextField *senhaField;
- (IBAction)enterButton:(id)sender;
- (IBAction)cadastreButton:(id)sender;

@end
