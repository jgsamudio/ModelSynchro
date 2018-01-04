//
//  KeyValueGroups.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>
#import Pairs.h

@interface KeyValueGroups: NSObject

@property (nonatomic, strong, readonly) NSArray<Pairs> *pairs;

@property (nonatomic, strong, readonly) NSString *name;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end