"fourdiopolis" by Andrew Schultz

the story description is "Teleporters and such"

the story headline is "An entirely unnecessary sequel"

Procedural rule: ignore the print final score rule. 

book variables

quality is a kind of value. the qualities are chums, biz, party, relax, stuffly, or youish.

ns is a number that varies. ew is a number that varies. ud is a number that varies.

your-tally is indexed text that varies.

posschars is a number that varies.

bounds-warn is a truth state that varies.

ignore-remaining-dirs is a truth state that varies.

the player carries the task list.

carry out examining the task list:
	repeat through table of findies:
		say "[descrip entry] @ [sector-num of descrip entry], ";

when play begins:
	now your-tally is "";
	now right hand status line is "[score]/[number of rows in table of findies]+[number of rows in table of scenery]";
	now ns is 0;
	now ew is 0;
	now ud is 0;

to say losted:
	say "You're lost. You have strayed beyond the city bounds. A border droid takes your ID and whisks you back to the center[if posschars > number of characters in your-tally], and you decide to cancel the rest of your walking plans[end if].";
	if bounds-warn is false:
		say "You look at your list, and many of the locations are relatively close to the center. Maybe you don't need to venture near the edges that much.";
		now bounds-warn is true;
	now ignore-remaining-dirs is true;

chapter stubs

to say it: [i is a direction]
	say "[italic type]";

to say b:
	say "[bold type]";

to say r:
	say "[roman type]";

book the room

outside-area is a privately-named room. printed name of outside-area is "Sector [sec of ud][sec of ns][sec of ew]".

the transporter is scenery in outside-area. "The transporter--well, the details are inside, and they're not important. You can just go h, i, j or k, and it'll understand that. No need for red tape."

check examining the transporter for the first time:
	say "You review the literature on the transporter about the three approved teleport directions: h, i, j and k, and something about quaternions, and something else about how you can't have people passing each other in opposite directions in a teleportal field, or BAM. It's all pretty standard stuff."

check entering transporter:
	say "You can just try to go the various directions: h, i, j, or k."

section location

to say character number (N - a number): (- print (char) {N}; -)

to say sec of (q - a number):
	if q < -9 or q > 9:
		say "X";
	else:
		say "[if q < 0][character number 64 - q][else][q][end if]";

book going

instead of exiting:
	say "Out? Of Fourdiopolis? You don't have proper documentation.";

to dirsmack:
	say "In these efficient days, people find using more than one letter for a direction too flowery.[line break]";

before going (this is the don't waste my time with all those extra letters already now rule):
	if word number 1 in the player's command in lower case is "go":
		say "In these sped-up days, the word 'go' is superfluous. Unless you are in charge, like Ed Dunn.'" instead;
	if the player's command matches the text "north", case insensitively:
		dirsmack instead;
	if the player's command matches the text "south", case insensitively:
		dirsmack instead;
	if the player's command matches the text "east", case insensitively:
		dirsmack instead;
	if the player's command matches the text "west", case insensitively:
		dirsmack instead;
	if the player's command matches the text "up", case insensitively:
		dirsmack instead;
	if the player's command matches the text "down", case insensitively:
		dirsmack instead;

check going south:
	now your-tally is "[your-tally]s";
	if ns < -9:
		say "[losted]";
		reset-game instead;
	decrement ns;
		
check going north:
	now your-tally is "[your-tally]n";
	increment ns;
	if ns > 9:
		say "[losted]";
		reset-game instead;

check going west:
	now your-tally is "[your-tally]w";
	if ew < -9:
		say "[losted]";
		reset-game instead;
	decrement ew;

check going east:
	now your-tally is "[your-tally]e";
	increment ew;
	if ew > 9:
		say "[losted]";
		reset-game instead;

check going h:
	now your-tally is "[your-tally]h";
	if ew > 7 or ns > 7 or ud > 7:
		say "The teleporter buzzes ominously. Apparently, you can't zap that way." instead;
	increase ew by 2;
	increase ns by 2;
	increase ud by 2;
	if oops:
		say "[losted]";
		reset-game instead;

check going i:
	now your-tally is "[your-tally]i";
	if ew > 7 or ns < -7 or ud < -7:
		say "The teleporter buzzes ominously. Apparently, you can't zap that way." instead;
	increase ew by 2;
	decrease ns by 2;
	decrease ud by 2;
	if oops:
		say "[losted]";
		reset-game instead;

check going j:
	now your-tally is "[your-tally]j";
	if ew < -7 or ns > 7 or ud < -7:
		say "The teleporter buzzes ominously. Apparently, you can't zap that way." instead;
	decrease ew by 2;
	increase ns by 2;
	decrease ud by 2;
	if oops:
		say "[losted]";
		reset-game instead;

check going k:
	now your-tally is "[your-tally]k";
	if ew < -7 or ns < -7 or ud > 7:
		say "The teleporter buzzes ominously. Apparently, you can't zap that way." instead;
	decrease ew by 2;
	decrease ns by 2;
	increase ud by 2;
	if oops:
		say "[losted]";
		reset-game instead;

check going up:
	if gone-up-or-down is false:
		say "[up-down-cool].";
	now your-tally is "[your-tally]u";
	increment ud;
	if ud > 9:
		say "[losted]";
		reset-game instead;

check going down:
	if gone-up-or-down is false:
		say "[up-down-cool].";
	now your-tally is "[your-tally]d";
	if ud < -9:
		say "[losted]";
		reset-game instead;
	decrement ud;

gone-up-or-down is a truth state that varies.

to say up-down-cool:
	say "The hybrid transport tubes/stairs are designed for optimal pedestrian convenience and exercise potential";
	now gone-up-or-down is false;

to decide whether oops:
	if ew < -9 or ew > 9:
		decide yes;
	if ns < -9 or ns > 9:
		decide yes;
	if ud < -9 or ud > 9:
		decide yes;
	decide no;

to decide which number is new-sec:
	decide on ew * 20 + ns * 20 + ud * 20;

hint-oppo is a truth state that varies.

check going:
	if number of characters in your-tally > 10:
		say "You've been wandering for too long. You get tired, and you figure it's probably best to start over with a clean look on things. You push the button on your teleporter device[if posschars > 11], cancelling the rest of your planned journey[end if], and [if ew is 0 and ns is 0 and ud is 0]everything looks a bit different[else]back you go to the center[end if].";
		now ignore-remaining-dirs is true;
		reset-game instead;
	tally-and-place;

to tally-and-place:
	let A be indexed text;
	now A is your-tally;
	repeat with Q running through things in outside-area:
		if Q is not player:
			now Q is off-stage;
	repeat through table of findies:
		if A is tally entry in lower case:
			if found entry is not 1 and location of what-drops entry is not outside-area:
				move what-drops entry to outside-area;
	repeat through table of findies:
		if A is tally entry in lower case:
			if found entry is not 1:
				say "[descrip entry]";
				now found entry is 1;

chapter diagonals

going southwest is diaging.
going northwest is diaging.
going southeast is diaging.
going northeast is diaging.

outside-area is west of outside-area.
outside-area is north of outside-area.
outside-area is up of outside-area.
outside-area is h of outside-area.
outside-area is j of outside-area.

instead of diaging:
	say "You can't cut through buildings. Even with a teleporter device. Well, apparently you could cut through some lobbies years ago, but surveillance and keycard-doors have taken care of that.";
	
book directions

understand the command "i" as something new.

h is a direction. the opposite of h is i.
i is a direction. the opposite of i is h.
j is a direction. the opposite of j is k.
k is a direction. the opposite of k is j.

check going i for the first time:
	bracket-say "NOTE: I is a direction, not the command to take inventory. Since you only have one item, X will suffice.";

to bracket-say (tx - text):
	say "[i][bracket][tx][close bracket][r][line break]";

chapter adjust the
 
book whatever

teleported is a truth state that varies.

to reset-game:
	now teleported is false;
	now ns is 0;
	now ew is 0;
	now ud is 0;
	let add-to be number of characters in your-tally;
	if add-to >= 8:
		if score < 5:
			say "You may want to start small and teleport back at first.";
	if add-to > 7:
		now add-to is 7;
	now your-tally is "";
	now all visible quasi-entries are off-stage;
[	if door to ed is visible:
		now door to ed is off-stage;
	move player to outside-area;
	if hint-block is false and just-found is false:
		consider the try-a-hint rule;
		if the rule succeeded:
			if hint-ever-block is false:
				now hint-ever-block is true;
				say "[line break][italic type][bracket]NOTE: you can toggle hints like this by typing hh.[close bracket][roman type][line break]";
	now just-found is false;]
 
book beginning

when play begins:
	say "You're with the rebels now.";

book entries

a quasi-entry is a kind of thing.

the front door is a quasi-entry.

the ominous door is a quasi-entry.

the tiny schoolhouse is a quasi-entry.

check entering ominous door:
	end the story;

check going inside when a quasi-entry is visible:
	try entering a random visible quasi-entry instead;

check entering a quasi-entry:
	choose row with tally of your-tally in table of findies;
	say "[foundit entry]";
	increment the score instead;

book what to find

to say sector-num of (i - indexed text):
	let q be i in lower case;
	let z be number of times q matches the text "e" - number of times q matches the text "w" + 2 * (number of times q matches the text "h" - number of times q matches the text "i" - number of times q matches the text "j" + number of times q matches the text "k");
	let y be number of times q matches the text "n" - number of times q matches the text "s" + 2 * (number of times q matches the text "h" - number of times q matches the text "i" + number of times q matches the text "j" - number of times q matches the text "k");
	let x be number of times q matches the text "n" - number of times q matches the text "s" + 2 * (number of times q matches the text "h" + number of times q matches the text "i" - number of times q matches the text "j" - number of times q matches the text "k");
	say "[sec of x][sec of y][sec of z]";
	

table of findies [tof]
tally (text)	descrip (text)	foundit (text)	what-drops	found	findtype
"Dennis"	"friend"	"You found Dennis!"	front door	0	chums
"die"	"a place to prank"	"You walk in and you die."	ominous door	0	stuffly

[a gan argues whether a miscreant should be smacked up or down]
[payoffs to gangs and government]
[opposing parties on what to compromise next]

table of scenery [tos]
tally (text)	descrip (text)	foundit (text)	findthing	found	findtype
"inn"	"place to rest"	"You found the inn!"	place to spend	0	biz
"kink"	"illicit pleasure joint"	"Oh dear! You're not sure what's going on here. You're not sure you want to look. But these people are pro-freedom, for sure. You gain a few recruits."	0	biz
"nein"	"the German resistance"	"You don't know much German, but you know enough..."	0	stuffly
"hens"	"chicken farms"	"Well, organic farms are always good. You'll need lots of food."	0	stuffly
"die"	"sacrifice yourself"	"Well, it's your choice..."	0	stuffly
"sines"	"advanced math lesson"	"You endure a very useful trigonometry lesson."	tiny schoolhouse	0	youish