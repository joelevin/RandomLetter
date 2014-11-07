//
//  main.m
//  RandomLetter
//
//  Created by App Partner on 11/7/14.
//  Copyright (c) 2014 App Partner. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[])
{
    @autoreleasepool
    {
        NSMutableArray *letters = [NSMutableArray array];
        for (char letter = 'a'; letter <= 'z'; letter++)
        {
            [letters addObject:[NSString stringWithFormat:@"%c", letter]];
        }
        NSString *randomLetter = letters[arc4random_uniform([letters count])];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateStyle:NSDateFormatterShortStyle];
        NSLog(@"The random letter for %@ is %@", [dateFormatter stringFromDate:[NSDate date]], randomLetter);
    }
    return 0;
}
