//
//  QuickDialogControllerProtocol.h
//  ExerciseDiary
//
//  Created by Robert Höglund on 8/26/11.
//  Copyright (c) 2011 rhoglund coding. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QRootElement;

@protocol QuickDialogControllerProtocol <NSObject>

@property (nonatomic, retain) QRootElement *root;
@property (nonatomic, retain) UITableView *tableView;
@property(nonatomic, copy) void (^willDisappearCallback)();

- (void)displayViewController:(UIViewController *)newController;
- (void)displayViewControllerForRoot:(QRootElement *)element;

@end

typedef UIViewController<QuickDialogControllerProtocol> QuickDialogController;
