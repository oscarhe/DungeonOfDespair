//
//  Equipment.h
//  Dungeon of Despair
//
//  Created by Oscar He on 3/17/13.
//  Copyright (c) 2013 Oscar He. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Equipment : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) int buyValue;
@property (nonatomic) int sellValue;

@end

@interface PhysicalWeapon : Equipment

@property (nonatomic) int minDmg;
@property (nonatomic) int maxDmg;
@property (nonatomic) int accuracy;
@property (nonatomic) int critical;

@end

@interface MagicalWeapon : Equipment

@property (nonatomic) int minMagicDmg;
@property (nonatomic) int maxMagicDmg;
@property (nonatomic) int accuracy;
@property (nonatomic) int critical;

@end

@interface Armor : Equipment

@property (nonatomic) int physicalDefense;
@property (nonatomic) int magicDefense;
@property (nonatomic) int save;

@end

@interface Shield : Equipment

@property (nonatomic) int block;
@property (nonatomic) int save;
@property (nonatomic) int physicalDefense;
@property (nonatomic) int magicDefense;

@end

@interface Boots : Equipment

@property (nonatomic) int evade;
@property (nonatomic) int physicalDefense;
@property (nonatomic) int magicDefense;

@end