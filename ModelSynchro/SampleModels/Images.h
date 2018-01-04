//
//  Images.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>

@interface Images: NSObject

@property (nonatomic, assign) bool isDefault;

@property (nonatomic, strong) NSString *description;

@property (nonatomic, strong) NSString *jsonPlusSizeZoomUrls;

@property (nonatomic, strong) NSString *jsonZoomUrls;

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) NSString *plusName;

@property (nonatomic, strong) NSString *plusSizeProductImageUrl;

@property (nonatomic, strong) NSString *thumbnailUrl;

@property (nonatomic, strong) NSString *url;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end