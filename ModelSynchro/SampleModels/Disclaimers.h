//
//  Disclaimers.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface Disclaimers

@property (nonatomic, strong, readonly) ContentRaw *contentRaw;

@property (nonatomic, strong, readonly) NSInteger *area;

@property (nonatomic, strong, readonly) NSInteger *displayPosition;

@property (nonatomic, strong, readonly) NSInteger *id;

@property (nonatomic, strong, readonly) NSInteger *type;

@property (nonatomic, strong, readonly) NSString *contentHtml;

@property (nonatomic, strong, readonly) NSString *description;

	enum CodingKeys: String, CodingKey {
		case area = "area"
		case contentHtml = "contentHtml"
		case contentRaw = "contentRaw"
		case description = "description"
		case displayPosition = "displayPosition"
		case id = "id"
		case type = "type"
	}
@end