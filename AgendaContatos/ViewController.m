//
//  ViewController.m
//  AgendaContatos
//
//  Created by MAC on 10/11/21.
//

#import "ViewController.h"
#import "Contato.h"

@implementation ViewController

-(id)initWithCoder: (NSCoder *) aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self){
        self.dao = [ContatoDao contatoDaoInstance];
    }
    return self;
}
-(void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *botao = nil;
    if (self.contato) {
        botao = [[UIBarButtonItem alloc] initWithTitle:@"Alterar" style:UIBarButtonItemStylePlain target:self action:@selector(altera)];
        self.navigationItem.title = @"Editar contato";
    }else {
        botao = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style:UIBarButtonItemStylePlain target:self action:@selector(adiciona)];
        self.navigationItem.title = @"Novo contato";
    }
    
    self.navigationItem.rightBarButtonItem = botao;
    
    if (self.contato) {
        self.nome.text = self.contato.nome;
        self.endereco.text = self.contato.endereco;
        self.email.text = self.contato.email;
        self.telefone.text = self.contato.telefone;
        self.site.text = self.contato.site;
    }
}

-(void) adiciona {
    self.contato = [Contato new];
    
    [self dadosFormulario];
    [self.dao  adicionaContato:self.contato];
    
    [self.navigationController popViewControllerAnimated:YES];
    
    [self.delegate contatoAdicionado: self.contato];
}
-(void) altera {
    [self dadosFormulario];
    
    [self.navigationController popViewControllerAnimated:YES];
    
    [self.delegate contatoAtualizado: self.contato];
}

-(void) dadosFormulario {
    self.contato.nome = self.nome.text;
    self.contato.endereco = self.endereco.text;
    self.contato.email = self.email.text;
    self.contato.telefone = self.telefone.text;
    self.contato.site = self.site.text;
}

@end
