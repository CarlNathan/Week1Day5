//
//  main.m
//  PigLatin
//
//  Created by Carl Udren on 1/15/16.
//  Copyright © 2016 Carl Udren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
     {
         NSString *testString = (@"I am trying to turn this string into Pig Latin");
         NSLog(@"before: %@", testString);
         NSString *pigString = [testString stringByPigLatinization];
         NSLog(@"after: %@", pigString);
         
    }
    return 0;
}
