//
//  QuickDialogCategories.m
//  ExerciseDiary
//
//  Created by Robert Höglund on 8/28/11.
//  Copyright (c) 2011 rhoglund coding. All rights reserved.
//

#import "QuickDialogCategories.h"
#import "QEntryElement.h"
#import "QDateTimeInlineElement.h"
@implementation QRootElement (QCategories)

- (QSection *)insertSection {
    QSection *section = [QSection new];
    [self addSection:section];
    return section;
}

@end

@implementation QSection (QCategories)

- (QEntryElement *)insertEntryElementWithTitle:(NSString *)title key:(NSString *)key {
    QEntryElement *nameElement = [[QEntryElement alloc] initWithTitle:title
                                                                value:@""];
    nameElement.key = key;
    [self addElement:nameElement];
    return nameElement;
}

- (QDateTimeInlineElement *)insertDateInlineElementWithTitle:(NSString *)title 
                                                         key:(NSString *)key 
                                                        date:(NSDate *)date {
    QDateTimeInlineElement *dateElement = 
    [[QDateTimeInlineElement alloc] initWithTitle:title 
                                             date:date];
    dateElement.mode = UIDatePickerModeDate;
    dateElement.key = key;
    [self addElement:dateElement];
    return dateElement;
}

@end