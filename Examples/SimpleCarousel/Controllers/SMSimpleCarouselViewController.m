//
//  SMSimpleCarouselViewController.m
//  SMCarouselProj
//
//  Created by Sergey Pirogov on 06.03.14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMSimpleCarouselViewController.h"
#import "SMCarousel.h"
#import "SMExampleCarouselDataSource.h"


@interface SMSimpleCarouselViewController ()

@property (weak, nonatomic) IBOutlet SMCarousel *carousel;

@end


@implementation SMSimpleCarouselViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupCarousel];
}

- (void)setupCarousel
{
    SMBaseDataProvider *dataProvider = [SMBaseDataProvider new];
    dataProvider.items = @[@"qwerty", @"model2", @"model3", @"model4", @"model5"];
    self.carousel.dataSource = [[SMExampleCarouselDataSource alloc] initWithDataProvider:dataProvider];
}

@end
