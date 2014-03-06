//
//  SMCarousel.m
//  SMCarouselProj
//
//  Created by Sergey Pirogov on 06.03.14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMCarousel.h"
#import "SMBaseDataProvider.h"
#import "SMBaseDataSource.h"


@interface SMCarousel () <SMDataSourceDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end


@implementation SMCarousel

+ (SMCarousel *)createView
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([SMCarousel class]) owner:self options:nil] objectAtIndex:0];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        SMCarousel *view = [SMCarousel createView];
        view.frame = frame;
        self = view;
    }
    return self;
}

- (id)awakeAfterUsingCoder:(NSCoder *)aDecoder
{
    BOOL theThingThatGotLoadedWasJustAPlaceholder = ([[self subviews] count] == 0);
    if (theThingThatGotLoadedWasJustAPlaceholder) {
        SMCarousel *view = [SMCarousel createView];
        view.frame = self.frame;
        view.alpha = self.alpha;
        return view;
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setupCarousel];
}

- (void)setDataSource:(SMCarouselDataSource *)dataSource
{
    _dataSource = dataSource;
    _dataSource.delegate = self;
    _dataSource.collectionView = self.collectionView;
    [_dataSource reload];
}


#pragma mark -
#pragma mark Setups

- (void)setupCarousel
{
    //any setups
}


#pragma mark -
#pragma mark Public Methods

- (void)reloadContent
{
    [self.dataSource reload];
}


#pragma mark -
#pragma mark SMDataSourceDelegate

- (void)didSelectRowAtIndexPath:(NSIndexPath *)indexPath withItem:(id)item
{
    NSLog(@"selected: %@", item);
}

@end
