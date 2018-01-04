//
//  Tabs.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>
#import Contents.h

@interface Tabs: NSObject

@property (nonatomic, strong, readonly) NSArray<Contents> *contents;

@property (nonatomic, strong, readonly) NSString *name;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end