//
//  QuickDialogControllerProtocol.h
//  ExerciseDiary
//
//  Created by Robert Höglund on 8/26/11.
//  Copyright (c) 2011 rhoglund coding. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QRootElement;
@protocol QuickDialogControllerProtocol;

typedef UIViewController<QuickDialogControllerProtocol> QuickDialogController;

typedef void(^QWillDisapearCallback)(QuickDialogController*);

@protocol QuickDialogControllerProtocol <NSObject>

@required

@property (nonatomic, retain) QRootElement *root;
@property (nonatomic, retain) UITableView *tableView;

@optional

@property (nonatomic, copy) QWillDisapearCallback willDisappearBlock;
@property (nonatomic, copy) QWillDisapearCallback saveBlock;
@property (nonatomic, copy) QWillDisapearCallback cancelBlock;

- (void)displayViewController:(UIViewController *)newController;
- (void)displayViewControllerForRoot:(QRootElement *)element;

- (id)valueForKey:(NSString *)key;

@end
