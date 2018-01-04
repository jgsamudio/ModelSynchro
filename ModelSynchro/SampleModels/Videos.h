//
//  Videos.h
//  ModelSynchro
//
//  Created by Jonathan Samudio on 01/04/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

/*
    Auto-Generated using ModelSynchro
*/

#import <Foundation/Foundation.h>

@interface Videos: NSObject

@property (nonatomic, strong, readonly) BOOL *distTypeId;

@property (nonatomic, strong, readonly) BOOL *thumbNailIsCustom;

@property (nonatomic, strong, readonly) NSInteger *height;

@property (nonatomic, strong, readonly) NSInteger *width;

@property (nonatomic, strong, readonly) NSString *analyticCat;

@property (nonatomic, strong, readonly) NSString *analyticName;

@property (nonatomic, strong, readonly) NSString *httpUrl;

@property (nonatomic, strong, readonly) NSString *iosUrl;

@property (nonatomic, strong, readonly) NSString *label;

@property (nonatomic, strong, readonly) NSString *thumbNailUrl;

@property (nonatomic, strong, readonly) NSString *videoType;

@property (nonatomic, strong, readonly) NSString *youTubeVideoId;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end