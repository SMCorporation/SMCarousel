//
//  SMBaseCarouselCell.m
//  SMCarouselProj
//
//  Created by Sergey Pirogov on 06.03.14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMBaseCarouselCell.h"

@implementation SMBaseCarouselCell

+ (CGSize)size
{
    static CGSize sizeOfView;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        UIView *view = [self tryLoadFromNib]; // make it once, to avoid loading xib everytime, when "+size" will be called
        sizeOfView = view.frame.size;
    });
    
    return sizeOfView;
}


#pragma mark -
#pragma mark Helpers

+ (UIView *)tryLoadFromNib
{
    NSString *classString = NSStringFromClass([self class]);
    if ([[NSBundle mainBundle] pathForResource:classString ofType:@"nib"].length) {
        return [[[NSBundle mainBundle] loadNibNamed:classString owner:nil options:nil] firstObject];
    }
    return nil;
}

@end
