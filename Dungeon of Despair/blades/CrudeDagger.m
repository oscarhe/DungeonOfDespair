//
//  CrudeDagger.m
//  Dungeon of Despair
//
//  Created by Oscar He on 3/17/13.
//  Copyright (c) 2013 Oscar He. All rights reserved.
//

#import "CrudeDagger.h"

@implementation CrudeDagger

-(id) init {
    if (self != nil) {
        [self setSellValue:50];
        [self setBuyValue:75];
        [self setMinAttackDmg:1];
        [self setMaxAttackDmg:3];
        [self setAccuracy:95];
        [self setCriticalPercentage:5];
        [self setAttrStr:[[NSString alloc] initWithFormat:@"cdlm"]];
    }
    return self;
}

@end
