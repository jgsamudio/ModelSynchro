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

@property (nonatomic, assign) NSInteger distTypeId;

@property (nonatomic, assign) NSInteger height;

@property (nonatomic, assign) NSInteger width;

@property (nonatomic, assign) bool thumbNailIsCustom;

@property (nonatomic, strong) NSString *analyticCat;

@property (nonatomic, strong) NSString *analyticName;

@property (nonatomic, strong) NSString *label;

@property (nonatomic, strong) NSString *thumbNailUrl;

@property (nonatomic, strong) NSString *videoType;

@property (nonatomic, strong) NSString *youTubeVideoId;

@property (nonatomic, strong, nullable) NSString *httpUrl;

@property (nonatomic, strong, nullable) NSString *iosUrl;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end