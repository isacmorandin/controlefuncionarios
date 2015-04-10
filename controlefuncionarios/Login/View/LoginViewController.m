//
//  LoginViewController.m
//  controlefuncionarios
//
//  Created by Isac Morandin on 04/04/15.
//  Copyright (c) 2015 Curso. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
   
}
*/

-(void) viewWillAppear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:YES
                                             animated:YES];
    self.arrayDadosLogin = [NSMutableArray new];
}

- (void) irParaCadastro {
    NSString *login = @"Main";
    NSString *novoFuncionario = @"novoFuncionario";
    UIStoryboard *sb = [UIStoryboard storyboardWithName:login bundle:nil];
    NovoFuncionarioViewController * novoVC = [sb instantiateViewControllerWithIdentifier:novoFuncionario];
  
[self presentViewController:novoVC animated:YES completion:nil];
}

- (IBAction)enterButton:(id)sender

{
    
    for (Funcionario *funcionario in self.arrayDadosLogin ) {
        
    
    if ([self.loginField.text isEqualToString:funcionario.email] && [self.senhaField.text isEqualToString:funcionario.senha]) {
        
        NSLog(@"Deu certo");
       
        
    } else
        NSLog(@"Nao deu certo");
    
    
        
    
        }
}


- (IBAction)cadastreButton:(id)sender {
    [self irParaCadastro];
    
    
}
@end
