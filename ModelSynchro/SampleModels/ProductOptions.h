//
//  ProductOptions.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>
#import Widths.h
#import Swatches.h
#import Sizes.h

@interface ProductOptions: NSObject

@property (nonatomic, strong, readonly) NSArray<Sizes> *sizes;

@property (nonatomic, strong, readonly) NSArray<Swatches> *swatches;

@property (nonatomic, strong, readonly) NSArray<Widths> *widths;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end