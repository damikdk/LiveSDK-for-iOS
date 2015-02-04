//
//  StringHelperTests.m
//  Live SDK for iOS
//
//  Copyright 2015 Microsoft Corporation
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//  
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//  
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//


#import "StringHelperTests.h"
#import "StringHelper.h"

@implementation StringHelperTests

// All code under test must be linked into the Unit Test bundle
- (void)testNullOfEmpty
{
    STAssertTrue([StringHelper isNullOrEmpty:nil], @"nil input should returns true.");
    STAssertTrue([StringHelper isNullOrEmpty:@" "], @"empty string input should returns true.");    
    
    STAssertTrue([StringHelper isNullOrEmpty:@""], @"Whitespace input should returns true.");
    
    STAssertFalse([StringHelper isNullOrEmpty:@" bal "], @"Definitely not empty string.");
}

@end
