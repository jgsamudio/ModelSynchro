//
//  Swatches.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>
#import "Value.h"

@interface Swatches: NSObject

@property (nonatomic, strong) NSArray<Value *> *value;

@property (nonatomic, strong) NSString *key;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end