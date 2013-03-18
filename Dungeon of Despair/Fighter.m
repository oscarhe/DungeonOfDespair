//
//  Fighter.m
//  Dungeon of Despair
//
//  Created by Oscar He on 3/16/13.
//  Copyright (c) 2013 Oscar He. All rights reserved.
//

#import "Fighter.h"

@implementation Fighter

@synthesize physicalWeapon;
@synthesize armor;
@synthesize shield;
@synthesize boots;

-(id) init {
    self = [super init];
    if (self != nil) {
        [self setPhysicalWeapon:nil];
        [self setArmor:nil];
        [self setShield:nil];
        [self setBoots:nil];
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

-(int) calcManaWithInt: (int)intelligence level: (int) level {
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

-(int) addLevel:(int)level {
    [self setExperience:[self calcExperienceWithLevel:[self level] + level]];
    [self setMinAttackDmg:[self calcMinDmgWithStrength:[self strength] dex:[self dexterity] level:[self level] + level]];
    [self setMaxAttackDmg:[self calcMaxDmgWithStrength:[self strength] dex:[self dexterity] level:[self level] + level]];
    return [self level] + level;
}

-(int) addExperience:(int)experience {
    [self setLevel:[self calcLevelWithExperience:[self experience] + experience]];
    [self setMinAttackDmg:[self calcMinDmgWithStrength:[self strength] dex:[self dexterity] level:[self level] + [self calcLevelWithExperience:experience]]];
    [self setMaxAttackDmg:[self calcMaxDmgWithStrength:[self strength] dex:[self dexterity] level:[self level] + [self calcLevelWithExperience:experience]]];
    return [self experience] + experience;
}

-(int) addHealth:(int)health {
    return [self healthPoints] + health;
}

-(int) addMana:(int)mana {
    return [self manaPoints] + mana;
}

-(int) addGold:(int)gold {
    return [self gold] + gold;
}

-(int) addTokens:(int)tokens {
    return [self tokens] + tokens;
}

-(int) addStrength:(int)strength {
    [self setMinAttackDmg:[self calcMinDmgWithStrength:[self strength] + strength dex:[self dexterity] level:[self level]]];
    [self setMaxAttackDmg:[self calcMaxDmgWithStrength:[self strength] + strength dex:[self dexterity] level:[self level]]];
    return [self strength] + strength;
}

-(int) addDexterity:(int)dexterity {
    [self setMinAttackDmg:[self calcMinDmgWithStrength:[self strength] dex:[self dexterity] + dexterity level:[self level]]];
    [self setMaxAttackDmg:[self calcMaxDmgWithStrength:[self strength] dex:[self dexterity] + dexterity level:[self level]]];
    return [self dexterity] + dexterity;
}

-(int) addVitality:(int)vitality {
    [self setHealthPoints:[self calcHealthWithVit:[self vitality] + vitality level:[self level]]];
    return [self vitality] + vitality;
}

-(int) addIntelligence:(int)intelligence {
    [self setManaPoints:[self calcManaWithInt:[self intelligence] + intelligence level:[self level]]];
    return [self intelligence] + intelligence;
}

-(void) equipItem: (Equipment *)item {
    
}

-(void) unequipItem: (Equipment *)item {

}

-(void) hasAttr: (Equipment *)item {
    NSString *attr = [[NSString alloc] init];
    for (int i = 0; i < [[item attrStr] length] ; i++) {
        if ((attr = [[self attrDic] objectForKey:[NSString stringWithFormat:@"%c",[[item attrStr] characterAtIndex:i]]])) {
            if ([attr isEqualToString:@"level"]) {
                [self setLevel:[self addLevel:[item level]]];
            }
            else if ([attr isEqualToString:@"experience"]) {
                [self setExperience:[self addExperience:[item experience]]];
            }
            else if ([attr isEqualToString:@"healthPoints"]) {
                [self setHealthPoints:[self addHealth:[item healthPoints]]];
            }
            else if ([attr isEqualToString:@"manaPoints"]) {
                [self setManaPoints:[self addMana:[item manaPoints]]];
            }
            else if ([attr isEqualToString:@"gold"]) {
                
            }
            else if ([attr isEqualToString:@"tokens"]) {
                
            }
            else if ([attr isEqualToString:@"strength"]) {
                
            }
            else if ([attr isEqualToString:@"dexterity"]) {
                
            }
            else if ([attr isEqualToString:@"vitality"]) {
                
            }
            else if ([attr isEqualToString:@"intelligence"]) {
                
            }
            else if ([attr isEqualToString:@"luck"]) {
                
            }
            else if ([attr isEqualToString:@"minAttackDmg"]) {
                
            }
            else if ([attr isEqualToString:@"maxAttackDmg"]) {
                
            }
            else if ([attr isEqualToString:@"minMagicDmg"]) {
                
            }
            else if ([attr isEqualToString:@"maxMagicDmg"]) {
                
            }
            else if ([attr isEqualToString:@"physicalDefense"]) {
                
            }
            else if ([attr isEqualToString:@"magicalDefense"]) {
                
            }
            else if ([attr isEqualToString:@"block"]) {
                
            }
            else if ([attr isEqualToString:@"save"]) {
                
            }
            else if ([attr isEqualToString:@"evade"]) {
                
            }
            else if ([attr isEqualToString:@"accuracy"]) {
                
            }
            else if ([attr isEqualToString:@"criticalPercentage"]) {
                
            }
        
        }
    }
}

@end
