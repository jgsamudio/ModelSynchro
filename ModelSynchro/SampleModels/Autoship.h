//
//  Autoship.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface Autoship

@property (nonatomic, strong, readonly) NSInteger *frequency;

@property (nonatomic, strong, readonly) NSString *description;

@property (nonatomic, strong, readonly) NSString *id;

	enum CodingKeys: String, CodingKey {
		case description = "description"
		case frequency = "frequency"
		case id = "id"
	}
@end