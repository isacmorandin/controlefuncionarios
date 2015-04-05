//
//  Funcionario.h
//  controlefuncionarios
//
//  Created by Isac Morandin on 04/04/15.
//  Copyright (c) 2015 Curso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Funcionario : NSObject
@property (strong, nonatomic) NSString *nome;
@property (strong, nonatomic) NSString *sobrenome;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *senha;
@property (strong, nonatomic) NSString *periodo;

@property (strong, nonatomic) NSMutableArray *registroFuncionario;

@end
