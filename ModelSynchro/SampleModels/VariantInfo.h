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
#import NSString.h

@interface VariantInfo: NSObject

@property (nonatomic, strong, readonly) BOOL *isPlusSize;

@property (nonatomic, strong, readonly) NSArray<NSString> *codes;

@property (nonatomic, strong, readonly) NSInteger *webId;

@property (nonatomic, strong, readonly) NSString *callout;

@property (nonatomic, strong, readonly) NSString *sku;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end