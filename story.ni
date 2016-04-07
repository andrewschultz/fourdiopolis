"Fourdiopolis" by Andrew Schultz

[b15 or ed5]
["keen seekin"]
["die"	"a place to prank"	"You walk in and you die."	ominous door	0]
["undid"	"lets you go search for friends again"]

the story description is "Threediopolis with Teleporters and Such"

the story headline is "Threediopolis: Chug Chug Next Verse"

Procedural rule: ignore the print final score rule. 

volume starting stuff

release along with a website.

release along with an interpreter.

release along with cover art.

the release number is 1.

section includes

include basic screen effects by Emily Short.

Include (- Switches z; -) after "ICL Commands" in "Output.i6t".

chapter stubs

to set-your-table (myt - a table name):
	now your-table is myt;
	repeat through your-table:
		now found entry is 0;

to say email:
	say "blurglecruncheon@gmail.com"

to wfak:
	if debug-state is false:
		wait for any key;

to debug-say (x - text):
	if debug-state is true:
		say "[bold type]DEBUG:[roman type] [x][line break]";

to show-accomp:
	let count be 0;
	if debug-state is false:
		continue the action;
	repeat through table of accomplishments:
		increment count;
		say "[count]: [solved entry][line break]";
	say "Current table: [your-table].";

section transcripting stub

Include (-
[ CheckTranscriptStatus;
#ifdef TARGET_ZCODE;
return ((0-->8) & 1);
#ifnot;
return (gg_scriptstr ~= 0);
#endif;
];
-).

To decide whether currently transcripting: (- CheckTranscriptStatus() -)

book variables

debug-state is a truth state that varies.

your-table is a table name that varies.

ns is a number that varies. ew is a number that varies. ud is a number that varies.

your-tally is indexed text that varies.

posschars is a number that varies.

bounds-warn is a truth state that varies.

ignore-remaining-dirs is a truth state that varies.

the player carries the task list.

description of task list is "BUG".

description of player is "[one of]You don't look particularly odd, but authorities and such have always said there's something suspicious about you. Lately, you've sort of wished there was. [or][stopping]You should blend in nicely with the scenery for all the tasks you need to do."

to say farness of (x - indexed text):
	let q be the number of characters in x;
	if q > 10:
		say "buggily far";
	choose row q in table of far blab;
	say "[dist entry]";

table of far blab
dist
"buggily near"
"buggily near"
"very near"
"near"
"kinda near"
"kinda far"
"far"
"very far"
"extra far"
"WAY far"

hidden-inside is a truth state that varies.

list-exam is a truth state that varies.

carry out examining the task list:
	let Q be number of rows in your-table;
	let Q2 be 0;
	repeat through your-table:
		increment Q2;
		if the remainder after dividing Q2 by 5 is 1:
			say "--";
		if found entry is 1:
			say "[bold type][if your-table is table of friends][tally entry in title case][else if your-table is table of last names][tally entry in upper case][else][tally entry][end if][roman type]";
		else:
			say "[descrip entry] @ [sector-num of tally entry] ";
			say "([farness of tally entry])";
		if the remainder after dividing Q2 by 5 is 0:
			say ".";
		else:
			say ", ";
	say "[line break]There's a note scribbled in that you probably have to use a transporter to get to any of these places.";
	if hideout is visible:
		say "Ooh, the hideout to go back to is visible!";
	else if hidden-inside is false:
		say "[line break]You're not sure where to report after reading this, but it's somewhere hidden inside. Where was it? B15? ED5? Anyway, they apparently had a backup shelter, if one got raided." instead;
	else:
		say "[line break]You found the place hidden inside to return to. [if score > 14]Maybe you can go there, now[else]But you might not want to go back yet[end if].";
	if score > 14:
		say "You can probably go back. You've done enough. You hope. You think." instead;
	if list-exam is false:
		say "Hmm, you might not want to do these in explicit order. Maybe try and find the nearest ones first to get your feet wet.";
	the rule succeeds;

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

outside-area is a privately-named room. printed name of outside-area is "Sector [sec of ud][sec of ns][sec of ew]". "[outside-rand]."

thiscount is a number that varies.

to say outside-rand:
	increment thiscount;
	if the remainder after dividing thiscount by 2 is 1:
		say "A nonlinear transporter is nearby. You could sneak in, if you're tired of walking";
	else if the remainder after dividing thiscount by 8 is 2:
		say "You've grown oblivious to the whooshing of transport tubes";
	else if the remainder after dividing thiscount by 8 is 4:
		say "Several young hooligans dare a prospective gang member to try to teleport outside the city bounds, unless he's CHICKEN";
	else if the remainder after dividing thiscount by 8 is 6:
		say "A worldly-wise eleven-year-old explains to a ten-year-old that if you jaywalk, do it in the MIDDLE of the street, because thinking BIG. Also, it'll be harder for police cruisers to pull you over";
	else if the remainder after dividing thiscount by 32 is 8:
		say "A couple argues over the safest of six ways to walk to a new neighborhood 1 up 1 north 1 east";
	else if the remainder after dividing thiscount by 32 is 16:
		say "In a fit of civic pride, citizens kvetch that Fourdiopolis will always be superior to Undergroundgrad, which may be the same size, but half of it doesn't COUNT";
	else if the remainder after dividing thiscount by 32 is 24:
		say "A distinguished-looking [if a random chance of 1 in 2 succeeds]wo[end if]man slips a street urchin 1000000 New Scrip for spraying particularly creative pro-government graffiti. The kid is grateful--food for a whole week! Or nutritious food for two days! Whichever";
	else if the remainder after dividing thiscount by 64 is 32:
		say "An idealistic youngun tries to plot how many trips it'd take to visit all of Fourdiopolis's main blocks. He uses up so much scratch paper, he's warned and shooed by a Waste Police droid[one of] (this is the last of the random nonsense)[or][stopping]";
	if thiscount is 64:
		now thiscount is 0;
	
instead of waiting:
	say "Loitering is a serious offense in Fourdiopolis. Officers often patrol for loiterers.";

instead of attacking:
	say "Violence? In this surveilled day and age? Never!"

the transporter is scenery in outside-area. "The transporter--well, the details are inside, and they're not important. It has the letters I, J, K and H in a rough circle, or maybe they're vertices of a pyramid, or something. Anyway, you can probably just go h, i, j or k, and it'll understand that. No need for red tape."

check entering transporter:
	say "Try going h, i, j or k, instead." instead;

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
	check-nearlies;
	decrement ns;
	if ns < -9:
		say "[losted]";
		reset-game instead;
	check-nearlies;
		
check going north:
	now your-tally is "[your-tally]n";
	check-nearlies;
	increment ns;
	if ns > 9:
		say "[losted]";
		reset-game instead;

check going west:
	now your-tally is "[your-tally]w";
	check-nearlies;
	decrement ew;
	if ew < -9:
		say "[losted]";
		reset-game instead;

check going east:
	now your-tally is "[your-tally]e";
	check-nearlies;
	increment ew;
	if ew > 9:
		say "[losted]";
		reset-game instead;

check going h:
	now your-tally is "[your-tally]h";
	if ew > 7 or ns > 7 or ud > 7:
		say "[no-jump-for-you]." instead;
	check-nearlies;
	increase ew by 2;
	increase ns by 2;
	increase ud by 2;
	now teleported is true;
	if oops:
		say "[losted]";
		reset-game instead;

check going i:
	now your-tally is "[your-tally]i";
	if ew > 7 or ns < -7 or ud < -7:
		say "[no-jump-for-you]." instead;
	check-nearlies;
	increase ew by 2;
	decrease ns by 2;
	decrease ud by 2;
	now teleported is true;
	if oops:
		say "[losted]";
		reset-game instead;

check going j:
	now your-tally is "[your-tally]j";
	if ew < -7 or ns > 7 or ud < -7:
		say "[no-jump-for-you]." instead;
	check-nearlies;
	decrease ew by 2;
	increase ns by 2;
	decrease ud by 2;
	now teleported is true;
	if oops:
		say "[losted]";
		reset-game instead;

check going k:
	now your-tally is "[your-tally]k";
	if ew < -7 or ns < -7 or ud > 7:
		say "[no-jump-for-you]." instead;
	check-nearlies;
	decrease ew by 2;
	decrease ns by 2;
	increase ud by 2;
	now teleported is true;
	if oops:
		say "[losted]";
		reset-game instead;

to say no-jump-for-you:
	say "The teleporter buzzes ominously--a warning that such a displacement might negatively affect the overall safety rating of Fourdiopolis teleporters. Or let you escape without proper documentation. Whichever";

check going up:
	if gone-up-or-down is false:
		say "[up-down-cool].";
	now your-tally is "[your-tally]u";
	increment ud;
	now teleported is true;
	if ud > 9:
		say "[losted]";
		reset-game instead;

check going down:
	if gone-up-or-down is false:
		say "[up-down-cool].";
	now your-tally is "[your-tally]d";
	decrement ud;
	if ud < -9:
		say "[losted]";
		reset-game instead;

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

scenery-found is a number that varies.

to tally-and-place:
	let A be indexed text;
	now A is your-tally;
	repeat with Q running through things in outside-area:
		if Q is not player:
			now Q is off-stage;
	repeat through your-table:
		if A is tally entry in lower case:
			if found entry is not 1:
				if there is no what-drops entry:
					move generic door to outside-area;
					say "BUG we need to get rid of the generic door.";
					continue the action;
				if location of what-drops entry is not outside-area:
					move what-drops entry to outside-area;
					continue the action;
					
after printing the locale description:
	let A be indexed text;
	now A is your-tally;
	repeat through table of solvable tables:
		sweep-up tabname entry;
	repeat through table of scenery:
		if A is tally entry in lower case:
			if found entry is not 1:
				increment scenery-found;
				if there is a what-drops entry:
					move what-drops entry to outside-area;
				else:
					say "[foundit entry][line break]";
					if scenery-found-yet is false:
						bracket-say "this wasn't critical to the game, but it's just something neat to find. There are [number of rows in table of scenery - 1] more to find, but they're meant to be obscure. Congratulations on finding one, though!";
						now scenery-found-yet is true;
					now found entry is 1;
	if your-tally is "hidden" or your-tally is "inside":
		move hideout to outside-area;

to sweep-up (x - a table name):
	if x is table of friends: [never look back]
		continue the action;
	if x is your-table: [don't clue something that dropped just now]
		continue the action;
	if your-table is table of just plain cool stuff and x is not table of last names: [don't clue any of the 3 previous in cool stuff mode]
		continue the action;
	choose row with tabname of x in table of solvable tables;
	if tabsolv entry is true: [don't clue stuff already solved]
		continue the action;
	repeat through x:
		if your-tally is tally entry in lower case:
			if x is table of last names:
				say "You feel very cold. Something unknown but oppressive lies nearby, but you don't have the means or skill to see it, yet.";
				continue the action;
			say "You feel like maybe you got a bit ahead of yourself, here, and maybe you should remember this place for a later time.";
			continue the action;

scenery-found-yet is a truth state that varies.

chapter diagonals

going southwest is diaging.
going northwest is diaging.
going southeast is diaging.
going northeast is diaging.

outside-area is west of outside-area.
outside-area is north of outside-area.
outside-area is up of outside-area.
outside-area is h of outside-area.
outside-area is i of outside-area.
outside-area is j of outside-area.
outside-area is k of outside-area.

instead of diaging:
	say "You can't cut through buildings on your own. Even with teleporters being all the rage. Well, apparently you could cut through some lobbies years ago, but surveillance and keycard-doors have taken care of that.";
	
book directions

giing is an action applying to nothing.

understand the command "i" as something new.

understand "i" as giing.

carry out giing:
	try going i instead;

h is a direction. the opposite of h is i.
i is a direction. the opposite of i is h.
j is a direction. the opposite of j is k.
k is a direction. the opposite of k is j.

check going i for the first time:
	bracket-say "just to check, I is a direction, not the command to take inventory. Since you only have one item, X will suffice.";

to bracket-say (tx - text):
	say "[italic type][bracket]NOTE: [tx][close bracket][r][line break]";

chapter adjust the
 
book whatever

teleported is a truth state that varies.

to reset-game:
	now ns is 0;
	now ew is 0;
	now ud is 0;
	now all visible quasi-entries are off-stage; [probably not neccessary to put all the way up here but just in case]
	let add-to be number of characters in your-tally;
	now your-tally is "";
	consider the plural-almost rule;
	if teleported is false:
		say "You remember hearing that anywhere worth getting to, you had to teleport to. And you didn't, this run.";
		continue the action;
	now teleported is false;
	if add-to > 7 and your-table is table of friends:
		say "You don't know if they'd make you wander THIS much in order to find something. Perhaps you should stick with as short journeys as possible.";
		continue the action;
	if add-to >= 8:
		if score < 5:
			say "Hmm. If you're having trouble finding things, you may wish to start with stuff that's near first, instead of what's first on your list.";
	if add-to > 7:
		now add-to is 7;
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

book entries

a quasi-entry is a kind of thing.

the hideout is a quasi-entry. "Hey! It's that hideout you stumbled on! Well, one of the two!". description is "Yup, you recognize it now."

the otherwise unremarkable hovel is a quasi-entry. description is "It's a bit too calculatedly unremarkable. I mean, most hovels have some special feature, but this has nothing."

the edutainment storefront is a quasi-entry. "You recognize an edutainment storefront by the brain hologram.". description is "You can't tell what's inside. Perhaps you should (C)heck."

the suspiciously ordinary door is a quasi-entry. description is "The wind blows by the door with a nothing-to-see-here whistle."

the generic door that needs replacing is a quasi-entry. description is "Boy! It's generic all right! Generic enough you can just (C)heck to enter."

the front door is a quasi-entry. description is "There's no name on it, but you can (C)heck if anyone's home.".

the ominous door is a quasi-entry. description is "Boy! It's ominous, all right! It might be a mistake to enter.".

the tiny schoolhouse is a quasi-entry. description is "All schoolhouses are tiny. Part of the point of education is to say, you don't deserve a big school, but CEO's deserve a big office."

an abandoned shed is a quasi-entry. description is "You're not sure how the shed is squeezed between buildings, but it is."

a beaten-up store is a quasi-entry. description is "It does look as if a swanker store a street down came by and gave it a noogie or worse."

the movie house is a quasi-entry. description is "These are pretty much illegal, since if people want to watch a movie they can just go watch it themselves. But some movie houses pretend to run propaganda...bot don't really."

a dusty warehouse is a quasi-entry. description is "The warehouse is dusty but clean. So someone is probably living ther."

a fake barn is a quasi-entry. description is "Amazingly, there are no records of health code violations here. The occupants are very lucky."

a grocery store is a quasi-entry. description is "There's no description of sales at all. They probably figure if you have to ask, you don't deserve a discount."

a gymnasium is a quasi-entry. description is "You don't want to look too closely. All the exercise just walking around has been enough."

a museum is a quasi-entry. description is "This museum doesn't even seem to want an ID or a fingerprint or anything!"

an upscale store is a quasi-entry. description is "There's not even a sign saying NO RIFF RAFF NEED APPLY."

a climate-controlled building is a quasi-entry. description is "You know it's climate-controlled by the tinted windows."

the thing called a cozy place with a neon sign is a quasi-entry. description is "The neon sign is fritzing charmingly. Unfortunately, there's a steep license to pay for anything not reading IN HERE."

a surprisingly churchy looking place is a quasi-entry. description is "Even humanism is under suspicion. Of course, nobody's a god, but all the same, you'd hate to be wrong about wasting time caring about one with so much real world stuff going on. Besides, if God were active at all, he'd have destroyed the world well before Fourdiopolis set things right."

check entering ominous door:
	say "Assisted suicide is more rigorous than in Threediopolis. A hundred years ago, the Death Panels there (not the healthcare kind, silly!) only gave punditly views on the how and why before you pegged out, but--the authorities realized nobody asked YOU! The person of the moment![paragraph break]You're given surveys...questionnaires...what would you do better? What do you think authorities would do better? No, no, you are just lashing out because you are suicidal.  No, those free striped lollipops are for employees, not clients. Perhaps a moment to reconsider? If you're not in a rush? Ah, yes, even the unsatisfied are satisfied in Fourdiopolis.[paragraph break]";
	say "Erm, yeah. This isn't the best ending. Not at all. You may wish to UNDO.";
	end-with-undo;

check going inside when a quasi-entry is visible:
	try entering a random visible quasi-entry instead;

check entering a quasi-entry:
	repeat through your-table:
		if your-tally is tally entry:
			if there is a foundit entry:
				say "[foundit entry][line break]";
			else:
				say "BUG I forgot to say something clever here.";
			now found entry is 1;
			say "You head back to the center of Fourdiopolis, feeling more confident.";
			increment the score;
			check-silly-comments;
			reset-game;
			do nothing instead;
	if hideout is visible:
		run-the-ending instead;
	say "Oops, should've found something." instead;

to run-the-ending:
	if your-table is table of friends:
		if score < 15:
			say "'Only [score]? That simply won't do. We need someone who can do a bit more...' You're drummed out in disgrace. A month later, though, you're arrested at 2 AM as an associate of the potential rebels.";
		end-with-undo;
		say "'Good job! That's [if score < 18]enough to be promoted to a general runner[else]even better than we hoped[end if]! There's...a few more task lists. We're short of people. Some get lost, and captured. Can you do a bit more?'";
		bracket-say "You can RESTART and you'll have access to a new puzzle. You can also type UNDID to try this again. Or, if you lose your save file, I SEEK KEEN will jump over finding the friends.[paragraph break]But seriously, being able to get through this list is an accomplishment. Go take some time to feel good about yourself. Fourdiopolis is not an easy game!";
		choose row 1 in table of accomplishments;
		now solved entry is true;
		write file of accomplishments from the table of accomplishments;
		end-with-undo;
		continue the action;
	if your-table is table of last names:
		if score is 0:
			say "'Boo! Fink.' they chide you. But they know that with all the supplies ready, they don't need fearmongering anyway. Power to the people, well, hopefully.";
		else if score < 15:
			say "'A bit disappointing, but, well, they'll be exposed with time anyway.'";
		else:
			say "'A majority! Perhaps there is some hope that they can be scared to act before we have to.'[paragraph break]You ask if you can come along for the shenanigans, but they assure you your technical skills are far too valuable. You feel sort of ripped off, until you realize that means all-you-can-eat from the supplies you requisitioned earlier.";
		end-with-undo;
		continue the action;
	if your-table is table of just plain cool stuff:
		if score < 15:
			say "'Well, maybe we can like make Fourdiopolis cooler AFTER the revolution.'";
		else:
			say "'Wow! That's a lot of cool hidden stuff we need more of! That's what we stand for, and what we'll give to the people! Or at least try to! They'll love us! There's just one more thing--we can strike terror into the hearts of the shadow councillors that help run this city. Their names are closely protected--but we know the sectors they live in, and you're just the person to find their cleverly unmarked houses.'";
			say "Congratulations! You've unlocked a final FINAL puzzle. You can search out UNKINDNESS on restart.";
			choose row 5 in table of accomplishments;
			now solved entry is true;
			write file of accomplishments from the table of accomplishments;
		end-with-undo;
		continue the action;
	let lists-done be 0;
	repeat through table of accomplishments:
		if solved entry is true:
			increment lists-done;
	if score < 15:
		say "Your overseers grumble. 'Well, maybe we'll get someone else to do the rest.'";
		end-with-undo;
		continue the action;
	debug-say "Completed [your-table].";
	if your-table is table of education:
		choose row 2 in table of accomplishments;
		debug-say "Chose row 2.";
	else if your-table is table of supplies:
		choose row 3 in table of accomplishments;
		debug-say "Chose row 3.";
	else if your-table is table of marginalized people:
		choose row 4 in table of accomplishments;
		debug-say "Chose row 4.";
	else:
		say "Uh oh. This should not happen. You solved a table you should not have: [your-table]. If you can send [your-table] ";
		repeat through table of accomplishments:
			say "[solved entry] ";
		say "to [email], I'd appreciate that so I can fix this bug.";
		choose row 4 in table of accomplishments;
	now solved entry is true;
	write file of accomplishments from the table of accomplishments;
	if lists-done is 4:
		say "You've gotten all the supplies the rebels need! Now, for the final challenge: find fun stuff that will make a revolution worthwhile. There's--well, we don't know much about having fun, but we're sure other people do.";
	else:
		say "'You did such a good job this run. [score] of 20 is impressive. But hey! There's still a bit more big task lists. We're--well, even shorter of competent people like you to find stuff. There's just [4 - lists-done in words] other big twenty-item tasks left to do, but--it'll be about the same challenge as what you already found.'";
	end-with-undo;

book what to find

to say sector-num of (i - indexed text):
	let q be i in lower case;
	let xn be number of times q matches the text "e" - the number of times q matches the text "w";
	let yn be number of times q matches the text "n" - the number of times q matches the text "s";
	let zn be number of times q matches the text "u" - the number of times q matches the text "d";
	let hh be number of times q matches the text "h" * 2;
	let ii be number of times q matches the text "i" * 2;
	let jj be number of times q matches the text "j" * 2;
	let kk be number of times q matches the text "k" * 2;
	now xn is xn + hh + ii - jj;
	now xn is xn - kk;
	let yn be yn + hh + jj - kk;
	now yn is yn - ii;
	let zn be zn + hh + kk - jj;
	now zn is zn - ii;
	say "[sec of zn]";
	say "[sec of yn]";
	say "[sec of xn]";

chapter friends

table of friends [tof]
tally (text)	descrip (text)	foundit (text)	what-drops	found
"dennis"	"friend"	"He begins telling you about his wonderful friend Jonathan and Jonathan's lovely future wife Elizabeth before getting serious and scared and asking if Christopher has been by yet."	front door	0
"eddie"	"crazy friend"	"He stashes some absurdly low-priced appliances into a closet before running out."	front door	0
"enid"	"friend of five"	"She looks up from writing a book with a bunch of kids running around on the cover."	front door	0
"heidi"	"Swiss friend"	"Thankfully, you hear no yodeling as the door opens."	front door	0
"ike"	"cross, iron friend"	"'I'm ready to take down the sprawling military-industrial complex,' Ike says."	front door	0
"ines"	"Spanish friend"	"She [says-hi]."	front door	0
"isis"	"friend from Egypt"	"She [says-hi]."	front door	0
"jed"	"friend"	"He [says-hi]."	front door	0
"jenni"	"friend who says why not"	"He [says-hi]."	front door	0
"jessie"	"has desirable girl/guy"	"[either-gender]."	front door	0
"jud"	"hey, a friend, almost"	"He [says-hi]."	front door	0
"jude"	"hey, a friend"	"He says 'Oh, I was trying to make a sad song better, but never mind."	front door	0
"judi"	"hey, a friend's female twin"	"She [says-hi]."	front door	0
"june"	"all-seasons friend"	"She springs into action on hearing why you're hear."	front door	0
"ken"	"solves number puzzles halfway"	"He [says-hi]."	front door	0
"kiki"	"friend who can deliver us"	"She gives a bit too sugary speech on how you can do anything you can put your mind to, but it's better than the opposite."	front door	0
"nikki"	"friend"	"She [says-hi]."	front door	0
"sid"	"friend last name L"	"'I'm no Rodrigo Diaz, but [']ell, I'm good enough.'"	front door	0
"susie"	"friend with weird boyfriend"	"'No, they DON'T need a transmogrifier!' Susie booms to someone you can't see. 'Not even one that works!'"	front door	0
"winnie"	"doesn't miss Ke*in"	"Talking with Winnie you feel nostalgia and remember some growing pains."	front door	0

to say says-hi:
	say "[one of]looks around a bit. You give the secret handshake and secret phrase I can't even tell you, it's so secret. 'They need you...uh...'[paragraph break]'Yeah. There.' You look up. They're gone already[or]doesn't have much to say, but hey, if everyone were talkative, nothing'd get done[or]booms 'IT IS TIME!' then apologizes for getting ironically carried away, there[or]engages in a minute's thumb-twiddling before bursting out the door[or]almost tearily pats a potted plant on the windowsill[or]checks the latest whateverball scores before saying, yup, let's get going[or]strikes a few random karate poses, then looks all serious[or]worries briefly that if YOU found this place--no disrespect, but yeah--they're probably safer not at home[in random order]"

to say either-gender:
	let female be false;
	if a random chance of 1 in 2 succeeds:
		now female is true;
	say "You're vaguely surprised the respondent is [if female is true]fe[end if]male, but it doesn't really matter either way, of course. 'I know where to be.' They run off"

table of friend yay
count	comment
1	"Well, you found someone. That's a good start."
3	"You've got a bit of a crowd, but you know you can do more."
6	"It's starting to make sense. The tougher ones should be a bit easier now, you hope."
10	"Halfway there."
15	"You're probably doing well enough to return. Not perfect, but hey, if you worry about perfection, you won't get everything done."
19	"The last one's the toughest. You think."

chapter middle tables

table of education [toe]
tally (text)	descrip (text)	foundit (text)	what-drops	found
"hijinks"	"political subversion"	"You learn tricks to make political rallies and flash mobs work with a minimum of arrests."	edutainment storefront	0
"hikes"	"back to almost nature"	"You get a brief virtual reality sample of the unlivable wilds beyond the cities."	edutainment storefront	0
"issues"	"detailed wonkery"	"You learn not only the important issues but the details--and even how to skewer people who go too far into details."	edutainment storefront	0
"keen"	"motivation"	"You can never have too much motivation. Unless you spend too much time motivating yourself, you forget to do anything."	edutainment storefront	0
"kind"	"decency"	"You learn not only how to be nice but how to fool people into thinking you're nice enough they better like you and if they're doubting that, they feel guilty. You'll only use the second in an emergency. You hope."	edutainment storefront	0
"kinesis"	"mobility"	"You learn how to sneak around authorities even if you're not naturally nimble."	edutainment storefront	0
"nein"	"foreign languages, or not"	"You learn useful things to say in different languages: yes, no, please, and Dude, Whatever."	edutainment storefront	0
"sensei"	"Eastern wisdom"	"You put up with perhaps a bit more mumbo-jumbo terminology than you want, but the break from extreme capitalism, while heretical, is surprisingly soothing."	edutainment storefront	0
"sines"	"advanced math lesson"	"You endure a very useful trigonometry lesson, you think. You remember which is sine and which is cosine, but now you've knocked out secant and cosecant."	tiny schoolhouse	0
"sinews"	"proper physical health"	"You get a quick work-couse in physiology, necessary for protestors and operatives who need stamina."	edutainment storefront	0
"sins"	"what authorities do wrong"	"You get a lecture on things you didn't even know were wrong with Fourdiopolis. It's short on charisma, but that's somewhere else."	edutainment storefront	0
"sinus"	"breathing techniques"	"You ace the course on breathing techniques and get a 10% off coupon for snoring surgery. Wait, you know you missed that one question...are you being suckered, here? Surgery's expensive!"	edutainment storefront	0
"skew"	"emphasizing the right parts of the truth"	"You learn several ways to embarrass people into a corner even when you don't need to. Because if you don't first, they will."	edutainment storefront	0
"skies"	"how to look up"	"Ah! The sky! You don't get to see much of it. Only 1/19 of Fourdiopolis residents do. Well, less, because the people at the top have big sprawling mansions. Still, it's a source of inspiration."	edutainment storefront	0
"uhhuh"	"intuition and persuasivity"	"You learn about tone of voice and gestures, and how different words that sound the same aren't."	edutainment storefront	0
"undenied"	"never giving up"	"You're stuck watching heroic dramatic clips from ancient sports like American football (too violent) and un-American football (too scoreless). They're more inspiring than you'd have guessed!"	edutainment storefront	0
"whenwewin"	"planning for post-victory"	"You learn the optimum amount of planning in advance so you're actually confident, but not overconfident. You're confident you understand, but not too confident."	edutainment storefront	0
"whine"	"learning to complain right"	"You learn the best subtleties in voice inflection when working on, err, with individuals, small crowds, or large crowds. It seems so obvious now!"	edutainment storefront	0
"wise"	"general smartitude"	"You learn not only generalities to make you feel clever but generalities to make you seem clever to others! Oh boy!"	edutainment storefront	0
"wushu"	"martial arts"	"You hear some blather about martial arts, not a sport, or some game that requires no mental commitment."	edutainment storefront	0

table of education yay
count	comment
1	"You feel smarter already!"
3	"Even though you're only getting passing acquaintance with activism, it all seems simpler than actual school and the media led you to believe."
6	"A few more cracks appear in what you learned when you were younger. You don't know everything, but a lot just makes sense."
10	"Suddenly all the Accelerated Learners feel like frauds, sort of. If only you'd had more life experience, you'd realized they were hot air. But maybe you wouldn't be able to get lost like this."
15	"You reflect it's right that your abstract reasoning has led you to seeing so much cool stuff. Internet, schminternet. They'll probably be happy with what you found."
19	"Just one more!"

table of supplies [tos]
tally (text)	descrip (text)	foundit (text)	what-drops	found
"desks"	"boring office stuff"	"Well, we all need desks. Desks just aren't exciting. Maybe they can fold up, or have weird shapes, or even have cool drawers. But they're never exciting. At least they're ergonomic and space-efficient these days."	dusty warehouse	0
"dishes"	"something to eat on"	"Wow! All kinds of dishes! They're all biodegradable, too. They're a bit ugly, but you can't have everything. In a pinch, they can also be broken and thrown as weapons. Not very good weapons, but better than nothing."	beaten-up store	0
"disused"	"abandoned place to hide and plot"	"Shadow groups can always use a good disused place. Until it gets too dis-dis-used."	abandoned shed	0
"hens"	"chicken farms"	"Well, organic farms are always good. You'll need lots of food."	fake barn	0
"hides"	"warm weather clothing"	"Actually, most weather is warmer than it was years ago, but humans['] bodies adapted to be faster and leaner, so they need warm clothes well above freezing now."	upscale store	0
"juju"	"occult help (or can't-hurt)"	"Juju may not be effective, but it brings people together, and it feels fun. Especially because you get to slap a drum around a bit, and stab a doll representing the Mayor-Overlord."	dusty warehouse	0
"junk"	"not their treasure"	"You find all kinds of cool junk here. Some was being saved for the right customer--someone who could make anything out of junk. Like people back at headquarters."	beaten-up store	0
"kiwis"	"fruit"	"Oh, hey! It's the genetically modified kind where you don't have to pit the ends out! With edible stickers! Well, everything has edible stickers, but you're a sticker connoiseur."	grocery store	0
"nines"	"super swank clothes"	"Of course, none of the rebels would own any of this for themselves. But it's still fun to have the chance to wear stuff like this, once. You notice a tag: please shower immediately before and after wearing."	upscale store	0
"nukes"	"only if we're desperate or MAD"	"Fortunately, you can't just trip over a nuke and set it off. But unfortunately, every good subversive organization has to have one, even the nonviolent ones. Especially the nonviolents!"	abandoned shed	0
"sheds"	"storage"	"A fellow named Arthur makes a purchase ahead of you and get far too excited he has three now, so people can stop laughing at him."	abandoned shed	0
"skein"	"more yarn than we'll ever need"	"All types and colors of yarn here--synthetic, real, thick, thin."	upscale store	0
"skunks"	"stink bomb raw materials"	"Organic chemists have still not found anything as offensive yet harmless as a skunk scent. Someone proved the near-impossibility of that back in 2150, but people still try."	fake barn	0
"swine"	"porcine stuff"	"It doesn't smell too good in here, and you've never been able to reconcile that with just how good bacon smells. Or you remember bacon smells. Which is even better than bacon bits!"	fake barn	0
"undies"	"unseeable wearables"	"All sizes of underwear! All clean! The underwear is recycled from holey socks, and the holey underwear will be recycled back into socks. The circle of life!"	beaten-up store	0
"unhewn"	"rock to carve"	"You're not sure how it's going to be teleported back to headquarters--there's still a weight limit, though it's higher than it needs to be--or why it's here. But, you're in execution, not planning."	dusty warehouse	0
"unis"	"clothes to have pride in"	"Man! These uniforms look spiffy. You're a bit worried they'd kind of expose the revolution, but--they're reversible into plain and boring! Woo!"	dusty warehouse	0
"win"	"stupid pro-government buttons for cover"	"'So! Ready to whip inflation now?' The--the guy seems serious. You look horrified. 'Ah, good, just a test. If that didn't upset you, you might be one of the bad guys.'"	dusty warehouse	0
"wines"	"alcoholic beverages"	"Oh man! Not just the freeze-dried stuff, but the really bubbly stuff!"	beaten-up store	0
"wishes"	"stuff to look forward to"	"You look down at your list. 'Yes,' you think to yourself. '[if score > 18]Celebrating with the people hidden inside[else]A few of these[end if] will be more fun to go through than this one.'"	surprisingly churchy looking place	0

table of sup yay
count	comment
1	"You're a bit surprised that you were able to requisition anything. You worried you were going to get arrested."
3	"It's getting easier to ask with time. Of course, you aren't asking for YOU."
6	"The more people are willing to give supplies, the less popular you realize the government IS. Or, well, maybe these people can be fooled..."
10	"You've always been made to feel guilty for accepting free stuff, and you never found yourself businesslike, but...just going through the motions, you feel less boxed-in about wanting more."
15	"You're a bit worried the supplies won't be able to fit in the small hideout you remembered. Eh, well."
19	"You feel a twinge wondering if you can't find that last one. Perhaps it was important in ways you didn't realize. 'If you found the others, why didn't you...?' and somehow 'the last one's the toughest' won't quite wash with what you know."

table of marginalized people [tow]
tally (text)	descrip (text)	foundit (text)	what-drops	found
"denied"	"folks rejected by society or health plans"	"There are always disgruntled people to bring to a cause."	hovel	0
"disses"	"comedy insult club"	"Many people here applaud you for getting them to join the fight to freely insult the powerful as well as the poor -- even if you might not be able to formulate an insult yourself."	neon	0
"djinn"	"bottled up powerful ally"	"You--you don't really believe in magic. But still, that smoky looking bottle has got to help someone. You just hope whoever uses it is up on their wishing theory and doesn't get rooked."	warehouse	0
"dukes"	"right neighborly fellers from Kentucky"	"Hoo-wee! You learn some good lessons about loving your oppressive neighbors, knowing it could be worse, but not fearing what could be worse. You don't know about owning an orange vehicle."	fake barn	0
"hunks"	"guys unnecessarily muscular"	"If you're muscular and don't have a physical job and aren't in the army, Fourdiopolis frowns on that. Sure, it's not illegal...but..."	gymnasium	0
"huns"	"allegedly barbarous, but we can't all be gentle"	"You need some people who have, sadly, been pigeonholed for their ancestry. They know others have it worse, but still..." 	hovel	0
"hussies"	"unfairly labeled women"	"Oh, sure, men get boxed in for talking back. It just still seems to happen more frequently to women. And these women would like to change that."	hovel	0
"indies"	"non-mainstream art"	"You persuade the people here that their art will get more exposure with the Fourdiopolis power structure down. But don't worry, you won't become totally mainstream!"	hovel	0
"inked"	"tattooed tough guys"	"Tattoos are illegal now unless they're government-enforced. Okay, if you manage to hide them certain places...but some people have had enough."	warehouse	0
"jedi"	"star wars fans"	"You learn some cool mind tricks and some awesome classic movie trivia. It's sad that people can't enjoy their own favorite movies."	movie house	0
"jejune"	"political pranksters"	"You run into people who want to commit political pranks in support of being able to commit more political pranks. It's sure better than power for power's sake."	hovel	0
"jeune"	"young idealistic foreigners"	"Kids from another land talk about all the stuff they don't have to beg for. You almost feel guilty wanting it, too."	tiny schoolhouse	0
"junkies"	"people hooked on caffeine NOT from overpriced coffee"	"Apparently there is a whole repository of places to get caffeine. All kinds of rainbow colored pop! And worse, Well, that certainly seems worth fighting for."	hovel	0
"kids"	"useful idealists"	"Some kids aren't 'practical' enough to accept the reality of life in Fourdiopolis. Their views are refreshing."	tiny schoolhouse	0
"kink"	"illicit pleasure joint"	"Oh dear! You're not sure what's going on here. You're not sure you want to look. But these people are pro-freedom, for sure. You gain a few recruits."	warehouse	0
"ninnies"	"disparaged as stupid"	"Wow! You're impressed. Some people make a bad first impression because they don't seem as smart as they should...[i]but they have spent more time becoming smart than looking smart[r]. Wow!"	hovel	0
"sheikhs"	"foreign aid"	"The geopolitical blah blah has people from foreign countries under the thumb of city-states like Fourdiopolis. They have power in their own country--but they're concerned emigrants to Fourdiopolis have been treated poorly."	hovel	0
"sike"	"purveyors of annoying slang"	"All annoying slang eventually becomes cool again. And besides, it might annoy the right people, done right. You learn a bit from them."	hovel	0
"snide"	"beyond confidence"	"These people aren't arrested for being snide but for being snide about the wrong things. No--no, they're being snide about the right things, right? You're pretty convinced by this. They're less obnoxious than government propaganda, and sometimes it's not enough to say 'It's not fair.'"	hovel	0
"swiss"	"people totally not neutral any more"	"Fourdiopolis officials have played the game of 'oh, even neutral people can see we're right...' but here are some neutral people who feel differently!"	hovel	0

table of people yay
count	comment
1	"Well, maybe you don't agree with these people, but they shouldn't be entirely repressed. And they're not the only ones!"
3	"People opposed to the government were painted as useless hippies, but maybe not."
6	"You'd always been taught not to be around people too different from you--but you've liked the new people you meant. They've found you different and interesting too."
10	"Whether or not people have been physically different, they've been interesting to be around."
15	"You also think you've done enough--and the people you didn't ping, you'll get them later?"
19	"You've come to realize that the government gives lip service to diversity but only at the price of messing everyone over equally. There's some philosophical fight over how much it helps until it hurts, and you always felt suspicious about their over-aggressive PR campaigns, but actually meeting people has opened your eyes a bit."

chapter end table

table of just plain cool stuff [toj]
tally (text)	descrip (text)	foundit (text)	what-drops	found
"dunks"	"basketball show #1"	"Oh man! The old ten-foot rims are cheating a bit, but it's still fun to watch. You forget when dunking was outlawed on national television, or why, or when Basketball Drones overtook Basketball Jones."	gymnasium	0
"dusk"	"a beautiful sunset, or a close enough rendition"	"Oh wow! That's beautiful! You catch yourself thinking what range of RGB colors is in the sunset, before realizing you're missing the point."	climate-controlled building	0
"hisses"	"snake exhibit"	"Well, not all snakes are poisonous, though the ones outside of cities are. Still, it's neat to see. For free. I mean, there are zoos and private forest preserves, but it'd be neat to have this."	fake barn	0
"huskies"	"cool dogs"	"Pet ownership isn't really a thing any more. The planet is eating up resources fast enough!"	fake barn	0
"husks"	"corn and its uses"	"So many recipes and things to do with corn are secret now. Or you are arrested if the government catches you without paying a recycling tax. You've seen a lot before, but it's good to see people doing so almost out in the open."	fake barn	0
"inn"	"old fashioned hospitality"	"There are plenty of cheap places to eat if you finish your food within five minutes, but you enjoy just sitting and...oops, other people are waiting. It's been a half-hour."	cozy place with a neon sign	0
"kisses"	"love for all"	"You don't have time for this, but it's nice to see people not being charged for a cuddle or whatever."	cozy place with a neon sign	0
"newsdesk"	"old propaganda center"	"It's fun to laugh at the old stuff. Even though, really, the new stuff is just the old stuff packaged up better. It's hard to remember, though, with how flashy it is."	museum	0
"sheesh"	"silliness"	"Even nonsense has been formulated as optionally enjoyable these days. And it's hard to break from that formula, or break from the formula to break from the formula. You just let it all out here. And you feel you helped others do so, too, somehow."	cozy place with a neon sign	0
"shininess"	"pretty and bright"	"Life is dingy, except for commercials. It's nice to see something shiny that doesn't make you feel indebted."	museum	0
"skinks"	"cool odd animals"	"Apparently there are going to be new species in the wild by 2400. You don't have that long, even with increased life expectancy. Fortunately, enough weird ones are still left."	fake barn	0
"skis"	"fake snow, no fake fun"	"You spend fifteen minutes in a weird tumbling machine with little white flakes coming down on you. They'll be back in ten years, people say, once the anti-global warming measures come back. But some skeptics worry the temperature will keep dropping, and that's not good."	climate-controlled building	0
"sunk"	"replica of the Titanic"	"Such splendor, despite a song playing in the background that makes you cringe."	museum	0
"sunshine"	"general cheeriness"	"There are lucky places on the sides and edges of Fourdiopolis where you can get sun. Maybe you can sneak back to the center from a teleport, or teleport out to get there. But it's risky! Here, well, the miracles of optics let you get real sunlight without the UV rays."	climate-controlled building	0
"swish"	"basketball show #2"	"Here, unathletic people drain twenty three-pointers in a row, or a hundred free-throws, and laugh about how their favorite players can't to the same."	gymnasium	0
"unwind"	"where and how to relax"	"Oh my goodness! A chair that leans back? And it's comfy and ergonomic? And just anyone can sit in it? And they don't have to do hard thinking work? Why? Just because? Well, okay..."	cozy place with a neon sign	0
"weekend"	"(former) time of rest"	"You imagine having two whole days of getting paid without doing anything--per week! Not that you have two whole days, now. You only remember being fined for not taking vacation because maybe you were trying to guilt trip your employers. But it seems a bit less awful now."	cozy place with a neon sign	0
"whee"	"fun fun fun"	"Hyperspace technology allows roller coasters to fit in a very small space indeed."	cozy place with a neon sign	0
"whinnies"	"horsies"	"The horses look a bit sad, as if they'd like somewhere to run. But they nuzzle you and all that. What if there were places they could walk around more? Places everyone could still see them?"	fake barn	0
"winks"	"flirty place"	"Of course there are mating rituals, but there's a certain amount of rigor in them. You get looekd at funny if you break too many rules. But here, a wink needs no excuses. It's not just about romantic stuff, either."	cozy place with a neon sign	0

table of stuff yay
count	comment
1	"Yes, the world would be a better place with more places like this thriving."
3	"You feel a bit greedy wanting to see more. I mean, there are commercials for super luxuries, but those--they make you feel bad. This leaves you feeling you could contribute in some way."
6	"You always felt like lumping things into Fun and Not Fun was too simple. Now you see there are different ways of fun."
10	"The fun people you've met have been various degrees of exciting. And it's all good!"
15	"You don't know if you can take any more fun. But you've definitely had enough to report back to the hideout."
19	"One more fun thing! But might it be negative overall fun to search for it and get frustrated, or just say, I've had enough fun? Philosophy."

chapter misc table

to say snee:
	say "You feel a sudden stupid desire to buy overpriced sneakers. Maybe at Payless. But everyone shops at PayWayLess these days"

to say hehhuh:
	say "Some laughter at a reasonably articulated point with an obvious wrong interpretation"

table of scenery [tosc]
tally (text)	descrip (text)	foundit (text)	what-drops	found
"die"	"sacrifice yourself"	"Assisted suicide is more rigorous than in Threediopolis. The Death Panels there (not the healthcare kind) give punditary views before you pegged out, but here, you have surveys...quesstionnaires...what would you do better? What do you think authorities would do better? No, no, you are just lashing out because you are suicidal. Ah, yes, even the unsatisfied are satisfied in Fourdiopolis."	ominous door	0
"duh"	--	"Oh, man! You can't believe you missed THAT one. It's obvious now!"	--	0
"ennui"	--	"Yyyyyawn. What's the point?"	--	0
"heed"	--	"Some police give a particularly stern lecture to a citizen not fully obeying some minor law."	--	0
"hehheh"	--	"[hehhuh]."	--	0
"huhhuh"	--	"[hehhuh]."	--	0
"iknew"	--	"Someone covers for looking stupid by explaining they were just being really, really ironic."	--	0
"inkiness"	--	"Everything's a bit cloudy, here."	--	0
"keds"	--	"[snee]."	--	0
"kike"	"an unacceptable slur"	"An unacceptable slur is heard. It's ancient and rare, but none the less offensive. You feel half ashamed coming this way, knowing what you know, and what you might hear."	--	0 [and yes, the author wants to make it clear this is unacceptable. But i didn't want someone stumbling accidentally and saying, well, why no comment on this]
"kkk"	"bad bad people"	"Everyone around here just really, really sucks at life. What else can I say?"	--	0 [super extra double for this but here there's an opportunity to laugh at people a bit I hope]
"knees"	--	"You grab an old ache for a moment."	--	0
"nike"	--	"[snee]."	--	0
"seek"	--	"You spy someone else with a sheet similar to yours. You don't acknowledge them, though. Can't be too careful."	--	0
"seine"	--	"You feel a flavor of Gay Paree."	--	0
"shins"	--	"You grab an old ache for a moment."	--	0
"shun"	--	"You feel very, very alone. People are more than just giving you your space."	--	0
"shush"	--	"'Oh, sure, you can THINK that, just don't SAY it, you know?'"	--	0
"skidded"	--	"A goverment utility vehicle swerves and almost hits someone about to jaywalk. Funny how one is always around, unless you jaywalk REALLY assertively."	--	0
"skunkweed"	--	"It smells bad here, like it should be illegal."	--	0
"unkind"	--	"You worry someone's going to do something mean to you, but don't worry, they're only thinking about it. Especially with video cameras all around."	--	0
"weenies"	--	"An old long-abandoned hot dog hut lies between two places of Serious Business. Your grandparents constantly babbled about the misspelled version from THEIR youth being so tasty, and--well--maybe the misspelling did make things tastier."	--	0
"whew"	--	"You just barely escaped something, there! You don't know what, but it would've been pretty bad."	--	0
"whisk"	--	"You trip on an odd cooking supply you don't know the name of. People don't have time for that, with so much virtual reality to experience these days, and machines do it all good enough."	--	0
"whiskies"	--	"Wow! People seem to be having a rip roaring time, here[whisky-wine]. You don't have time for such carousing at the moment, but it boosts your spirits."	--	0

to say whisky-wine:
	if your-table is table of supplies:
		choose row with tally of "whisky" in your-table;
		say ". [if found entry is 0]You figure there may be something a bit more restrained at the end of your list--a different way to imbibe[else]you already got some wines, but whiskies should probably best wait to celebrate a successful revolution[end if]"

chapter nearlies table

to check-nearlies:
	repeat through table of nearlies:
		if tname entry is your-table and your-tally is tally entry:
			now found entry is 1;

to decide whether found-yet of (x - indexed text):
	repeat through your-table:
		if tally entry is x:
			if found entry is 1, decide yes;
			if found entry is 0, decide no;
	decide no;

this is the plural-almost rule:
	repeat through table of nearlies:
		if found entry is 1:
			if found-yet of mult entry:
				now found entry is 2;
			else:
				say "On your way back to the center, you wonder if you could've gone just a bit farther to find something. You felt like you were close.";
				now found entry is 0;
				the rule succeeds;
	the rule succeeds;

table of nearlies [ton]
tally	mult	tname	found
"dis"	"disses"	table of marginalized people	0
"duke"	"dukes"	table of marginalized people	0
"hunk"	"hunks"	table of marginalized people	0
"indie"	"indies"	table of marginalized people	0
"junkie"	"junkies"	table of marginalized people	0
"kid"	"kids"	table of marginalized people	0
"sheikh"	"sheikhs"	table of marginalized people	0
"hijink"	"hijinks"	table of education	0
"hike"	"hikes"	table of education	0
"issue"	"issues"	table of education	0
"sine"	"sines"	table of education	0
"sin"	"sins"	table of education	0
"desk"	"desks"	table of supplies	0
"dish"	"dishes"	table of supplies	0
"hen"	"hens"	table of supplies	0
"kiwi"	"kiwis"	table of supplies	0
"nuke"	"nukes"	table of supplies	0
"shed"	"sheds"	table of supplies	0
"skunk"	"skunks"	table of supplies	0
"undie"	"undies"	table of supplies	0
"wish"	"wishes"	table of supplies	0
"dunk"	"dunks"	table of just plain cool stuff	0
"hiss"	"hisses"	table of just plain cool stuff	0
"husk"	"husks"	table of just plain cool stuff	0
"kiss"	"kisses"	table of just plain cool stuff	0
"skink"	"skinks"	table of just plain cool stuff	0
"ski"	"skis"	table of just plain cool stuff	0
"wink"	"winks"	table of just plain cool stuff	0
"wine"	"wines"	table of supplies	0

chapter final table

table of last names [tol]
tally (text)	descrip (text)	foundit (text)	what-drops	found
"dejesus"	"Spanish"	"[mark-away]."	suspiciously ordinary door	0
"dinh"	"Vietnamese"	"[mark-away]."	suspiciously ordinary door	0
"dinkins"	"None"	"[mark-away]."	suspiciously ordinary door	0
"dinwiddie"	"None"	"[mark-away]."	suspiciously ordinary door	0
"dudek"	"Polish"	"[mark-away]."	suspiciously ordinary door	0
"eddins"	"None"	"[mark-away]."	suspiciously ordinary door	0
"ennis"	"None"	"[mark-away]."	suspiciously ordinary door	0
"eskew"	"None"	"[mark-away]."	suspiciously ordinary door	0
"henke"	"None"	"[mark-away]."	suspiciously ordinary door	0
"hess"	"German"	"[mark-away]."	suspiciously ordinary door	0
"hines"	"None"	"[mark-away]."	suspiciously ordinary door	0
"hsieh"	"Chinese"	"[mark-away]."	suspiciously ordinary door	0
"hsu"	"Chinese"	"[mark-away]."	suspiciously ordinary door	0
"hussein"	"Arabic"	"[mark-away]."	suspiciously ordinary door	0
"ishii"	"Japanese"	"[mark-away]."	suspiciously ordinary door	0
"jenkins"	"None"	"[mark-away]."	suspiciously ordinary door	0
"jensen"	"Swedish"	"[mark-away]."	suspiciously ordinary door	0
"keene"	"None"	"[mark-away]."	suspiciously ordinary door	0
"keese"	"None"	"[mark-away]."	suspiciously ordinary door	0
"knudsen"	"Danish"	"[mark-away]."	suspiciously ordinary door	0
"kuhn"	"German"	"[mark-away]."	suspiciously ordinary door	0
"niesen"	"Scandinavian"	"[mark-away]."	suspiciously ordinary door	0
"sheen"	"WINNING"	"[mark-away]."	suspiciously ordinary door	0
"shenn"	"None"	"[mark-away]."	suspiciously ordinary door	0
"shin"	"None"	"[mark-away]."	suspiciously ordinary door	0
"sisk"	"None"	"[mark-away]."	suspiciously ordinary door	0
"weeks"	"None"	"[mark-away]."	suspiciously ordinary door	0
"weiss"	"German"	"[mark-away]."	suspiciously ordinary door	0
"whidden"	"English"	"[mark-away]."	suspiciously ordinary door	0
"wisniewski"	"Polish"	"[mark-away]."	suspiciously ordinary door	0

to say mark-away:
	say "You leave a mark on the door and slip a brochure under. You're surprised it's not more secure, but on the other hand, people get suspicious of security others have that they don't. So maybe it's the best way to fool the people for so long"

table of name yay
count	comment
1	"The first councilor."
3	"You haven't been caught, yet. It's still nervy."
6	"Rebelling is almost becoming boring."
10	"You look at the names you have left, and you wonder if focusing on (or not focusing on) ethnic names Says Something About You. Well, it says you're a third of the way there."
15	"Halfway there. You can't believe THAT person--why, they offered token resistance to THAT bill..."
21	"Three-quarters. That is a lot. You have sent a lesson to enough...or have you?"
28	"Perhaps one or two should be left, as an example to the others. Or perhaps not."
30	"That is all. You have done well."

volume undo

include conditional undo by Jesse McGrew.

story-ended is a truth state that varies.

to end-with-undo:
	now story-ended is true;
	end the story saying "[msg]";

to say msg:
	if your-tally is "die":
		say "Hope you enjoyed the silly death";
		continue the action;
	repeat through table of end msgs:
		if mytab entry is your-table:
			say "[if score > 14][winmsg entry][else][losemsg entry][end if]";
			continue the action;
	let q be mids-solved;
	if q is 3:
		say "On to the random stuff";
		continue the action;
	say "[q in words] down, [if score > 14]now only[else]still[end if] [3 - q in words] to go"

to decide which number is mids-solved:
	let retval be 0;
	repeat with tr running from 2 to 4:
		choose row tr in table of accomplishments;
		if solved entry is true:
			increment retval;
	decide on retval.

table of end msgs
mytab	losemsg	winmsg
table of friends	"Maybe next time"	"First task done"
table of just plain cool stuff	"Close, but..."	"All over except the last round"
table of last names	"Well, it was meant to be tough"	"Very impressive indeed"

rule for deciding whether to allow undo:
	if story-ended is true:
		allow undo;
	else:
		say "You can't really quite reverse how and where you walked, or when you teleported. But don't worry, if you get killed somehow, you will be able to undo.";
		deny undo;

volume commands

period-warn is a truth state that varies.

locom-chars is a number that varies. locom-chars is 2.

after reading a command:
	let locom be the player's command in lower case;
	if period-warn is false:
		if locom matches the regular expression "\.":
			say "You don't need to separate commands with periods. You [if score > 1]should've been noted you can munge directions together[else]may find out why in a bit[end if]. In the meantime, they may distract the parser.";
			now period-warn is true;
			wfak;
	if locom matches the regular expression "^<ewnsudhijk \.>*$":
		if number of quasi-entries in outside-area > 0 and the player's command matches "^in$":
			continue the action;
		if number of characters in locom > locom-chars:
			if the player's command matches "undid":
				try undiding instead;
			if the player's command matches "i seek keen":
				try keenseeking instead;
			dirparse locom;
			reject the player's command;

ever-fast is a truth state that varies.

dirparsing is a truth state that varies.

ignore-remaining-dirs is a truth state that varies.

to dirparse (dirlump - indexed text):
	if number of characters in dirlump > 2 and number of characters in your-tally > 0:
		if debug-state is true:
			say "DEBUG: [your-tally] and [number of characters in dirlump].";
		say "You aren't starting from the center. Do you still wish to turbo ahead?";
		if the player consents:
			say "Ok.";
		else:
			say "Just type [b]R[roman type] to go to the center and try again.";
			continue the action;
	if number of characters in dirlump > 13:
		say "That is way too long a trip to even think about.";
		continue the action;
	let allchar be number of characters in dirlump;
	let ef be ever-fast;
	if ever-fast is false:
		say "You pick up the pace of your wandering, there, planning a few blocks ahead.";
		now ever-fast is true;
	now dirparsing is true;
	now ignore-remaining-dirs is false;
	now posschars is number of characters in your-tally + allchar;
	repeat with charnum running from 1 to allchar:
		unless ignore-remaining-dirs is true:
			if character number charnum in dirlump is "w":
				try going west;
			if character number charnum in dirlump is "e":
				try going east;
			if character number charnum in dirlump is "n":
				try going north;
			if character number charnum in dirlump is "s":
				try going south;
			if character number charnum in dirlump is "u":
				try going up;
			if character number charnum in dirlump is "d":
				try going down;
			if character number charnum in dirlump is "h":
				try going h;
			if character number charnum in dirlump is "i":
				try going i;
			if character number charnum in dirlump is "j":
				try going j;
			if character number charnum in dirlump is "k":
				try going k;
			if character number charnum in dirlump is ".":
				bracket-say "ignoring period.";
	now ignore-remaining-dirs is false;
	now dirparsing is false;
	now posschars is 0;

volume random silliness

show-silly is a truth state that varies. show-silly is usually true.

silly-row is a number that varies.

note-bad is a truth state that varies.

cycle-note is a truth state that varies.

every turn (this is the silly stuff rule):
	if show-silly is true:
		if a random chance of 1 in 3 succeeds:
			increment silly-row;
			if silly-row > number of rows in table of silly randoms:
				now silly-row is 1;
				if cycle-note is false:
					bracket-say "You've cycled through all the random text, if you were curious.";
					now cycle-note is true;
			choose row silly-row in table of silly randoms;
			say "[silliness entry][line break]";
			if note-bad is false:
				bracket-say "You can turn this random text off with T. You don't need to interact with citizens on the street in any way.";
				now note-bad is true;
		
table of silly randoms
silliness
"Gang leaders argue whether a disobedient underling should be smacked up or down."
"A political debate over whether payoffs to gangs or governments works better ensues."
"One kid tries to impress others with a story of a poor sap who got teleported into rock, another with a story of someone teleported five hundred feet above solid ground, and another tries to impress them with proof it'd never happen."
"You hear the swishing of sewage flow overhead."

volume meta-verbs

chapter unkindnessing

unkindnessing is an action applying to nothing.

understand the command "unkindness" as something new.

understand "unkindness" as unkindnessing.

carry out unkindnessing:
	if your-table is table of last names:
		say "You're already hunting last names." instead;
	say "This will skip to the final toughest puzzle. Are you sure?";
	if the player consents:
		say "Ok. Have fun.";
	else:
		say "Ok. Back to normal.";
		the rule succeeds;
	repeat through table of accomplishments:
		now solved entry is true;
	set-your-table table of last names;
	the rule succeeds;

chapter abouting

abouting is an action out of world.

understand the command "about" as something new.

understand "about" as abouting.

carry out abouting:
	say "Fourdiopolis is a sequel to Threediopolis. It was inspired by a joke review of Hanon Ondricek in the IFComp 2013 authors['] forum, of an alternate-universe IFComp game called Onediopolis. I posted something like 'Ha ha, of course, if there were a game, it'd be Fourdiopolis, but probably not.'[paragraph break]";
	say "But the idea and the itch were there. The only problem? It really seemed impossible at first. I didn't know what the directions would be, or how or why they were what they were. Unfortunately there was no way to make it as intuitive as Threediopolis, but once I figured you could have several slates of tasks, things began to open up. But unfortunately, anything I got was a list of 100 things to find, which is overload.[paragraph break]";
	say "I don't strictly want to send out a throwaway game, but sometimes--you have to get your work out there somewhere to move on. And that's the case, here. I learned a lot about organizing stuff. And I'm grateful to Aaron Reed for allowing a Back Garden that allows me to write things like this that might not be home runs, but--they're there, and I want to clear them out somehow for something with more of a real story. So: heavy puzzle, light story, and yes, I should've started coding a lot earlier. It's the old 'I don't want to inflict this on my testers' when it'd be even worse on a larger scale to inflict it on judges.[paragraph break]";
	say "So I'd like to encourage others who say 'gee, well, should I?' that, yes, you should. Whether it's too personal, not personal enough, too general or too specific--if you've had doubts for a couple months, you've done enough thinking. Get a draft out there, etc.[paragraph break]";
	say "People who helped with Fourdiopolis are in CREDITS. If you haven't played Threediopolis, there may be spoilers about more detailed discussion in another auxiliary meta-command called TECH.[paragraph break]";
	say "Also, there will not be a Fivediopolis. No way, no how.";
	the rule succeeds;

chapter creditsing

creditsing is an action out of world.

understand the command "credits" as something new.

understand "credits" as creditsing.

carry out creditsing:
	say "I'd like to thank Aaron Reed for providing a space where I can put this game so it doesn't seem like trolling or torture and also for checking with entrants to allow for a bit of cleanup before the first release. I was really conflicted about even putting this game out, because of its difficulty. The thing is--I [italic type]like[roman type] difficult stuff, though that's no excuse not to try to make it accessible to others.[paragraph break]";
	say "I'd like to thank my testers, for putting up with something so confusing in so little time. [bold type]Buster Hudson, Robin Johnson and Teaspoon[roman type]. They found--well, the details would embarrass me. Both technical and aesthetic. I'm very grateful to them.[paragraph break]";
	say "And also, while it's fishy to list my Threediopolis testers by name so as to beef up my tester list...their thoughts and ideas helped me when I wrote up Fourdiopolis. I appreciate them.[paragraph break]The font in the cover 'art' is Chlorinar.";
	the rule succeeds;

chapter teching

teching is an action out of world.

understand the command "tech" as something new.

understand "tech" as teching.

carry out teching:
	say "Well, at first, I considered Kata and Ana, and maybe In and Out, or From and To. But I didn't know how that would capture diagonal movements, or make things different. So I wrote a bunch of PERL scripts with:[paragraph break][italic type]type english-words | grep [bracket]nsewudvxyz[close bracket] | grep [bracket]vxyz[close bracket]--or any four letters.";
	say "Eventually I figured how I wanted things to work--and I realized that jumping 2 of each in any direction would give the player some space. Not only that, the player would have a parity problem to figure if you needed an even or odd number of teleporter jumps. The only thing remaining was what the letters should be.";
	say "Then I remembered about cross products from calculus or physics or whatever. I, j, k. Rare enough they wouldn't create TOO many extra letters. So--the final one was h or l. I chose h, because I liked the names and numbers better. Plus L stood for look.";
	say "But it wasn't a full game until I figured how to break down the lists into serviceable sizes. You'd start with friends, because that helps you get an idea, then you'd move to supplies.";
	the rule succeeds;

volume errors/parser

rule for supplying a missing noun when entering:
	let Q be number of visible quasi-entries;
	if Q is 0:
		say "Nothing to enter.";
		reject the player's command;
	else if Q is 2:
		say "Too many.";
	else:
		now the noun is a random visible quasi-entry;

Rule for printing a parser error when the latest parser error is the I beg your pardon error:
	let any-left be false;
	repeat through your-table:
		if found entry is 0:
			now any-left is true;
	if any-left is false:
		say "No dawdling! Time to go back to the hideout. Where was it hidden inside, again?" instead;
	say "You consider what to do next. Hmm, look for the shortest first: ";
	let cur-length be 3;
	while cur-length < 9:
		repeat through your-table:
			if number of characters in tally entry is cur-length:
				if found entry is 0:
					if there is no descrip entry:
						say "(needs descrip entry).";
					else:
						say "[descrip entry] at [sector-num of tally entry] seems as good as any.";
					the rule succeeds;
		increment cur-length;
	say "BUG. Nothing is left.";

Rule for printing a parser error when the latest parser error is the not a verb i recognise error:
	say "I didn't recognize that verb. You can type V for the verbs available. None should be too complex.";

chapter ring

after printing the locale description:
	if ns is 0 and ew is 0 and ud is 0 and number of characters in your-tally > 1:
		say "You sense you're both at the center and not, at the same time.";
	continue the action;

ring is an action applying to nothing.

understand the command "r" as something new.

understand "r" as ring.

carry out ring:
	if number of characters in your-tally is 0:
		say "You're already at the center, and you haven't wandered since the last time you took a transporter." instead;
	if number of characters in your-tally is 1:
		say "You only just left the center. You're a little worried that if you use the transporters TOO frequently, you might get tracked somehow." instead;
	if number of characters in your-tally is 2:
		say "Maybe explore another block before hitting the transporters." instead;
	if number of visible quasi-entries > 0:
		say "You sure? There's a place you might wish to check.";
		if the player consents:
			say "You jump in the transporter, looking back for a brief moment.";
			reset-game;
			the rule succeeds;
		else:
			say "OK. You may wish to type C here.";
		the rule succeeds;
	say "You take one of the public teleporters back to the center. You don't need a special key. They're about the only thing free these days. The government, in a small sop to civil liberties, doesn't even track how many time a person uses it. Small things.";
	if ns is 0 and ew is 0 and ud is 0:
		say "Hm. Weird. It feels like you didn't go anywhere, and at the same time, you did.";
	reset-game;
	the rule succeeds;

chapter cing

cing is an action applying to nothing.

understand the command "c" as something new.

understand "c" as cing.

carry out cing:
	if number of visible quasi-entries is 0:
		say "Nothing to check." instead;
	try entering a random visible quasi-entry;
	the rule succeeds;

chapter ving

ving is an action out of world.

understand the command "v" as something new.
understand the command "verb" as something new.
understand the command "verbs" as something new.

understand "verb" as ving.
understand "verbs" as ving.
understand "v" as ving.

carry out ving:
	say "You can go in any direction, north, south, east or west, or up or down. You can abbreviate them. In addition, you have a device that lets you use transporters at will. They can send you in direction h, i, j, and k.";
	say "If you think you've found something significant, you can type C, for check. That is shorthand for entering, etc.";
	say "R restarts your journey in sector 000 with a clear mind.";
	say "B gives brief room descriptions, which you probably want as they don't vary much.";
	say "X examines your list of tasks.";
	say "Meta-commands include ABOUT and CREDITS.";
	if debug-state is true:
		say "Here are commands for testers:[line break]";
		say "You can also type FO (1-6) to force one list of things to do. 1 = friends, 5 = fun stuff, 6 = the bad guys. It's recommended you restart before doing this. Also, you should start with 1, then try one of 2-4, and that is more than enough to help me.";
		say "FI is an additional test command. FI 1 'solves' the first entry but makes the other 19 unsolved. FI 16 takes the first 16, leaving the last 4 unsolved. And so forth. So, FI (1-20) if you want to tinker.";
	the rule succeeds;

chapter keenseeking

keenseeking is an action applying to nothing.

understand the command "i seek keen" as something new.

understand "i seek keen" as keenseeking.

carry out keenseeking:
	if your-table is not table of friends:
		say "You already found the revolution's friends." instead;
	choose row 1 in table of accomplishments;
	now solved entry is true;
	midtable-choose;	
	the rule succeeds;

chapter undiding

undiding is an action applying to nothing.

understand the command "undid" as something new.

understand "undid" as undiding.

carry out undiding:
	let count be 0;
	if your-table is table of friends:
		say "Nothing to undo." instead;
	if your-table is table of just plain cool stuff or your-table is table of last names:
		now count is 0;
		repeat through table of accomplishments:
			increment count;
			if count is 1:
				now solved entry is true;
			else:
				now solved entry is false;
		midtable-choose;
		repeat through your-table:
			now found entry is 0;
		the rule succeeds;
	repeat through your-table:
		now found entry is 0;
	set-your-table table of friends;
	repeat through your-table:
		now found entry is 0;
	the rule succeeds;

volume when play begins

section debug - not for release

when play begins (this is the debug true rule):
	now debug-state is true;

part main stuff

when play begins (this is the set the status line rule):
	set-your-table table of friends;
	now your-tally is "";
	now right hand status line is "[score]/[if your-table is table of last names]30[else]20[end if]";
	now ns is 0;
	now ew is 0;
	now ud is 0;
	
when play begins (this is the narrativity rule):
	say "Threediopolis was quite a structural and engineering experiment, but it's so last century. There are more people than ever in the world! They need to be packed in further! And Fourdiopolis allows 90% more population density per square feet of land! Land it hasn't sunk into yet!";
	wfak;
	say "It's mostly due to the teleporters. They are the key thing. Even foot traffic is too crowded these days! But teleporters can't just go in a standard direction. That'd--interfere. The ley lines or whatever would still go through people walking. They've been calibrated for maximum traffic decrease, and stuff. And they're still kind of expensive to use too much. The common people just aren't happy enough with vertical transporters being free for so long.";
	wfak;
	say "And there's a lot of other stuff they're upset about. There's oppression. Oh, lots of it! The oppression is so oppressive, the counter-oppressive forces oppress everyday citizens with new examples of oppression. Of course, if they didn't it'd only get worse. But there is hope.";
	wfak;
	say "Someone uncovered the old business files of a fellow named Ed Dunn. He employed runners to find places Internet searches and GPSs couldn't. He made a killing. Apparently, the people working for him were happier and more fulfilled than he was, and they even found places he never could. He'd ask to walk with them, but when he went along, nothing would pop up. You just needed an impractical mind. Sort of like what people accused YOU of having.";
	wfak;
	say "And you have gotten social demerits and such. You claimed you didn't mean to do whatever, and the authorities said it's worse that way, what if you mean to one day?";
	say "It's not going to be like that. It can't be like that. The authorities covered those loopholes. But somehow...you stumbled onto a bunch of nonconformists. They were surprised you found them, then they realized you weren't a government agent, and you didn't even like the government. They gave you a key to the teleporters. And a task list. Of stuff to find. To help them overthrow the government. It's up to you, to find unusual things and people not stamped out yet.";
	say "[bold type]NOTE: to see commands for Fourdiopolis, type VERBS or VERB, or V for short.[roman type][paragraph break]";
	wfak;

chapter saved accomplishments

the file of accomplishments is called "fourdiop".

when play begins (this is the check accomplishments at start rule) :
	if file of accomplishments exists:
		read file of accomplishments into table of accomplishments;
	else:
		write file of accomplishments from the table of accomplishments;
	port-solvable;
	choose row 1 in table of accomplishments;
	if solved entry is false:
		if debug-state is true:
			say "[bold type]DEBUG: test 1w to get through.";
		set-your-table table of friends;
		the rule succeeds;
	else:
		choose row 5 in table of accomplishments;
		if solved entry is true:
			say "There is only one thing left to do. You must find the shadow councillors--you only have their addresses--and place the mark of the rebellion on their doors. Do you dare risk the intellectual turmoil therein?";
			if the player consents:
				set-your-table table of last names;
				if debug-state is true:
					say "[bold type]DEBUG: test 6w to get through.";
				say "Ok. You have [number of rows in your-table] to find.";
			else:
				set-your-table table of just plain cool stuff;
				say "Ok. You will get to try the cool stuff again.";
			the rule succeeds;
		if all-else-solved:
			set-your-table table of just plain cool stuff;
			if debug-state is true:
				say "[bold type]DEBUG: test 5w to get through.";
		else:
			midtable-choose;

to port-solvable:
	repeat with J running from 1 to 5:
		choose row J in table of accomplishments;
		let temp be solved entry;
		choose row J in table of solvable tables;
		now tabsolv entry is temp;

to decide whether all-else-solved:
	let Q be 2;
	while Q < number of rows in table of accomplishments:
		choose row Q in table of accomplishments;
		if solved entry is false, decide no;
		increment Q;
	decide yes;

table of solvable tables
tabname	tabsolv	tabcomment
table of friends	false	table of friend yay
table of education	false	table of education yay
table of supplies	false	table of sup yay
table of marginalized people	false	table of people yay
table of just plain cool stuff	false	table of stuff yay
table of last names	false	table of name yay

to check-silly-comments:
	repeat through table of solvable tables:
		if tabname entry is your-table:
			comment-mine tabcomment entry;
	if score is 2:
		now locom-chars is 1;
		say "[if ever-fast is true]You've already been munging directions together into one word, and there's no reason to stop[else]You know, now that you've got the hang of things, you can just munge directions together. Like DUDES instead of D, U, D, E, S[end if].";

to comment-mine (j - a table name):
	repeat through j:
		if count entry is score:
			if there is no comment entry:
				say "BUG there should be a comment entry!";
			else:
				say "[comment entry][line break]";

table of accomplishments
solved
false
false
false
false
false

to midtable-choose:
	if all-else-solved:
		set-your-table table of just plain cool stuff;
		the rule succeeds;
	let Q be a random number between 2 and 4;
	let X be true;
	while X is true:
		increment Q;
		if Q > 4:
			now Q is 2;
		choose row Q in table of accomplishments;
		let X be solved entry;
	choose row Q in table of solvable tables;
	if debug-state is true:
		say "[bold type]DEBUG: [roman type][Q]: [tabname entry]. test [Q]w to get through.";
	set-your-table tabname entry;

volume change default verbs

ting is an action out of world

understand the command "t" as something new.

Understand "t" as ting.

carry out ting:
	now show-silly is whether or not show-silly is false;
	say "Silly random events are now [if show-silly is true]on[else]off[end if].";
	now note-bad is true;

understand "b" as preferring sometimes abbreviated room descriptions;

instead of saying yes:
	say "Not much to say yes to[rhet]."

instead of saying no:
	say "Not much to say no to[rhet]."
	
to say rhet:
	say "--rhetorical questions are for narrative purposes, and yes/no questions will be specifically prompted that way"

check requesting the score:
	say "So far, you've found [the score] of the [number of rows in your-table] locations you needed to[one of]. Note that X may be a better way to keep track of overall progress[or][stopping].";
	if scenery-found > 0:
		say "You've also found [scenery-found] of [number of rows in table of scenery] miscellaneous bits of scenery.";
	the rule succeeds;

instead of drinking:
	say "There are hydration stations all around Fourdiopolis. You're nowhere near an inexpensive one."

volume silly every turn stuff

volume beta testing - not for release

when play begins:
	if debug-state is true:
		continue the action;
	unless currently transcripting:
		say "Transcripts are a big help to me. Send them to blurglecruncheon@gmail.com. After you press a key, a dialog will appear telling what to save a transcript to. You can preface any comments with a punctuation mark e.g. >*This needs to be implemented[roman type].[paragraph break]Thanks!";
		wfak;
		try switching the story transcript on;
	else:
		say "Thanks for taking a transcript! blurglecruncheon@gmail.com."

chapter foing

foing is an action applying to one number.

foxing is an action applying to nothing.

understand the command "fo" as something new.

understand "fo" as foxing.

carry out foxing:
	say "1-6 are the possible numbers." instead;

understand "fo [number]" as foing.

carry out foing:
	if number understood < 0 or number understood > 6:
		say "1-6 please." instead;
	if number understood is 0:
		say "Choosing friends.";
		set-your-table the table of friends;
	else:
		choose row number understood in table of solvable tables;
		set-your-table tabname entry;
	repeat through your-table:
		now found entry is 0;
	say "Your new table is [your-table]. You may wish to X to see the list again. Also, all 'found' entries are cleared.";
	the rule succeeds;

chapter foing

fiing is an action applying to one number.

understand the command "fi" as something new.

understand "fi" as foxing.

understand "fi [number]" as fiing.

carry out fiing:
	let count be 0;
	if number understood < 1 or number understood > 20:
		say "1-20 please." instead;
	repeat through your-table:
		increment count;
		if count > number understood:
			now found entry is 0;
		else:
			now found entry is 1;
	say "First [number understood] entries are 1, last are 0. X to make sure.";
	the rule succeeds;

volume testing - not for release

when play begins (this is the test for written stuff rule):
	repeat through table of solvable tables:
		tab-check tabname entry;

the test for written stuff rule is not listed in any rulebook. [obviously comment this out if I need to]

to tab-check (tn - a table name):
	let desc be 0;
	let fou be 0;
	let wd be 0;
	say "[tn]: ===========[line break]";
	repeat through tn:
		if there is no descrip entry:
			say "[tally entry] in [tn] needs descrip.";
			increment desc;
		if there is no foundit entry:
			say "[tally entry] in [tn] needs foundit.";
			increment fou;
		if there is no what-drops entry:
			say "[tally entry] in [tn] needs whatdrops.";
			increment wd;
	say "[desc] descrip, [fou] foundit, [wd] what drops."

[include property checking by Emily Short.]

to d (t - text):
	if debug-state is true:
		say "[bold type]DEBUG:[roman type] [t]";

a thing can be abstract. a thing is usually not abstract.

chapter cxing

cxing is an action applying to nothing.

understand the command "cx" as something new.

understand "cx" as cxing.

carry out cxing:
	if number of visible quasi-entries is 0:
		say "Nothing to check." instead;
	try examining the task list;
	debug-say "Current score is [score].";
	try entering a random visible quasi-entry;
	the rule succeeds;

chapter saing

saing is an action out of world.

understand the command "sa" as something new.

understand "sa" as saing.

carry out saing:
	show-accomp;
	the rule succeeds;

chapter auto tests

test 1win with "fo 1/dennis/c/eddie/c/enid/c/heidi/c/ike/c/ines/c/isis/c/jed/c/jenni/c/jessie/c/jud/c/jude/c/judi/c/june/c/ken/c/kiki/c/nikki/c/sid/c/susie/c/winnie/c/inside/c"

test 1w with "x/dennis/c/eddie/c/enid/c/heidi/c/ike/c/ines/c/isis/c/jed/c/jenni/c/jessie/c/jud/c/jude/c/judi/c/june/c/ken/c/kiki/c/nikki/c/sid/c/susie/c/winnie/c/inside/c"

test 1wx with "x/dennis/cx/eddie/cx/enid/cx/heidi/cx/ike/cx/ines/cx/isis/cx/jed/cx/jenni/cx/jessie/cx/jud/cx/jude/cx/judi/cx/june/cx/ken/cx/kiki/cx/nikki/cx/sid/cx/susie/cx/winnie/cx/inside/cx"

test 2win with "fo 2/hijinks/c/hikes/c/issues/c/keen/c/kind/c/kinesis/c/nein/c/sensei/c/sines/c/sinews/c/sins/c/sinus/c/skew/c/skies/c/uhhuh/c/undenied/c/whenwewin/c/whine/c/wise/c/wushu/c/inside/c"

test 2w with "x/hijinks/c/hikes/c/issues/c/keen/c/kind/c/kinesis/c/nein/c/sensei/c/sines/c/sinews/c/sins/c/sinus/c/skew/c/skies/c/uhhuh/c/undenied/c/whenwewin/c/whine/c/wise/c/wushu/c/inside/c"

test 2wx with "x/hijinks/cx/hikes/cx/issues/cx/keen/cx/kind/cx/kinesis/cx/nein/cx/sensei/cx/sines/cx/sinews/cx/sins/cx/sinus/cx/skew/cx/skies/cx/uhhuh/cx/undenied/cx/whenwewin/cx/whine/cx/wise/cx/wushu/cx/inside/cx"

test 3win with "fo 3/desks/c/dishes/c/disused/c/hens/c/hides/c/juju/c/junk/c/kiwis/c/nines/c/nukes/c/sheds/c/skein/c/skunks/c/swine/c/undies/c/unhewn/c/unis/c/win/c/wines/c/wishes/c/hidden/c"

test 3w with "x/desks/c/dishes/c/disused/c/hens/c/hides/c/juju/c/junk/c/kiwis/c/nines/c/nukes/c/sheds/c/skein/c/skunks/c/swine/c/undies/c/unhewn/c/unis/c/win/c/wines/c/wishes/c/hidden/c"

test 3wx with "x/desks/cx/dishes/cx/disused/cx/hens/cx/hides/cx/juju/cx/junk/cx/kiwis/cx/nines/cx/nukes/cx/sheds/cx/skein/cx/skunks/cx/swine/cx/undies/cx/unhewn/cx/unis/cx/win/cx/wines/cx/wishes/cx/hidden/cx"

test 4win with "fo 4/denied/c/disses/c/djinn/c/dukes/c/hunks/c/huns/c/hussies/c/indies/c/inked/c/jedi/c/jejune/c/jeune/c/junkies/c/kids/c/kink/c/ninnies/c/sheikhs/c/sike/c/snide/c/swiss/c/inside/c"

test 4w with "x/denied/c/disses/c/djinn/c/dukes/c/hunks/c/huns/c/hussies/c/indies/c/inked/c/jedi/c/jejune/c/jeune/c/junkies/c/kids/c/kink/c/ninnies/c/sheikhs/c/sike/c/snide/c/swiss/c/inside/c"

test 4wx with "x/denied/cx/disses/cx/djinn/cx/dukes/cx/hunks/cx/huns/cx/hussies/cx/indies/cx/inked/cx/jedi/cx/jejune/cx/jeune/cx/junkies/cx/kids/cx/kink/cx/nein/cx/sheikhs/cx/sike/cx/snide/cx/swiss/cx/inside/cx"

test 5win with "fo 5/dunks/c/dusk/c/hisses/c/huskies/c/husks/c/inn/c/kisses/c/newsdesk/c/sheesh/c/shininess/c/skinks/c/skis/c/sunk/c/sunshine/c/swish/c/unwind/c/weekend/c/whee/c/whinnies/c/winks/c/hidden/c"

test 5w with "x/dunks/c/dusk/c/hisses/c/huskies/c/husks/c/inn/c/kisses/c/newsdesk/c/sheesh/c/shininess/c/skinks/c/skis/c/sunk/c/sunshine/c/swish/c/unwind/c/weekend/c/whee/c/whinnies/c/winks/c/hidden/x"

test 5wx with "x/dunks/cx/dusk/cx/hisses/cx/huskies/cx/husks/cx/inn/cx/kisses/cx/newsdesk/cx/sheesh/cx/shininess/cx/skinks/cx/skis/cx/sunk/cx/sunshine/cx/swish/cx/unwind/cx/weekend/cx/whee/cx/whinnies/cx/winks/cx/hidden/cx"

test 6win with "fo 6/dejesus/c/dinh/c/dinkins/c/dinwiddie/c/dudek/c/eddins/c/ennis/c/eskew/c/henke/c/hess/c/hines/c/hsieh/c/hsu/c/hussein/c/ishii/c/jenkins/c/jensen/c/keene/c/keese/c/knudsen/c/kuhn/c/niesen/c/sheen/c/shenn/c/shin/c/sisk/c/weeks/c/weiss/c/whidden/c/wisniewski/c/inside/c"

test 6w with "x/dejesus/c/dinh/c/dinkins/c/dinwiddie/c/dudek/c/eddins/c/ennis/c/eskew/c/henke/c/hess/c/hines/c/hsieh/c/hsu/c/hussein/c/ishii/c/jenkins/c/jensen/c/keene/c/keese/c/knudsen/c/kuhn/c/niesen/c/sheen/c/shenn/c/shin/c/sisk/c/weeks/c/weiss/c/whidden/c/wisniewski/c/inside/x"

test 6wx with "x/dejesus/cx/dinh/cx/dinkins/cx/dinwiddie/cx/dudek/cx/eddins/cx/ennis/cx/eskew/cx/henke/cx/hess/cx/hines/cx/hsieh/cx/hsu/cx/hussein/cx/ishii/cx/jenkins/cx/jensen/cx/keene/cx/keese/cx/knudsen/cx/kuhn/cx/niesen/cx/sheen/cx/shenn/cx/shin/cx/sisk/cx/weeks/cx/weiss/cx/whidden/cx/wisniewski/cx/inside/cx"
