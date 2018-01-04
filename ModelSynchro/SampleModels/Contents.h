//
//  Contents.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>
#import KeyValueGroups.h

@interface Contents: NSObject

@property (nonatomic, strong, readonly) NSArray<KeyValueGroups> *keyValueGroups;

@property (nonatomic, strong, readonly) NSInteger *appliesToProductId;

@property (nonatomic, strong, readonly) NSString *contentHtml;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end