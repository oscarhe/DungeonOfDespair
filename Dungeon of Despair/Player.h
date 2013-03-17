//
//  Player.h
//  Dungeon of Despair
//
//  Created by Oscar He on 3/16/13.
//  Copyright (c) 2013 Oscar He. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) int level;
@property (nonatomic) int experience;
@property (nonatomic) int healthPoints;
@property (nonatomic) int manaPoints;
@property (nonatomic) int gold;
@property (nonatomic) int tokens;
@property (nonatomic) int strength;
@property (nonatomic) int dexterity;
@property (nonatomic) int vitality;
@property (nonatomic) int intelligence;
@property (nonatomic) int luck;
@property (nonatomic) int minAttackDmg;
@property (nonatomic) int maxAttackDmg;
@property (nonatomic) int minMagicDmg;
@property (nonatomic) int maxMagicDmg;
@property (nonatomic) int physicalDefense;
@property (nonatomic) int magicalDefense;
@property (nonatomic) int block;
@property (nonatomic) int save;
@property (nonatomic) int evade;
@property (nonatomic) int accuracy;
@property (nonatomic) int criticalPercentage;

-(id) init;

@end
