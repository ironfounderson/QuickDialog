//                                
// Copyright 2011 ESCOZ Inc  - http://escoz.com
// 
// Licensed under the Apache License, Version 2.0 (the "License"); you may not use this 
// file except in compliance with the License. You may obtain a copy of the License at 
// 
// http://www.apache.org/licenses/LICENSE-2.0 
// 
// Unless required by applicable law or agreed to in writing, software distributed under
// the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF 
// ANY KIND, either express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

#import "QEntryElement.h"
#import "QElement.h"
#import "QEntryTableViewCell.h"
#import "QuickDialogTableView.h"


@implementation QEntryElement

@synthesize textValue = _textValue;
@synthesize placeholder = _placeholder;
@synthesize hiddenToolbar = _hiddenToolbar;
@synthesize isPassword = _isPassword;


- (QEntryElement *)initWithTitle:(NSString *)title Value:(NSString *)value Placeholder:(NSString *)placeholder {
    self = [self initWithTitle:title value:nil];
    _textValue = value;
    _placeholder = placeholder;
    return self;
}

- (UITableViewCell *)getCellForTableView:(QuickDialogTableView *)tableView controller:(QuickDialogController *)controller {

    QEntryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QuickformEntryElement"];
    if (cell==nil){
        cell = [[QEntryTableViewCell alloc] init];
    }
    
    [cell prepareForElement:self inTableView:tableView];
    _cell = cell;
    return cell;

}

- (void)selected:(QuickDialogTableView *)tableView controller:(QuickDialogController *)controller indexPath:(NSIndexPath *)indexPath {
    [super selected:tableView controller:controller indexPath:indexPath];
}

- (void)fetchValueIntoObject:(id)obj {
	if (_key==nil)
		return;
	
	[obj setValue:_textValue forKey:_key];
}

- (void)becomeFirstResponder {
    [_cell becomeFirstResponder];
}


@end