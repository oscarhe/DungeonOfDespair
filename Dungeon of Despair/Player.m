//
//  Player.m
//  Dungeon of Despair
//
//  Created by Oscar He on 3/16/13.
//  Copyright (c) 2013 Oscar He. All rights reserved.
//

#import "Player.h"

@implementation Player

@synthesize level;
@synthesize experience;
@synthesize healthPoints;
@synthesize manaPoints;
@synthesize gold;
@synthesize tokens;
@synthesize strength;
@synthesize dexterity;
@synthesize vitality;
@synthesize intelligence;
@synthesize luck;
@synthesize minAttackDmg;
@synthesize maxAttackDmg;
@synthesize minMagicDmg;
@synthesize maxMagicDmg;
@synthesize physicalDefense;
@synthesize magicalDefense;
@synthesize block;
@synthesize save;
@synthesize evade;
@synthesize accuracy;
@synthesize criticalPercentage;


-(id) init {
    self = [super init];
    if (self != nil) {
        [self setLevel:1];
        [self setExperience:0];
        [self setGold:100];
        [self setTokens:0];
    }
    return self;
}

@end
