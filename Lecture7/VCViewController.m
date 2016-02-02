//
//  VCViewController.m
//  Lecture7
//
//  Created by 2 on 2/2/16.
//  Copyright © 2016 123. All rights reserved.
//

#import "VCViewController.h"
#import "UIColor+RandColor.h"

@interface VCViewController ()

@end

@implementation VCViewController

-(void)someColor{
    
    [self.view setBackgroundColor: [UIColor random]];
    
}

-(void)someDrop{
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

-(void)someAction{

    VCViewController *some =[VCViewController new];
    some.view = [[UIView alloc] initWithFrame:self.view.frame];
    
    [some.view setBackgroundColor: [UIColor random]];
    
    UIBarButtonItem *rightSome = [[UIBarButtonItem alloc] initWithTitle: @"NextSome"                                                                  style:UIBarButtonItemStylePlain target:self action:@selector(someAction)];
    
    some.navigationItem.rightBarButtonItem = rightSome;
    
    UIBarButtonItem* dropButton = [[UIBarButtonItem alloc] initWithTitle:@"ToolBarButton" style:UIBarButtonItemStylePlain target:some action:@selector(someDrop)];
    
    UIBarButtonItem* colorButton = [[UIBarButtonItem alloc] initWithTitle:@"ColorBarButton" style:UIBarButtonItemStylePlain target:some action:@selector(someColor)];
    
    //Поещаем кнопку ToolBarButton и ColorBarButton вниз т.е. ToolBar
    [some setToolbarItems:@[dropButton, colorButton] animated:YES];
    // Пуш проходит справа на лево на экране.
    //В нсЛоге выведет только первый элемент навКонтроллера потому что пуш добавится после выполнения скоупа=> После нсЛога
    
    [self.navigationController pushViewController:some animated:YES];
}

-(void)viewWillLoad:(BOOL)animated{
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"%s", __PRETTY_FUNCTION__);
}

-(void)viewDidAppear:(BOOL)animated {
    if(([self.navigationController.viewControllers count]>1)== YES)
        self.title= [NSString stringWithFormat:@"Some %i", (int)[self.navigationController.viewControllers count]];
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    NSLog(@"%s", __PRETTY_FUNCTION__);

}

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

-(void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
}

-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
}

-(void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
