//
//  MatrixOptions.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface MatrixOptions

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

@property (nonatomic, strong, readonly) NSString *thumbnailUrl;

@property (nonatomic, strong, readonly) OldPrice *oldPrice;

@property (nonatomic, strong, readonly) Price *price;

@property (nonatomic, strong, readonly) PricingDetail *pricingDetail;

@property (nonatomic, strong, readonly) ProductOptions *productOptions;

	enum CodingKeys: String, CodingKey {
		case autoship = "autoship"
		case autoshipInformation = "autoshipInformation"
		case hasHsnSizeChart = "hasHsnSizeChart"
		case images = "images"
		case itemNumber = "itemNumber"
		case jsonProductZoomUrls = "jsonProductZoomUrls"
		case oldPrice = "oldPrice"
		case optionDescription = "optionDescription"
		case previewUrl = "previewUrl"
		case price = "price"
		case pricingDetail = "pricingDetail"
		case productDescription = "productDescription"
		case productId = "productId"
		case productImageUrl = "productImageUrl"
		case productImageUrlWithToken = "productImageUrlWithToken"
		case productOptions = "productOptions"
		case productUrl = "productUrl"
		case tabs = "tabs"
		case thumbnailUrl = "thumbnailUrl"
	}
@end