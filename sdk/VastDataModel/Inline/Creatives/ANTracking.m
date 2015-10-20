/* Copyright 2015 APPNEXUS INC
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 
 See the License for the specific language governing permissions and
 limitations under the License.
 
 */


#import "ANTracking.h"

@implementation ANTracking

- (instancetype)initWithXMLElement:(ANXMLElement *)element{
    self = [super init];
    
    if (self) {
        ANXMLElement *trackingElement = [ANXML childElementNamed:@"Tracking" parentElement:element];
        if (trackingElement) {
            
            NSString *trackingURI = String(trackingElement->text);
            if (trackingURI) {
                self.trackingURI = trackingURI;
            }

            NSString *event = [ANXML valueOfAttributeNamed:@"event" forElement:trackingElement];
            if (event) {
                self.vastEvent = event;
            }
            
        }
    }
    
    return self;
}

@end
