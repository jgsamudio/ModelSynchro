//
//  Flag.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>

@interface Flag: NSObject

@property (nonatomic, assign) bool isSoldOut;

@property (nonatomic, assign) bool isTodaysSpecial;

@property (nonatomic, strong) NSString *className;

@property (nonatomic, strong) NSString *name;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end