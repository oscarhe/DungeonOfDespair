//
//  Equipment.h
//  Dungeon of Despair
//
//  Created by Oscar He on 3/17/13.
//  Copyright (c) 2013 Oscar He. All rights reserved.
//

#import "Player.h"

@interface Equipment : Player

@property (nonatomic, strong) NSString *name;
@property (nonatomic) int buyValue;
@property (nonatomic) int sellValue;
@property (nonatomic, strong) NSString *attrStr;

@end
