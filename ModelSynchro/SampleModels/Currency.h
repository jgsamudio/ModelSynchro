//
//  Currency.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface Currency

@property (nonatomic, strong, readonly) NSString *isoCode;

@property (nonatomic, strong, readonly) NSString *name;

@property (nonatomic, strong, readonly) NSString *symbol;

	enum CodingKeys: String, CodingKey {
		case isoCode = "isoCode"
		case name = "name"
		case symbol = "symbol"
	}
@end