#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObtacle = 0.0f;
    
}

-(void)update:(CCTime)delta
{
    // put update code here
    [character flap];
    timeSinceObtacle += delta; //delta is approximately 1/60th of a second
    if(timeSinceObtacle > 2.0f)
    {
        [self addObstacle];
        timeSinceObtacle = 0.0f;
    }
    
    


}

// put new methods here
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    // this will get called every time the user touches the screen
}
@end
