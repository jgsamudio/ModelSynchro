//
//  PaymentOptions.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface PaymentOptions

@property (nonatomic, strong, readonly) BOOL *isExtraFlex;

@property (nonatomic, strong, readonly) NSInteger *number;

@property (nonatomic, strong, readonly) NSString *amount;

	enum CodingKeys: String, CodingKey {
		case amount = "amount"
		case isExtraFlex = "isExtraFlex"
		case number = "number"
	}
@end