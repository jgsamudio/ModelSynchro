//
//  ContentRaw.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface ContentRaw

@property (nonatomic, strong, readonly) BOOL *linkType;

@property (nonatomic, strong, readonly) NSString *content;

	enum CodingKeys: String, CodingKey {
		case content = "content"
		case linkType = "linkType"
	}
@end