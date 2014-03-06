//
//  SMExampleCell.h
//  SMCarouselProj
//
//  Created by Sergey Pirogov on 06.03.14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SMBaseCarouselCell.h"

@interface SMExampleCell : SMBaseCarouselCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end
