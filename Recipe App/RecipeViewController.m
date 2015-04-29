//
//  RecipeViewController.m
//  Recipe App
//
//  Created by Daniel Dayley on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipeViewController.h"
#import "RecipesTableViewDataSource.h"

@interface RecipeViewController ()

@property (nonatomic, strong)UITableView *tableView; // Declare global property for RecipeViewController
@property (nonatomic, strong) RecipesTableViewDataSource *dataSource;


@end

@implementation RecipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"Recipes";

    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    self.dataSource = [RecipesTableViewDataSource   new];
    
    self.tableView.dataSource = self.dataSource;
    
    [self.dataSource registerTableView:self.tableView];
    
    [self.view addSubview:self.tableView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
