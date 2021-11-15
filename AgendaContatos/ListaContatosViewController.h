//
//  ListaContatosViewController.h
//  AgendaContatos
//
//  Created by MAC on 11/11/21.
//

#import <UIKit/UIKit.h>
#import "ContatoDao.h"
#import "ViewController.h"

@interface ListaContatosViewController: UITableViewController<ViewControllerDelegate>

@property ContatoDao *dao;
@property Contato *contatoSelecionado;
@property NSInteger linhaSelecionada;

@end

