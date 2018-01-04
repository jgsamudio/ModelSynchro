//
//  Price.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>
#import "Amount.h"

@interface Price: NSObject

@property (nonatomic, strong) Amount *amount;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end