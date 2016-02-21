//
//  IntroScene.m
//  Smooth Drawing - v3
//

// Import the interfaces
#import "IntroScene.h"
#import "LineDrawer.h"

@implementation IntroScene

+ (IntroScene *)scene {
	return [[self alloc] init];
}

- (id) init {
	self = [super init];
	if (self) {
//		CCNode* lineDrawer = [[LineDrawer alloc] init];
//		lineDrawer.contentSize = [CCDirector sharedDirector].viewSize;
//		lineDrawer.position = CGPointZero;
//		lineDrawer.anchorPoint = CGPointZero;
//		[self addChild:lineDrawer];
		
		CGSize quarterSize = [CCDirector sharedDirector].viewSize;
		
		quarterSize.width *= 0.5;
		quarterSize.height *= 0.5f;
		
		BOOL do0 = YES;
		BOOL do1 = YES;
		BOOL do2 = NO;
		BOOL do3 = NO;
		
		if (do0)
		{
			LineDrawer *lineDrawer0 = [[LineDrawer alloc] init];
			
			lineDrawer0.anchorPoint = CGPointZero;
			lineDrawer0.position = CGPointZero;
			lineDrawer0.contentSize = CGSizeMake(quarterSize.width*0.95f, quarterSize.height*0.95f);
//			lineDrawer0.lineColour = [CCColor colorWithWhite:0.5 alpha:1];
			
			[self addChild:lineDrawer0];
		}
		
		if (do1)
		{
			LineDrawer *lineDrawer1 = [[LineDrawer alloc] init];
			
			lineDrawer1.anchorPoint = CGPointZero;
			lineDrawer1.position = ccp(quarterSize.width, 0);
			lineDrawer1.contentSize = CGSizeMake(quarterSize.width*0.95f, quarterSize.height*0.95f);
			
			//lineDrawer1.lineColour = [CCColor blueColor];
		
			[self addChild:lineDrawer1];
		}
		
		if (do2)
		{
			LineDrawer *lineDrawer2 = [[LineDrawer alloc] init];
			
			lineDrawer2.anchorPoint = CGPointZero;
			lineDrawer2.position = ccp(0, quarterSize.height);
			lineDrawer2.contentSize = CGSizeMake(quarterSize.width*0.95f, quarterSize.height*0.95f);
			
		//	lineDrawer2.lineColour = [CCColor orangeColor];
			
			[self addChild:lineDrawer2];
		}
		
		if (do3)
		{
			LineDrawer *lineDrawer3 = [[LineDrawer alloc] init];
			
			lineDrawer3.anchorPoint = CGPointZero;
			lineDrawer3.position = ccp(quarterSize.width, quarterSize.height);
			lineDrawer3.contentSize = CGSizeMake(quarterSize.width*0.95f, quarterSize.height*0.95f);
			lineDrawer3.scale = 0.66;
		//	lineDrawer3.lineColour = [CCColor grayColor];
			
			[self addChild:lineDrawer3];
		}

	}
	return self;
}

@end