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
    NSMutableArray *arrayFuncionarios;
    NSFileManager *fileManager;
    NSString *fullPath;
    NSFileHandle *fileHandle;
    

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //UINavigationItem *item = [[UINavigationItem alloc] initWithTitle:@"Cadastro novo Funcionario"];
    self.title = @"Cadastro novo Funcionario";
    arrayFuncionarios = [NSMutableArray new];
    
   
    
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *filePath= [paths objectAtIndex:0];
    
    fileManager = [NSFileManager defaultManager];
    fileHandle = [NSFileHandle fileHandleForUpdatingAtPath:[filePath stringByAppendingPathComponent:@"mySuperSecretKey.txt"]];
    
    [fileManager changeCurrentDirectoryPath:filePath];
    fullPath = [NSString stringWithFormat:@"%@", [filePath stringByAppendingPathComponent:@"mySuperSecretKey.txt"]];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    LoginViewController *login;
    [login setArrayDadosLogin:arrayFuncionarios];
    
    
    [segue destinationViewController];
    
}

-(void) viewWillAppear:(BOOL)animated {
      [self.navigationController setNavigationBarHidden:NO
        animated:YES];
}
- (void)voltarParaLogin{
    NSString *login = @"Main";
 
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    LoginViewController * loginVC = [sb instantiateViewControllerWithIdentifier:login];
    
    [self presentViewController:loginVC animated:YES completion:nil];
}

- (IBAction)salvarButton:(id)sender
{
    
    Funcionario *funcionario = [Funcionario new];
    funcionario.nome = self.nomeField.text;
    funcionario.sobrenome = self.sobrenomeField.text;
    funcionario.email = self.emailFIeld.text;
    funcionario.senha = self.senhaField.text;
    funcionario.periodo = self.periodoField.text;
    
    [arrayFuncionarios addObject:funcionario];
    LoginViewController *loginVC = [LoginViewController new];
    
    funcionario.registroFuncionario = [NSMutableArray new];
    [funcionario.registroFuncionario addObject:funcionario];
    //[loginVC setArrayDadosLogin:arrayFuncionarios];
    loginVC.arrayDadosLogin = [NSMutableArray new];
    [loginVC setArrayDadosLogin:arrayFuncionarios];
    
    //tentativa de criar um arquivo para salvar a senha e o email.
    
    
    
    BOOL fileExist = [[NSFileManager defaultManager]fileExistsAtPath:fullPath];
    if (!fileExist) {
        [fileManager createFileAtPath:fullPath contents:nil attributes:nil];
        
    }
    NSString *userNameAndPasswordString = [NSString stringWithFormat:@"%@\n%@", self.emailFIeld.text, self.senhaField.text];
    
    fileHandle = [NSFileHandle fileHandleForUpdatingAtPath:fullPath];
    NSData *data;
    const char *bytesOfUserNameAndPassword = [userNameAndPasswordString UTF8String];
    data = [NSData dataWithBytes:bytesOfUserNameAndPassword length:strlen(bytesOfUserNameAndPassword)];
    [data writeToFile:fullPath atomically:YES];
    
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Atenção!" message:@"Os dados foram gravados com sucesso!" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil];
    [alert show];
    

    [self voltarParaLogin];
   
}

    
    
    
    


@end
