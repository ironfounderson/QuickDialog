//
//  QuickDialogCategories.h
//  ExerciseDiary
//
//  Created by Robert Höglund on 8/28/11.
//  Copyright (c) 2011 rhoglund coding. All rights reserved.
//

#import "QRootElement.h"
#import "QSection.h"

@class QEntryElement;
@class QDateTimeInlineElement;

@interface QRootElement (QCategories) 
- (QSection *)insertSection;
@end

@interface QSection (QCategories)
- (QEntryElement *)insertEntryElementWithTitle:(NSString *)title key:(NSString *)key;
- (QDateTimeInlineElement *)insertDateInlineElementWithTitle:(NSString *)title key:(NSString *)key date:(NSDate *)date;
@end
