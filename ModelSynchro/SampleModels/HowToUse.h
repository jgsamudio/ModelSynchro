//
//  HowToUse.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface HowToUse

@property (nonatomic, strong, readonly) NSString *dosageCount;

@property (nonatomic, strong, readonly) NSString *dosageHtml;

@property (nonatomic, strong, readonly) NSString *dosageType;

	enum CodingKeys: String, CodingKey {
		case dosageCount = "dosageCount"
		case dosageHtml = "dosageHtml"
		case dosageType = "dosageType"
	}
@end