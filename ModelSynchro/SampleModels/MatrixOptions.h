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
#import RetailPrice.h
#import Images.h
#import PricingDetail.h
#import ProductOptions.h
#import Price.h
#import OldPrice.h
#import Tabs.h
#import Autoship.h

@interface MatrixOptions: NSObject

@property (nonatomic, strong, readonly) Autoship *autoship;

@property (nonatomic, strong, readonly) BOOL *hasHsnSizeChart;

@property (nonatomic, strong, readonly) NSArray<Images> *images;

@property (nonatomic, strong, readonly) NSArray<Tabs> *tabs;

@property (nonatomic, strong, readonly) NSInteger *productId;

@property (nonatomic, strong, readonly) NSString *autoshipInformation;

@property (nonatomic, strong, readonly) NSString *itemNumber;

@property (nonatomic, strong, readonly) NSString *jsonProductZoomUrls;

@property (nonatomic, strong, readonly) NSString *optionDescription;

@property (nonatomic, strong, readonly) NSString *previewUrl;

@property (nonatomic, strong, readonly) NSString *productDescription;

@property (nonatomic, strong, readonly) NSString *productImageUrl;

@property (nonatomic, strong, readonly) NSString *productImageUrlWithToken;

@property (nonatomic, strong, readonly) NSString *productUrl;

@property (nonatomic, strong, readonly) NSString *retailPriceLabel;

@property (nonatomic, strong, readonly) NSString *thumbnailUrl;

@property (nonatomic, strong, readonly) OldPrice *oldPrice;

@property (nonatomic, strong, readonly) Price *price;

@property (nonatomic, strong, readonly) PricingDetail *pricingDetail;

@property (nonatomic, strong, readonly) ProductOptions *productOptions;

@property (nonatomic, strong, readonly) RetailPrice *retailPrice;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
