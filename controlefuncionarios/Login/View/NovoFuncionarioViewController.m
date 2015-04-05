//
//  NovoFuncionarioViewController.m
//  controlefuncionarios
//
//  Created by Isac Morandin on 05/04/15.
//  Copyright (c) 2015 Curso. All rights reserved.
//

#import "NovoFuncionarioViewController.h"

@interface NovoFuncionarioViewController ()


@end

@implementation NovoFuncionarioViewController {

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //UINavigationItem *item = [[UINavigationItem alloc] initWithTitle:@"Cadastro novo Funcionario"];
    self.title = @"Cadastro novo Funcionario";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void) viewWillAppear:(BOOL)animated {
      [self.navigationController setNavigationBarHidden:NO
        animated:YES];
}


- (IBAction)salvarButton:(id)sender {
}

- (IBAction)cancelarButton:(id)sender {
   
    
}

@end
