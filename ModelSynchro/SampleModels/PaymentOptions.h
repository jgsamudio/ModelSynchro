//
//  PaymentOptions.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>

@interface PaymentOptions: NSObject

@property (nonatomic, assign) NSInteger number;

@property (nonatomic, assign) bool isExtraFlex;

@property (nonatomic, strong, nullable) NSString *amount;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end