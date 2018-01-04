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

@property (nonatomic, assign) NSInteger articleId;

@property (nonatomic, assign) NSInteger id;

@property (nonatomic, strong) NSString *message;

@property (nonatomic, strong) NSString *type;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end