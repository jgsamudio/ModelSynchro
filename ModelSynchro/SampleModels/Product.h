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
#import "Callouts.h"
#import "Videos.h"
#import "Promotions.h"
#import "MatrixGroups.h"
#import "Benefits.h"
#import "Pricing.h"
#import "ProductOptions.h"
#import "Disclaimers.h"
#import "ProductLink.h"
#import "RatingAggregates.h"
#import "Categories.h"
#import "Flag.h"
#import "VariantInfo.h"
#import "Brand.h"
#import "WarrantyCollection.h"
#import "Sharing.h"
#import "Images.h"
#import "MatrixOptions.h"
#import "Tabs.h"
#import "PricingDetail.h"
#import "Rating.h"
#import "HowToUse.h"
#import "Autoship.h"

@interface Product: NSObject

@property (nonatomic, assign) NSInteger id;

@property (nonatomic, assign) NSInteger matrixId;

@property (nonatomic, assign) bool hasHsnSizeChart;

@property (nonatomic, assign) bool isInMatrix;

@property (nonatomic, assign) bool isMatrixTextOnly;

@property (nonatomic, assign) bool isPersonalizable;

@property (nonatomic, assign) bool isSoldOut;

@property (nonatomic, strong) Brand *brand;

@property (nonatomic, strong) Flag *flag;

@property (nonatomic, strong) MatrixGroups *matrixGroups;

@property (nonatomic, strong) NSArray<Benefits *> *benefits;

@property (nonatomic, strong) NSArray<Callouts *> *callouts;

@property (nonatomic, strong) NSArray<Categories *> *categories;

@property (nonatomic, strong) NSArray<Disclaimers *> *disclaimers;

@property (nonatomic, strong) NSArray<HowToUse *> *howToUse;

@property (nonatomic, strong) NSArray<Images *> *images;

@property (nonatomic, strong) NSArray<MatrixOptions *> *matrixOptions;

@property (nonatomic, strong) NSArray<Promotions *> *promotions;

@property (nonatomic, strong) NSArray<RatingAggregates *> *ratingAggregates;

@property (nonatomic, strong) NSArray<Tabs *> *tabs;

@property (nonatomic, strong) NSArray<Videos *> *videos;

@property (nonatomic, strong) NSArray<WarrantyCollection *> *warrantyCollection;

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) NSString *note;

@property (nonatomic, strong) NSString *overview;

@property (nonatomic, strong) NSString *overviewHtml;

@property (nonatomic, strong) NSString *shortName;

@property (nonatomic, strong) NSString *slug;

@property (nonatomic, strong) Pricing *pricing;

@property (nonatomic, strong) PricingDetail *pricingDetail;

@property (nonatomic, strong) ProductLink *productLink;

@property (nonatomic, strong) ProductOptions *productOptions;

@property (nonatomic, strong) Rating *rating;

@property (nonatomic, strong) Sharing *sharing;

@property (nonatomic, strong, nullable) Autoship *autoship;

@property (nonatomic, strong, nullable) NSArray<VariantInfo *> *variantInfo;

@property (nonatomic, strong, nullable) NSString *autoshipInformation;

@property (nonatomic, strong, nullable) NSString *itemNumber;

@property (nonatomic, strong, nullable) NSString *matrixLabel;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end