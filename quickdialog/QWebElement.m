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


#import "QElement.h"
#import "QRootElement.h"
#import "QWebElement.h"
#import "QuickDialogController.h"
#import "QWebViewController.h"
#import "QuickDialogTableView.h"


@implementation QWebElement

- (QWebElement *)initWithTitle:(NSString *)title url:(NSString *)url {

    self = [super init];
    if (self!=nil){
        _url = url;
        _title = title;
    }
    return self;
}


- (void)selected:(QuickDialogTableView *)tableView controller:(QuickDialogController *)controller indexPath:(NSIndexPath *)path {
    QWebViewController *webController = [[QWebViewController alloc] initWithUrl:_url];
    [controller displayViewController:webController];

}
@end