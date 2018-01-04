//
//  Promotions.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>

@interface Promotions: NSObject

@property (nonatomic, strong, readonly) NSInteger *articleId;

@property (nonatomic, strong, readonly) NSInteger *id;

@property (nonatomic, strong, readonly) NSString *message;

@property (nonatomic, strong, readonly) NSString *type;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end