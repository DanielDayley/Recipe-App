//
//  RecipesTableViewDataSource.m
//  Recipe App
//
//  Created by Daniel Dayley on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipesTableViewDataSource.h"
#import "RARecipes.h"

static NSString *theId = @"cell";


@implementation RecipesTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [RARecipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:theId];

 
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:theId];

    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    cell.detailTextLabel.text = [RARecipes descriptionAtIndex:indexPath.row];
    cell.detailTextLabel.numberOfLines = 1;
    //cell.detailTextLabel.lineBreakMode = UILineBreakModeCharacterWrap;
    //UILabel *description = [RARecipes titleAtIndex:indexPath.row];
    //cell.textLabel.
    return cell;
}
- (void) registerTableView: (UITableView *)tableView {
    
}

@end
