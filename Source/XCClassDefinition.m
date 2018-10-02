////////////////////////////////////////////////////////////////////////////////
//
//  JASPER BLUES
//  Copyright 2012 - 2013 Jasper Blues
//  All Rights Reserved.
//
//  NOTICE: Jasper Blues permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////





#import "XCClassDefinition.h"

@implementation XCClassDefinition


/* ====================================================================================================================================== */
#pragma mark - Class Methods

+ (XCClassDefinition*)classDefinitionWithName:(NSString*)fileName
{
    return [[XCClassDefinition alloc] initWithName:fileName];
}

+ (XCClassDefinition*)classDefinitionWithName:(NSString*)className language:(ClassDefinitionLanguage)language
{
    return [[XCClassDefinition alloc] initWithName:className language:language];
}

/* ====================================================================================================================================== */
#pragma mark - Initialization & Destruction

- (instancetype)initWithName:(NSString*)className
{
    return [self initWithName:className language:ObjectiveC];
}

- (instancetype)initWithName:(NSString*)className language:(ClassDefinitionLanguage)language
{
    if (self = [super init])
    {
        _className = [className copy];
        if (!(language == ObjectiveC || language == ObjectiveCPlusPlus || language == CPlusPlus))
        {
            [NSException raise:NSInvalidArgumentException format:@"Language must be one of ObjectiveC, ObjectiveCPlusPlus"];
        }
        _language = language;
    }
    
    return self;
}


/* ====================================================================================================================================== */
#pragma mark - Interface Methods

- (BOOL)isObjectiveC
{
    return _language == ObjectiveC;
}

- (BOOL)isObjectiveCPlusPlus
{
    return _language == ObjectiveCPlusPlus;
}

- (BOOL)isCPlusPlus
{
    return _language == CPlusPlus;
}

- (NSString*)headerFileName
{
    return [_className stringByAppendingString:@".h"];
    
}

- (NSString*)sourceFileName
{
    NSString *sourceFileName = nil;
    if ([self isObjectiveC])
    {
        sourceFileName = [_className stringByAppendingString:@".m"];
    }
    else if ([self isObjectiveCPlusPlus])
    {
        sourceFileName = [_className stringByAppendingString:@".mm"];
    }
    else if ([self isCPlusPlus])
    {
        sourceFileName = [_className stringByAppendingString:@".cpp"];
    }
    
    return sourceFileName;
}


@end
