//
//  SMCarouselDataSource.m
//  SMCarouselProj
//
//  Created by Sergey Pirogov on 06.03.14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMCarouselDataSource.h"

static CGFloat const kSpaceBetweenItems = 10;


@implementation SMCarouselDataSource

- (id)initWithDataProvider:(SMBaseDataProvider *)dataProvider
{
    self = [super initWithDataProvider:dataProvider collectionView:nil];
    if(self) {
        
    }
    return self;
}


#pragma mark -
#pragma mark DataSource Methods

- (Class)classForCellAtIndexPath:(NSIndexPath *)indexPath
{
    return [UICollectionViewCell class];
}

- (void)fillCell:(UICollectionViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    //------- Fill cells with items from dataProvider ------
    //id item = [self.dataProvider itemAtIndexPath:indexPath];
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

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(100, 250);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return kSpaceBetweenItems;
}

@end
