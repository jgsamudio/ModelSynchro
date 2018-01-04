//
//  ProductOptions.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface ProductOptions

@property (nonatomic, strong, readonly) NSArray<Sizes> *sizes;

@property (nonatomic, strong, readonly) NSArray<Swatches> *swatches;

@property (nonatomic, strong, readonly) NSArray<Widths> *widths;

	enum CodingKeys: String, CodingKey {
		case sizes = "sizes"
		case swatches = "swatches"
		case widths = "widths"
	}
@end