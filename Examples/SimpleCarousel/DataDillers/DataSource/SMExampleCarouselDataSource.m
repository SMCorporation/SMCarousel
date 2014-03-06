//
//  SMExampleCarouselDataSource.m
//  SMCarouselProj
//
//  Created by Sergey Pirogov on 06.03.14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMExampleCarouselDataSource.h"
#import "SMExampleCell.h"

@implementation SMExampleCarouselDataSource

- (Class)classForCellAtIndexPath:(NSIndexPath *)indexPath
{
    return [SMExampleCell class];
}

- (void)fillCell:(SMExampleCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    id item = [self.dataProvider itemAtIndexPath:indexPath];
    cell.titleLabel.text = item;
}

@end
