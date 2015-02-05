//
//  Level.h
//  FurryFeathers
//
//  Created by RyU on 04/02/15.
//  Copyright 2015 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Level : CCNode {
    CCNode* _physicsNode;
    CCNode* _launcher;
}

@end
