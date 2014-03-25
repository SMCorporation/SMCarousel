//
//  SMCarouselDataSource.h
//  SMCarouselProj
//
//  Created by Sergey Pirogov on 06.03.14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMBaseCollectionViewDataSource.h"

@interface SMCarouselDataSource : SMBaseCollectionViewDataSource <UICollectionViewDelegateFlowLayout>

- (id)initWithDataProvider:(SMBaseDataProvider *)dataProvider;

@end
