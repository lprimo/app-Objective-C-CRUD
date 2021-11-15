//
//  ContatoDao.m
//  AgendaContatos
//
//  Created by MAC on 15/11/21.
//

#import "ContatoDao.h"

@implementation ContatoDao

static ContatoDao *defaultDao = nil;

- (id) init {
    self = [super init];
    if(self){
        self.contatos = [NSMutableArray new];
    }
    return self;
}

+ (ContatoDao *) contatoDaoInstance {
    if (!defaultDao) {
        defaultDao = [ContatoDao new];
    }
    return defaultDao;
}

- (void) adicionaContato:(Contato *)contato {
    [self.contatos addObject:contato];
}

- (void) removeContato:(Contato *)contato {
    [self.contatos removeObject:contato];
}
- (NSInteger)total {
    return self.contatos.count;
}

- (Contato *) contatoIndex: (NSInteger) index {
    return self.contatos[index];
}

-(NSInteger) indexContato:(Contato *)contato {
    return [self.contatos indexOfObject:contato];
}

@end
