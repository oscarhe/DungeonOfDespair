//
//  Player.h
//  Dungeon of Despair
//
//  Created by Oscar He on 3/16/13.
//  Copyright (c) 2013 Oscar He. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) int level; // Flag 1
@property (nonatomic) int experience; // Flag 2
@property (nonatomic) int healthPoints; // Flag 3
@property (nonatomic) int manaPoints; // Flag 4
@property (nonatomic) int gold; // Flag 5
@property (nonatomic) int tokens; // Flag 6
@property (nonatomic) int strength; // Flag 7
@property (nonatomic) int dexterity; // Flag 8
@property (nonatomic) int vitality; // Flag 9
@property (nonatomic) int intelligence; // Flag a
@property (nonatomic) int luck; // Flag b
@property (nonatomic) int minAttackDmg; // Flag c
@property (nonatomic) int maxAttackDmg; // Flag d
@property (nonatomic) int minMagicDmg; // Flag e
@property (nonatomic) int maxMagicDmg; // Flag f
@property (nonatomic) int physicalDefense; // Flag g
@property (nonatomic) int magicalDefense; // Flag h
@property (nonatomic) int block; // Flag i
@property (nonatomic) int save; // Flag j
@property (nonatomic) int evade; // Flag k
@property (nonatomic) int accuracy; // Flag l
@property (nonatomic) int criticalPercentage; // Flag m
@property (nonatomic, strong) NSDictionary *attrDic;

-(id) init;

@end
