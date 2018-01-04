//
//  Tabs.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface Tabs

@property (nonatomic, strong, readonly) NSArray<Contents> *contents;

@property (nonatomic, strong, readonly) NSString *name;

	enum CodingKeys: String, CodingKey {
		case contents = "contents"
		case name = "name"
	}
@end