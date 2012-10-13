//
//  S11MovieViewController.h
//  Score 11
//
//  Created by Dominik Jungowski on 10.10.12.
//  Copyright (c) 2012 Dominik Jungowski. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "S11Movie.h"

@interface S11MovieViewController : UIViewController {
    __weak IBOutlet UITextView *movieTitle;
    __weak IBOutlet UIImageView *movieImage;
    __weak IBOutlet UITextView *peopleOutline;
    __weak IBOutlet UIImageView *thumb;
    __weak IBOutlet UILabel *rating;
}

@property S11Movie *movie;

- (id)initWithMovie:(S11Movie *) movie;

@end
