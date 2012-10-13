//
//  S11NavigationBar.m
//  Score11
//
//  Created by Dominik Jungowski on 13.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import "S11NavigationBar.h"

@implementation S11NavigationBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setBackgroundImage:[UIImage imageNamed:@"iphone-navbar.png"] forBarMetrics:UIBarMetricsDefault];
        // RGB: 6 7 100; Das Ganze zur Basis 255
        self.tintColor = [UIColor colorWithRed:0.03 green:0.24 blue:0.4 alpha:100];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
