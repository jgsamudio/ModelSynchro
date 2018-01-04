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

@property (nonatomic, strong, readonly) NSString *code;

@property (nonatomic, strong, readonly) NSString *description;

@property (nonatomic, strong, readonly) NSString *imageName;

@property (nonatomic, strong, readonly) NSString *imageUrl;

@property (nonatomic, strong, readonly) NSString *imageUrlWithToken;

@property (nonatomic, strong, readonly) NSString *jsonPlusSizeZoomUrls;

@property (nonatomic, strong, readonly) NSString *jsonZoomUrls;

@property (nonatomic, strong, readonly) NSString *plusSizeProductImageUrl;

@property (nonatomic, strong, readonly) NSString *plusSizeProductImageUrlWithToken;

@property (nonatomic, strong, readonly) NSString *productImageName;

@property (nonatomic, strong, readonly) NSString *productImageUrl;

@property (nonatomic, strong, readonly) NSString *productImageUrlWithToken;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end