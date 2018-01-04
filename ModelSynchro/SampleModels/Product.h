//
//  Product.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>

@interface Product: NSObject

@property (nonatomic, strong, readonly) Autoship *autoship;

@property (nonatomic, strong, readonly) BOOL *hasHsnSizeChart;

@property (nonatomic, strong, readonly) BOOL *isInMatrix;

@property (nonatomic, strong, readonly) BOOL *isMatrixTextOnly;

@property (nonatomic, strong, readonly) BOOL *isPersonalizable;

@property (nonatomic, strong, readonly) BOOL *isSoldOut;

@property (nonatomic, strong, readonly) BOOL *matrixId;

@property (nonatomic, strong, readonly) Brand *brand;

@property (nonatomic, strong, readonly) Flag *flag;

@property (nonatomic, strong, readonly) MatrixGroups *matrixGroups;

@property (nonatomic, strong, readonly) NSArray<Benefits> *benefits;

@property (nonatomic, strong, readonly) NSArray<Callouts> *callouts;

@property (nonatomic, strong, readonly) NSArray<Categories> *categories;

@property (nonatomic, strong, readonly) NSArray<Disclaimers> *disclaimers;

@property (nonatomic, strong, readonly) NSArray<HowToUse> *howToUse;

@property (nonatomic, strong, readonly) NSArray<Images> *images;

@property (nonatomic, strong, readonly) NSArray<MatrixOptions> *matrixOptions;

@property (nonatomic, strong, readonly) NSArray<Promotions> *promotions;

@property (nonatomic, strong, readonly) NSArray<RatingAggregates> *ratingAggregates;

@property (nonatomic, strong, readonly) NSArray<Tabs> *tabs;

@property (nonatomic, strong, readonly) NSArray<VariantInfo> *variantInfo;

@property (nonatomic, strong, readonly) NSArray<Videos> *videos;

@property (nonatomic, strong, readonly) NSArray<WarrantyCollection> *warrantyCollection;

@property (nonatomic, strong, readonly) NSInteger *id;

@property (nonatomic, strong, readonly) NSString *autoshipInformation;

@property (nonatomic, strong, readonly) NSString *itemNumber;

@property (nonatomic, strong, readonly) NSString *matrixLabel;

@property (nonatomic, strong, readonly) NSString *name;

@property (nonatomic, strong, readonly) NSString *note;

@property (nonatomic, strong, readonly) NSString *overview;

@property (nonatomic, strong, readonly) NSString *overviewHtml;

@property (nonatomic, strong, readonly) NSString *shortName;

@property (nonatomic, strong, readonly) NSString *slug;

@property (nonatomic, strong, readonly) Pricing *pricing;

@property (nonatomic, strong, readonly) PricingDetail *pricingDetail;

@property (nonatomic, strong, readonly) ProductLink *productLink;

@property (nonatomic, strong, readonly) ProductOptions *productOptions;

@property (nonatomic, strong, readonly) Rating *rating;

@property (nonatomic, strong, readonly) Sharing *sharing;

- (id)initWithDictionary:(NSDictionary *)dictionary

@end