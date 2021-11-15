//
//  ContatoDao.h
//  AgendaContatos
//
//  Created by MAC on 15/11/21.
//

#import <Foundation/Foundation.h>
#import "Contato.h"

@interface ContatoDao : NSObject

@property NSMutableArray *contatos;

- (void) adicionaContato: (Contato *) contato;
- (NSInteger) total;
- (Contato *) contatoIndex: (NSInteger) index;
+ (ContatoDao *) contatoDaoInstance;
- (void) removeContato: (Contato *) contato;
-(NSInteger) indexContato: (Contato *)contato;

@end
