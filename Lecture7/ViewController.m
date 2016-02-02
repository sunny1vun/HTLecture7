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
    VCViewController *first =[VCViewController new];
    first.view = [[UIView alloc] initWithFrame:self.view.frame];
    [first.view setBackgroundColor:[UIColor greenColor]];
    
    UIBarButtonItem *rightFirst = [[UIBarButtonItem alloc] initWithTitle:@"RightFirst" style:UIBarButtonItemStylePlain target:first action:@selector(someAction)];
    
    first.navigationItem.rightBarButtonItem = rightFirst;
    
    //title используется как обычный лейбл, туда можно запилить и картинку и что угодно
    first.title= @"First";
    
    NSLog(@"%@", self.presentedViewController);
    NSLog(@"%@", first.presentedViewController);
    NSLog(@"%@", self.presentingViewController);
    NSLog(@"%@", first.presentingViewController);

    UINavigationController *nav = [[UINavigationController alloc]
                                   initWithRootViewController:first];
    
    // Презентация проходит снизу вверх на экране
    [self presentViewController:nav animated:YES completion:nil];
    
    // Пуш проходит справа на лево на экране.
    //В нсЛоге выведет только первый элемент навКонтроллера потому что пуш добавится после выполнения скоупа=> После нсЛога
    
    [nav setToolbarHidden:NO animated:YES];
    
    UIBarButtonItem* editButton = [[UIBarButtonItem alloc] initWithTitle:@"ToolBarButton" style:UIBarButtonItemStylePlain target:nav action:@selector(someSelector)];
    [first setToolbarItems:@[editButton] animated:YES];

    
    NSLog(@"%@", nav.viewControllers);
}

@end
