/*
The idea behind this project was in progress before we were told and shown the Pong stuff in class, so while looking through my
assignment, please keep that mind. Infact, this is once again a step towards a larger idea that I'm steadily working on.

The ball is beaten back by the player, and each time it is done so, the player gets one point. If the player loses, they can play
again. If they do, their score is added to the high score list (not permanently saved) and the game begins again.

My intent is to eventually build a breakout clone, breaking blocks with the ball while defending your wall from that same ball.
My twist should end up with something similar to Polybius.

Bugs List:
#1: collision detection for left wall is within the wall. WHY?!?!
Solution: Take into account ball motion. If it's hitting the left wall, it's going negative in position.... calculate the 
negative for the collision, not the positive!

#2: Unable to transfer boolean across classes without going through issues.
Solution?:Move ball randomizer to the ball class..... or a long annoying process of transfering numbers and selecting from there.

#3: Likely a syntax error. Unable to directly minus positioning through methods. Must figure out how to do this. Big requirement,
both ball and paddle.
Solution: use getter and operator and math within setter.

#4: Height is not being detected up top at all, and its messing up the collision detection for the paddle. Unsure why.
Solution: Bottom is now calculating correctly. The top not so much. placed in a temporary wall. The player paddle correctly
deflects from the top. From the side.....

#5: If connected right, the ball can enter the paddle from either side of the paddle, glide through it, and exit the other side.
This causes a massive score increase. I'll do what most game developers do nowadays with bugs and just call it a feature.

#6: When a new high score is intended to overwrite the first detected lower score, an inconsistant bug occurs. Sometimes the score
does get over written. Sometimes ALL the scores are over written, and sometimes NONE of the scores are overwritten.

#7:Rarely, the ball maybe get stuck to a wall or the roof. This rapidly climbs the score. Sometimes once the ball gets to the end
of the play window, it may continue off the screen, infinetely climbing the score, never ending. Most commonly, when this bug
occurs, the ball can become unstuck by colliding with the end however, and continue play with an inflated score.

#8: Unable to implement true collision detection, as in the way it is done in the pong demonstration. I had to fall back and use
standard number equalisation.

Conclusion: I believe i'm beginning to understand how complex programming can be. I was met with a number of challenges that,
with enough research and discussion with my fellow classmates and tutor, I managed to overcome. It's been a fun assignment 
I look forward to learning more, in particular, how to really use collision detection.

*/
