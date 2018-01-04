//
//  Promotions.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface Promotions

@property (nonatomic, strong, readonly) NSInteger *articleId;

@property (nonatomic, strong, readonly) NSInteger *id;

@property (nonatomic, strong, readonly) NSString *message;

@property (nonatomic, strong, readonly) NSString *type;

	enum CodingKeys: String, CodingKey {
		case articleId = "articleId"
		case id = "id"
		case message = "message"
		case type = "type"
	}
@end