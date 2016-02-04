//
//  ViewController.m
//  Lecture7
//
//  Created by 2 on 2/2/16.
//  Copyright © 2016 123. All rights reserved.
//

#import "ViewController.h"
#import "VCViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated. Этот метод делегата. Можем узнать по методу на сколько проблемно с памятью в приложении. В нем же можно убивать ненужные участки памяти
}

-(void)viewDidAppear:(BOOL)animated{
    
    VCViewController *firstVC =[VCViewController new];
    firstVC.view = [[UIView alloc] initWithFrame:self.view.frame];
    [firstVC.view setBackgroundColor:[UIColor greenColor]];
    
    UIBarButtonItem *rightFirst = [[UIBarButtonItem alloc] initWithTitle:@"New_View" style:UIBarButtonItemStylePlain target:firstVC action:@selector(makeNewView)];
    
    firstVC.navigationItem.rightBarButtonItem = rightFirst;
    
    //title используется как обычный лейбл, туда можно запилить и картинку и что угодно
    firstVC.title= @"First";

    UINavigationController *nav = [[UINavigationController alloc]
                                   initWithRootViewController:firstVC];
    
    // Презентация проходит снизу вверх на экране
    [self presentViewController:nav animated:YES completion:nil];
    
    // Пуш проходит справа на лево на экране.
    //В нсЛоге выведет только первый элемент навКонтроллера потому что пуш добавится после выполнения скоупа=> После нсЛога
    
    [nav setToolbarHidden:NO animated:YES];
    
    UIBarButtonItem* colorButton = [[UIBarButtonItem alloc] initWithTitle:@"Change_Color" style:UIBarButtonItemStylePlain target:firstVC action:@selector(changeToRandomColor)];
    
    //Поещаем кнопку ToolBarButton и ColorBarButton вниз т.е. ToolBar
    [firstVC setToolbarItems:@[colorButton] animated:YES];

    NSLog(@"%@", nav.viewControllers);
}

@end
