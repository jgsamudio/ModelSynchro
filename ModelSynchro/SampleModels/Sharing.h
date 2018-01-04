//
//  Sharing.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface Sharing

@property (nonatomic, strong, readonly) NSInteger *type;

@property (nonatomic, strong, readonly) NSString *uri;

	enum CodingKeys: String, CodingKey {
		case type = "type"
		case uri = "uri"
	}
@end