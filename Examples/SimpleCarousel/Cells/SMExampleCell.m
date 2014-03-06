//
//  SMExampleCell.m
//  SMCarouselProj
//
//  Created by Sergey Pirogov on 06.03.14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMExampleCell.h"

@implementation SMExampleCell

+ (SMExampleCell *)createView
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([SMExampleCell class]) owner:self options:nil] objectAtIndex:0];
}

+ (CGSize)size
{
    static CGSize sizeOfView;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        UIView *view = [self createView]; //make it once, to avoid loading xib everytime, when "+size" will be called
        sizeOfView = view.frame.size;
    });
    
    return sizeOfView;
}

@end
