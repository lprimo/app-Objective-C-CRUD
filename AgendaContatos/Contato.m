//
//  Contato.m
//  AgendaContatos
//
//  Created by MAC on 10/11/21.
//

#import "Contato.h"

@implementation Contato

- (NSString *)description {
    return [NSString stringWithFormat:@"\r Nome: %@\r Endereco: %@\r E-mail: %@\r Site: %@\r Telefone: %@", self.nome, self.endereco, self.email, self.site, self.telefone];
}

@end
