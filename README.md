# BOX

#### Game Design:

Working like Go or Othello in terms of strategy, the game is a two player game where the players try and create boxes on the displayed grid. Whoever fills in the last line on a box gets an extra turn. This leads to a gameplay with typically two stages, the “map creating” stage, where non-committal lines are placed for the purpose of delaying making a box (as trying to make a box outright would result in it getting stolen), and then the “cascading stage” where players would be forced to make boxes, and would have to make trades and get as many boxes as they could while denying their opponent boxes in turn.

#### Creating the Game:

The end result had me working with over 1600 lines of code, 100+ boolean signals, and hours and hours of writing and playtesting. The first part(s) of the project, I was just trying to figure out how the VGA worked. 


#### Issues:

While creating the movement for the indicator-line, I was unable to properly bind one press of the corresponding button to a 1 unit shift. This was because of the speed of the clock. In other words, when trying to switch the indicator-line position over just one space, the indicator-line would go to the end of the grid (instead of just shifting 1 unit). [This](https://stackoverflow.com/questions/14493625/vhdl-incrementing-register-value-on-push-button-event) 

<a href="https://stackoverflow.com/questions/14493625/vhdl-incrementing-register-value-on-push-button-event" target="_blank">New Tab</a>
post saved my life because it solved the problem (allowed me to properly increment the clock, which allowed the pushbuttons to actually be read by the program). I also used a debouncer to try and solve this problem, although the script for incrementing was ultimately more useful.

Another large issue was having the boxes fill in with the correct color when 2 boxed were finished in one turn. Instead of the boxes being one color (the color that corresponded to the player that completed the boxes), they would come out in both colors and change the next line at random. I kept trying to fix the issue but at one point we ended up having the filled in boxes change colors.... If this happens, then you can turn to your opponent and say "Just kidding! This isn't the Box Game.. It's Box Drawing with Friend."


#### Rules:

The objective of this 2-player game is to make more boxes than your opponent. 
The controls are as the following:

#### Controls:

* btn0 : draw line
* btn1 : move right
* btn2 : up/down depending on switch 0
* btn3 : move left

* switch0 : if on, btn2 is up. if off, btn2 is down.
* switch1 : choose between horizontal and vertical line.
* switch2 : in case of bug, moves the cursor back to the first line. make sure this is off when making the next move.
* switch9 : when on, it resets the game.


 <video src="boxGame.mp4" width="320" height="200" controls preload></video>
