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


#import "XCXibDefinition.h"

@implementation XCXibDefinition

/* ====================================================================================================================================== */
#pragma mark - Class Methods

+ (XCXibDefinition*)xibDefinitionWithName:(NSString*)name
{
    return [[XCXibDefinition alloc] initWithName:name];
}

+ (XCXibDefinition*)xibDefinitionWithName:(NSString*)name content:(NSString*)content
{
    return [[XCXibDefinition alloc] initWithName:name content:content];
}


/* ====================================================================================================================================== */
#pragma mark - Initialization & Destruction

- (instancetype)initWithName:(NSString *)name
{
    return [self initWithName:name content:nil];
}


- (instancetype)initWithName:(NSString *)name content:(NSString *)content
{
    if (self = [super init])
    {
        _name = [name copy];
        _content = [content copy];
    }
    
    return self;
}


/* ====================================================================================================================================== */
#pragma mark - Interface Methods

- (NSString *)xibFileName
{
    return [_name stringByAppendingString:@".xib"];
}

@end
