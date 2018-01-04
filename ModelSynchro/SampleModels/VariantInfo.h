//
//  VariantInfo.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>

@interface VariantInfo: NSObject

@property (nonatomic, assign) NSInteger webId;

@property (nonatomic, assign) bool isPlusSize;

@property (nonatomic, strong) NSArray<NSString *> *codes;

@property (nonatomic, strong) NSString *callout;

@property (nonatomic, strong) NSString *sku;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end