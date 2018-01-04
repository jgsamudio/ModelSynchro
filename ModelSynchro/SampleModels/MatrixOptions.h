//
//  MatrixOptions.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>
#import "RetailPrice.h"
#import "Images.h"
#import "PricingDetail.h"
#import "ProductOptions.h"
#import "Price.h"
#import "OldPrice.h"
#import "Tabs.h"
#import "Autoship.h"

@interface MatrixOptions: NSObject

@property (nonatomic, assign) NSInteger productId;

@property (nonatomic, assign) bool hasHsnSizeChart;

@property (nonatomic, strong, nullable) Autoship *autoship;

@property (nonatomic, strong, nullable) NSArray<Images *> *images;

@property (nonatomic, strong, nullable) NSArray<Tabs *> *tabs;

@property (nonatomic, strong, nullable) NSString *autoshipInformation;

@property (nonatomic, strong, nullable) NSString *itemNumber;

@property (nonatomic, strong, nullable) NSString *jsonProductZoomUrls;

@property (nonatomic, strong, nullable) NSString *optionDescription;

@property (nonatomic, strong, nullable) NSString *previewUrl;

@property (nonatomic, strong, nullable) NSString *productDescription;

@property (nonatomic, strong, nullable) NSString *productImageUrl;

@property (nonatomic, strong, nullable) NSString *productImageUrlWithToken;

@property (nonatomic, strong, nullable) NSString *productUrl;

@property (nonatomic, strong, nullable) NSString *retailPriceLabel;

@property (nonatomic, strong, nullable) NSString *thumbnailUrl;

@property (nonatomic, strong, nullable) OldPrice *oldPrice;

@property (nonatomic, strong, nullable) Price *price;

@property (nonatomic, strong, nullable) PricingDetail *pricingDetail;

@property (nonatomic, strong, nullable) ProductOptions *productOptions;

@property (nonatomic, strong, nullable) RetailPrice *retailPrice;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end