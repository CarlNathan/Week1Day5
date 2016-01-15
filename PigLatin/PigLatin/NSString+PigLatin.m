//
//  NSString+PigLatin.m
//  PigLatin
//
//  Created by Carl Udren on 1/15/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization{
    
    
    NSString *someString = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSArray *words = [someString componentsSeparatedByString:@" "];

    
    NSMutableString *pigLatinString = [[NSMutableString alloc]init];
    for (NSString *word in words) {
        
        NSRange range1 = NSMakeRange(0, 1);
        NSString *firstChar = [word substringWithRange:range1];
        NSRange range2 = NSMakeRange(1, word.length -1);
        NSString *restOfWord = [word substringWithRange:range2];
        NSString *newWord = [restOfWord stringByAppendingString:firstChar];
        NSString *pigLatinWord = [newWord stringByAppendingString:@"ay"];
        [pigLatinString appendString:pigLatinWord];
        [pigLatinString appendString:@" "];
    }

    return [pigLatinString copy];
}


@end
