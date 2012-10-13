//
//  S11Movie.h
//  Score 11
//
//  Created by Dominik Jungowski on 10.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface S11Movie : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *actor;
@property (nonatomic, strong) NSString *director;
@property (nonatomic, strong) NSString *thumb;
@property (nonatomic, strong) NSNumber *year;
@property (nonatomic, strong) NSString *rating;
@property (nonatomic, strong) NSString *ratings;
@property (nonatomic, strong) UIImage *image;

- (id)initWithName:(NSString *) movieName image:(UIImage *)image;
- (id)initWithNameAndYear:(NSString *) movieName year:(NSNumber *) movieYear;

@end