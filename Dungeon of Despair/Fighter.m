//
//  Fighter.m
//  Dungeon of Despair
//
//  Created by Oscar He on 3/16/13.
//  Copyright (c) 2013 Oscar He. All rights reserved.
//

#import "Fighter.h"

@implementation Fighter

-(id) init {
    self = [super init];
    if (self != nil) {
        [self setStrength:20];
        [self setDexterity:15];
        [self setVitality:15];
        [self setIntelligence:5];
        [self setLuck:10];
        [self setHealthPoints:[self calcHealthWithVit:[self vitality]
                                                level:[self level]]];
        [self setManaPoints:[self calcManaWithInt:[self intelligence]
                                            level:[self level]]];
        [self setMinAttackDmg:[self calcMinDmgWithStrength:[self strength]
                                                       dex:[self dexterity]
                                                     level:[self level]]];
        [self setMaxAttackDmg:[self calcMaxDmgWithStrength:[self strength]
                                                       dex:[self dexterity]
                                                     level:[self level]]];
    }
    return self;
}

-(int) calcHealthWithVit: (int)vitality level: (int)level {
    return 25 + level * 2 + vitality * 1.5;
}

-(int) calcManaWithInt: (int) intelligence level: (int) level {
    return 5 + level * 5 + intelligence * 2;
}

-(int) calcExperienceWithLevel: (int)level {
    return 25 * level * level - 25 * level;
}

-(int) calcLevelWithExperience: (int)experience {
    return floor(25 + sqrt(625 + 100 * experience)) / 50;
}

-(int) calcMinDmgWithStrength: (int)strength dex: (int)dexterity level: (int)level {
    return 1 + floor(level * .2 + strength * .15 + dexterity * .1);
}

-(int) calcMaxDmgWithStrength: (int) strength dex: (int)dexterity level: (int)level {
    return 1+ floor(level * .5 + strength * .4 + dexterity * .3);
}

@end
