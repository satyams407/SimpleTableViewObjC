//
//  HomeViewController.h
//  ItunesAPI
//
//  Created by Satyam Sehgal on 24/02/19.
//  Copyright © 2019 Satyam Sehgal. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HomeViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

-(void) setUpData;
-(void) fetchData;
@end

NS_ASSUME_NONNULL_END
