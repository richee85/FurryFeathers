//
//  Level.m
//  FurryFeathers
//
//  Created by RyU on 04/02/15.
//  Copyright 2015 Apportable. All rights reserved.
//

#import "Level.h"


@implementation Level

-(void)launchBird:(id)sender {
    //calculate the rotation in radians
    float rotationRadians = CC_DEGREES_TO_RADIANS(_launcher.rotation);
    
    //vector for the direction (serius black magic here)
    CGPoint directionVector = ccp(sinf(rotationRadians), cosf(rotationRadians));
    CGPoint ballOffset = ccpMult(directionVector, 50);
    
    //load a ball and set the initial position
    CCNode* ball = [CCBReader load:@"Bird"];
    ball.position = ccpAdd(_launcher.position, ballOffset);
    
    //add the ball to the physicsnode
    [_physicsNode addChild:ball];
    
    //make an impulse and apply it
    CGPoint force = ccpMult(directionVector, 50000);
    [ball.physicsBody applyForce:force];
}

@end
