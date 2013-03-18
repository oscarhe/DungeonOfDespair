//
//  Fighter.h
//  Dungeon of Despair
//
//  Created by Oscar He on 3/16/13.
//  Copyright (c) 2013 Oscar He. All rights reserved.
//

#import "Player.h"
#import "Equipment.h"

@interface Fighter : Player

@property (nonatomic, strong) Equipment *physicalWeapon;
@property (nonatomic, strong) Equipment *armor;
@property (nonatomic, strong) Equipment *shield;
@property (nonatomic, strong) Equipment *boots;

-(id) init;

-(int) calcHealthWithVit: (int)vitality level: (int)level;

-(int) calcManaWithInt: (int)intelligence level: (int)level;

-(int) calcExperienceWithLevel: (int)level;

-(int) calcLevelWithExperience: (int)experience;

-(int) calcMinDmgWithStrength: (int)strength dex: (int)dexterity level: (int)level;

-(int) calcMaxDmgWithStrength: (int)strength dex: (int)dexterity level: (int)level;

-(void) equipItem: (Equipment
                    *)item;

-(void) unequipItem: (Equipment *)item;

-(void) hasAttr: (Equipment *)item;


@end
