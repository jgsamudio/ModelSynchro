//
//  ProductLink.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>

@interface ProductLink: NSObject

@property (nonatomic, assign) NSInteger type;

@property (nonatomic, strong) NSString *uri;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end