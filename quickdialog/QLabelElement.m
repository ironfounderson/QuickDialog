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

#import "QLabelElement.h"
#import "QuickDialogTableView.h"

@implementation QLabelElement

@synthesize image = _image;
@synthesize value = _value;
@synthesize object;


- (QLabelElement *)initWithTitle:(NSString *)title value:(NSString *)value {
   self = [super init];
   _title = title;
   _value = value;
    return self;
}

- (UITableViewCell *)getCellForTableView:(QuickDialogTableView *)tableView controller:(QuickDialogController *)controller {
    _cell = [tableView dequeueReusableCellWithIdentifier:@"QLabelElementCell"];
    if (_cell == nil){
        _cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"QLabelElementCell"]; 
    }
    _cell.showsReorderControl = YES;
    _cell.textLabel.text = _title;
    _cell.detailTextLabel.text = _value;
    _cell.imageView.image = _image;
    _cell.accessoryView = nil;
    _cell.accessoryType = self.sections!= nil || self.controllerAction!=nil ? UITableViewCellAccessoryDisclosureIndicator : UITableViewCellAccessoryNone;
    _cell.selectionStyle = self.sections!= nil || self.controllerAction!=nil || self.onSelected!=nil ? UITableViewCellSelectionStyleBlue: UITableViewCellSelectionStyleNone;

    return _cell;
}

- (void)selected:(QuickDialogTableView *)tableView controller:(QuickDialogController *)controller indexPath:(NSIndexPath *)path {
    [super selected:tableView controller:controller indexPath:path];
}

- (void)updateValue:(NSString *)value {
    _value = value;
    if (_cell)
        _cell.detailTextLabel.text = _value;
}

- (void)fetchValueIntoObject:(id)obj {
	if (_key==nil)
		return;
	
	[obj setValue:self.object forKey:_key];
}

@end