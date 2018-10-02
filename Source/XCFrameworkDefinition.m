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



#import "XCFrameworkDefinition.h"
#import "XCProject.h"

@implementation XCFrameworkDefinition

//-------------------------------------------------------------------------------------------
#pragma mark - Class Methods
//-------------------------------------------------------------------------------------------

+ (XCFrameworkDefinition *)frameworkDefinitionWithFilePath:(NSString *)filePath
                                         copyToDestination:(BOOL)copyToDestination
{
    return [XCFrameworkDefinition frameworkDefinitionWithFilePath:filePath
                                                copyToDestination:copyToDestination
                                                       sourceTree:SourceTreeGroup];
}

+ (XCFrameworkDefinition *)frameworkDefinitionWithFilePath:(NSString *)filePath
                                         copyToDestination:(BOOL)copyToDestination
                                                sourceTree:(XcodeSourceTreeType)sourceTree
{
    
    return [[XCFrameworkDefinition alloc] initWithFilePath:filePath
                                         copyToDestination:copyToDestination
                                                sourceTree:sourceTree];
}

//-------------------------------------------------------------------------------------------
#pragma mark - Initialization & Destruction
//-------------------------------------------------------------------------------------------

- (instancetype)initWithFilePath:(NSString *)filePath
               copyToDestination:(BOOL)copyToDestination
{
    return [self initWithFilePath:filePath
                copyToDestination:copyToDestination
                       sourceTree:SourceTreeGroup];
}

- (instancetype)initWithFilePath:(NSString *)filePath
               copyToDestination:(BOOL)copyToDestination
                      sourceTree:(XcodeSourceTreeType)sourceTree
{
    if (self = [super init]) {
        _filePath = [filePath copy];
        _copyToDestination = copyToDestination;
        _sourceTree = sourceTree;
    }
    
    return self;
}

//-------------------------------------------------------------------------------------------
#pragma mark - Interface Methods
//-------------------------------------------------------------------------------------------

- (NSString *)fileName
{
    return [[_filePath lastPathComponent] stringByReplacingOccurrencesOfString:@"/" withString:@""];
}



@end
