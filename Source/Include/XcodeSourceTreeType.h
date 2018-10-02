////////////////////////////////////////////////////////////////////////////////
//
//  JASPER BLUES
//  Copyright 2012 Jasper Blues
//  All Rights Reserved.
//
//  NOTICE: Jasper Blues permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, XcodeSourceTreeType)
{
    SourceTreeSDKRoot,
    SourceTreeGroup
};

@interface NSString (XcodeSourceTreeTypeExtensions)

+ (NSString *)xce_stringFromSourceTreeType:(XcodeSourceTreeType)nodeType;

- (XcodeSourceTreeType)xce_asSourceTreeType;

@end

