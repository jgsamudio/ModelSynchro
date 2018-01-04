//
//  Autoship.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>

@interface Autoship: NSObject

@property (nonatomic, assign) NSInteger frequency;

@property (nonatomic, strong) NSString *description;

@property (nonatomic, strong) NSString *id;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end