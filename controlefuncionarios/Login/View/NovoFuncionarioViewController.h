//
//  NovoFuncionarioViewController.h
//  controlefuncionarios
//
//  Created by Isac Morandin on 05/04/15.
//  Copyright (c) 2015 Curso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Funcionario.h"
#import "LoginViewController.h"

@interface NovoFuncionarioViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nomeField;
@property (weak, nonatomic) IBOutlet UITextField *sobrenomeField;
@property (weak, nonatomic) IBOutlet UITextField *emailFIeld;
@property (weak, nonatomic) IBOutlet UITextField *senhaField;
@property (weak, nonatomic) IBOutlet UITextField *periodoField;


- (IBAction)salvarButton:(id)sender;





@end
