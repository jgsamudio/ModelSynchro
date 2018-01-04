//
//  Brand.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface Brand

@property (nonatomic, strong, readonly) NSInteger *id;

@property (nonatomic, strong, readonly) NSString *name;

	enum CodingKeys: String, CodingKey {
		case id = "id"
		case name = "name"
	}
@end