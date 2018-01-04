//
//  GaugeInfo.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>

@interface GaugeInfo: NSObject

@property (nonatomic, strong, readonly) NSString *id;

@property (nonatomic, strong, readonly) NSString *name;

@property (nonatomic, strong, readonly) NSString *type;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end