//
//  Value.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>

@interface Value: NSObject

@property (nonatomic, strong) NSString *code;

@property (nonatomic, strong) NSString *description;

@property (nonatomic, strong) NSString *imageName;

@property (nonatomic, strong) NSString *imageUrl;

@property (nonatomic, strong) NSString *imageUrlWithToken;

@property (nonatomic, strong) NSString *jsonPlusSizeZoomUrls;

@property (nonatomic, strong) NSString *jsonZoomUrls;

@property (nonatomic, strong) NSString *plusSizeProductImageUrl;

@property (nonatomic, strong) NSString *plusSizeProductImageUrlWithToken;

@property (nonatomic, strong) NSString *productImageName;

@property (nonatomic, strong) NSString *productImageUrl;

@property (nonatomic, strong) NSString *productImageUrlWithToken;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end