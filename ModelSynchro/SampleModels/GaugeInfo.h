//
//  GaugeInfo.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface GaugeInfo

@property (nonatomic, strong, readonly) NSString *id;

@property (nonatomic, strong, readonly) NSString *maxLabel;

@property (nonatomic, strong, readonly) NSString *minLabel;

@property (nonatomic, strong, readonly) NSString *name;

@property (nonatomic, strong, readonly) NSString *type;

	enum CodingKeys: String, CodingKey {
		case id = "id"
		case maxLabel = "maxLabel"
		case minLabel = "minLabel"
		case name = "name"
		case type = "type"
	}
@end