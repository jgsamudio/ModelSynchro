//
//  Flag.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface Flag

@property (nonatomic, strong, readonly) BOOL *isSoldOut;

@property (nonatomic, strong, readonly) BOOL *isTodaysSpecial;

@property (nonatomic, strong, readonly) NSString *className;

@property (nonatomic, strong, readonly) NSString *name;

	enum CodingKeys: String, CodingKey {
		case className = "className"
		case isSoldOut = "isSoldOut"
		case isTodaysSpecial = "isTodaysSpecial"
		case name = "name"
	}
@end