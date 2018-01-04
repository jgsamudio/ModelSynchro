//
//  Contents.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface Contents

@property (nonatomic, strong, readonly) NSInteger *appliesToProductId;

@property (nonatomic, strong, readonly) NSString *contentHtml;

	enum CodingKeys: String, CodingKey {
		case appliesToProductId = "appliesToProductId"
		case contentHtml = "contentHtml"
	}
@end