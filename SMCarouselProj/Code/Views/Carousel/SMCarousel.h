//
//  SMCarousel.h
//  SMCarouselProj
//
//  Created by Sergey Pirogov on 06.03.14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SMCarouselDataSource.h"

@interface SMCarousel : UIView

@property (nonatomic, strong) SMCarouselDataSource *dataSource;

- (void)reloadContent;

@end
