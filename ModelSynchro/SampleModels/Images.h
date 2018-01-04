//
//  Images.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/03/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
Auto-Generated using ModelSynchro
*/

@interface Images

@property (nonatomic, strong, readonly) BOOL *isDefault;

@property (nonatomic, strong, readonly) NSString *description;

@property (nonatomic, strong, readonly) NSString *jsonPlusSizeZoomUrls;

@property (nonatomic, strong, readonly) NSString *jsonZoomUrls;

@property (nonatomic, strong, readonly) NSString *name;

@property (nonatomic, strong, readonly) NSString *plusName;

@property (nonatomic, strong, readonly) NSString *plusSizeProductImageUrl;

@property (nonatomic, strong, readonly) NSString *thumbnailUrl;

@property (nonatomic, strong, readonly) NSString *url;

	enum CodingKeys: String, CodingKey {
		case description = "description"
		case isDefault = "isDefault"
		case jsonPlusSizeZoomUrls = "jsonPlusSizeZoomUrls"
		case jsonZoomUrls = "jsonZoomUrls"
		case name = "name"
		case plusName = "plusName"
		case plusSizeProductImageUrl = "plusSizeProductImageUrl"
		case thumbnailUrl = "thumbnailUrl"
		case url = "url"
	}
@end