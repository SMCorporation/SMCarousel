//
//  SMCarouselDataSource.m
//  SMCarouselProj
//
//  Created by Sergey Pirogov on 06.03.14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMCarouselDataSource.h"
#import "SMBaseCarouselCell.h"

static CGFloat const kSpaceBetweenItems = 10;


@implementation SMCarouselDataSource

- (id)initWithDataProvider:(SMBaseDataProvider *)dataProvider
{
    return (self = [super initWithDataProvider:dataProvider collectionView:nil]);
}


#pragma mark -
#pragma mark DataSource Methods

- (Class)classForCellAtIndexPath:(NSIndexPath *)indexPath
{
    return [SMBaseCarouselCell class];
}

- (void)didSelectedRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.collectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
    
    if ([self.delegate respondsToSelector:@selector(didSelectRowAtIndexPath:withItem:)]) {
        id itemObject = [self.dataProvider itemAtIndexPath:indexPath];
        [self.delegate didSelectRowAtIndexPath:indexPath withItem:itemObject];
    }
}


#pragma mark -
#pragma mark UICollectionViewDelegateFlowLayout

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return kSpaceBetweenItems;
}

@end
