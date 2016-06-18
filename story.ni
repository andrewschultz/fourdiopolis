"Fourdiopolis" by Andrew Schultz

[Notes to self:
2=education, 3=supplies, 4=marginalized people
wf 13 = education
wf 11 = supplies
wf 7 = marginalized
]

the story description is "Threediopolis with Teleporters and Such"

the story headline is "Threediopolis: Chug Chug Next Verse"

Procedural rule: ignore the print final score rule.

volume starting stuff

release along with a website.

release along with an interpreter.

release along with cover art.

the release number is 2.

section includes

include basic screen effects by Emily Short.

Include (- Switches z; -) after "ICL Commands" in "Output.i6t".

section status line redraw modifier

Include (-
[ DrawStatusLine width posb;
	@push say__p; @push say__pc;
	BeginActivity(CONSTRUCTING_STATUS_LINE_ACT);
	VM_MoveCursorInStatusLine(1, 1);
	if (statuswin_current) {
		width = VM_ScreenWidth(); posb = width-15;
		spaces width;
		ClearParagraphing();
		if (ForActivity(CONSTRUCTING_STATUS_LINE_ACT) == false) {
			VM_MoveCursorInStatusLine(1, 2);
			switch(metaclass(left_hand_status_line)) {
				String: print (string) left_hand_status_line;
				Routine: left_hand_status_line();
			}
			VM_MoveCursorInStatusLine(1, posb);
			switch(metaclass(right_hand_status_line)) {
				String: print (string) right_hand_status_line;
				Routine: right_hand_status_line();
			}
		}
		VM_MoveCursorInStatusLine(1, 1); VM_MainWindow();
	}
	ClearParagraphing();
	EndActivity(CONSTRUCTING_STATUS_LINE_ACT);
	@pull say__pc; @pull say__p;
];
-) before "Printing.i6t".

chapter stubs

to say 2da:
	unless screen-read is true:
		say "--";

to set-your-table (myt - a table name):
	now your-table is myt;
	now hidden-inside is true;
	now locom-chars is 1;
	if your-table is table of friends:
		now locom-chars is 2;
		now hidden-inside is false;
	let cur-left be binary-solved;
	repeat through table of solvable tables:
		now tabsolv entry is whether or not the remainder after dividing cur-left by 2 is 1;
		now cur-left is cur-left / 2;
	repeat through your-table:
		now found entry is 0;
	repeat through table of scenery:
		if found entry is 1:
			now found entry is 0;
	now score is 0;
	now should-rejig is true;

to say email:
	say "blurglecruncheon@gmail.com"

to wfak:
	if debug-state is false:
		wait for any key;

to debug-say (x - text):
	if debug-state is true:
		say "[bold type]DEBUG:[roman type] [x][line break]";

to show-accomp:
	if debug-state is false:
		continue the action;
	let count be 0;
	repeat through table of accomplishments:
		increment count;
		say "[count]: [solved entry][line break]";
	say "Current table: [your-table].";

section number-counting stubs

[originally in debug only but useful for release]

to decide whether (n - a number) is wrongo:
	if the remainder after dividing n by 2 is 1:
		if n < 16:
			decide no;
	if n is -1 or n is -2 or n is -3 or n is -4, decide no;
	if n is 0 or n is 31, decide no;
	decide yes;

to decide which number is binary-solved:
	let additive be 1;
	let total-sum be 0;
	repeat through table of accomplishments:
		if solved entry is true:
			increase total-sum by additive;
		now additive is additive * 2;
	decide on total-sum;

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

beta-state is a truth state that varies.

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

to decide which number is farchar of (x - a number):
	choose row x in table of far blab;
	let Y be number of characters in dist entry;
	decide on Y.

to say bug-near:
	say "You do a small random shuffle before taking a teleporter back to the center, just to throw off the city's data tracking complex. Not too random, though. You don't want to get picked up on suspicion of intoxication"

table of far blab
dist	returny
"buggily near"	"[bug-near]."
"buggily near"	"[bug-near]."
"very near"	"Your journey this time was very short, but no point wandering if it's off to a bad start."
"near"	"A short journey, but maybe you discovered something to do. Or not-do."
"kinda near"	"A kind of short journey, good for exercise and sightseeing."
"kinda far"	"A kind of long journey this time."
"far"	"A long journey. You're glad you're in shape so you can walk this much. Or maybe you've walked so much and you're now in shape. That's the sort of thing you think about during long walks."
"very far"	"It's been a very long walk indeed."
"extra far"	"This walk has been extra long. You sense the further you went, the less likely you were to find something."
"WAY far"	"Man! That was a marathon, but you zapped back to the center before you got too tired."

hidden-inside is a truth state that varies.

list-exam is a truth state that varies.

carry out examining the task list:
	let Q be number of rows in your-table;
	let Q2 be 0;
	repeat through your-table:
		increment Q2;
		if the remainder after dividing Q2 by 5 is 1:
			say "[2da]";
		if found entry is 1:
			say "[bold type][if your-table is table of friends][tally entry in title case][else if your-table is table of last names][tally entry in upper case][else][tally entry][end if][roman type]";
		else:
			say "[descrip entry] @ [sector-num of tally entry] ";
			say "([farness of tally entry])";
		if the remainder after dividing Q2 by 5 is 0 or Q2 is number of rows in your-table:
			say ".";
		else:
			say ", ";
	say "[line break]There's a note scribbled in that you probably have to use a transporter to get to any of these places.";
	if hideout is visible:
		say "Ooh, the hideout to go back to is visible![line break]";
	else if hidden-inside is false:
		say "[line break]You're not sure where to report after reading this, but it's somewhere hidden inside. Where was it? B15? ED5? Anyway, they apparently had a backup shelter, if one got raided[if score > 14]. You've probably done enough to go back[end if].";
	else:
		say "[line break]You found the place hidden inside to return to. [if score > 14]Maybe you can go there, now[else]But you might not want to go back yet[end if].";
	if list-exam is false:
		say "[line break]Hmm, you might not want to do these in explicit order. Maybe try and find the nearest ones first to get your feet wet.";
		now list-exam is true;
	the rule succeeds;

to say losted:
	if ud > 9:
		say "[line break]A security droid whizzes behind you--you might get too much sun if you go any higher, and the ozone layer isn't healed yet! ";
	else if ud < -9:
		say "[line break]A small alarm goes off. Law-abiding citizens don't need to be digging beneath Fourdiopolis. Or even looking like they are. A security droid taps you on your left shoulder, and when you turn around, you realize it was on your right. [one of]Snea-kee[or]Fooled again[stopping]! ";
	else:
		say "[line break]An anti-suicide droid pulls you back as you walk close to what you realize is the edge of Fourdiopolis. It reminds you there are cleaner ways to do that, if you know where to look. ";
	say "You're whisked back to the center[if posschars > number of characters in your-tally], and with this interruption, you decide to cancel the rest of your walking plans[end if].";
	if bounds-warn is false:
		say "[line break]You look at your list, and many of the locations are relatively close to the center. Maybe you don't need to venture near the edges that much.";
		now bounds-warn is true;
	say "[line break]";
	now ignore-remaining-dirs is true;

chapter stubs

to say it: [i is a direction]
	say "[italic type]";

to say b:
	say "[bold type]";

to say r:
	say "[roman type]";

book the room

outside-area is a privately-named room. printed name of outside-area is "Sector [sec of ud][sec of ns][sec of ew]". "[outside-rand]"

to say outside-rand:
	unless set to unabbreviated room descriptions:
		continue the action;
	if a random chance of 2 in 5 succeeds:
		say "Teleporters, transport tubes, walkways. So ubiquitous, so similar, yet different[edge-check].[no line break]";
	else:
		say "[one of]You feel as if you both should and shouldn't know this area[or]There's a [one of]smaller[or]larger[at random] than usual crowd by the [one of]teleports[or]vertical tubes[at random] here. Well, it can't always be constant[or]The sidewalks go from too crowded to too empty to unremarkable[or]You think you see someone from a few blocks ago, coming the opposite way again, but you can't just go up and ASK them[in random order][edge-check].[no line break]";

to say edge-check:
	if ud is 9:
		say ". You can see the sun above. No upward-tubes or buildings block your view";
	else if ew is 9 or ns is 9 or ew is -9 or ns is -9:
		say ". You can see the countryside beyond the Fourdiopolis limits here";
	else if ud is -9:
		say ". The tubes down here seem less, well, open";

instead of waiting:
	say "Loitering is a serious offense in Fourdiopolis. Officers often patrol for them. Often undercover. Which creates confusion, which makes loitering an even more serious offense.";

to say u-a:
	say "No need to attract undue attention"

instead of jumping:
	say "[u-a].";

instead of waving:
	say "[u-a].";

instead of waving hands:
	say "[u-a].";

instead of sleeping:
	say "There's laws against that. Well, there are no laws against sleeping, but sleeping in possession of valuables encourages criminals. Sleeping without them is vagrancy.";

instead of swearing obscenely:
	say "The old swear words have a certain charm, even though a language commission established new previously nonsensical words as more neurologically effective."

instead of swearing mildly:
	say "The government approves of such restraint in frustration."

instead of kissing:
	say "That both is and isn't appropriate in Fourdiopolis."

instead of burning:
	say "[u-a].";

instead of attacking:
	say "Violence? In this surveilled day and age? Never!"

the transporter is scenery in outside-area. "The transporter--well, the details are inside, and they're not important. It has the letters I, J, K and H in a rough circle, or maybe they're vertices of a pyramid, or something. Anyway, you can probably just go h, i, j or k, and it'll understand that. No need for red tape."

check entering transporter:
	say "That's a bit ambiguous. Try going h, i, j or k, instead." instead;

check examining the transporter for the first time:
	say "You review the literature on the transporter about the three approved teleport directions: h, i, j and k, and something about quaternions, and something else about how you can't have people passing each other in opposite directions in a teleportal field, or BAM. It's all pretty standard stuff, and if people can't understand it, they look knowledgeable nodding their heads about it."

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
	say "Out? Of Fourdiopolis? You don't have proper documentation. And you can't get it. Well, not in this game.";

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

walked-by is a truth state that varies.

to see-if-left (t - a truth state):
	if number of quasi-entries in outside-area > 0:
		if quick-mode is true:
			say "You're vaguely worried you missed something, but you have somewhere to be. You think. You hope.";
			continue the action;
		say "As you [if t is true]walk[else]blip[end if] away, you reflect you can always find [if hideout is in outside-area]the hideout[else]that place[end if] later, if you want.";
		now walked-by is true;

check going inside:
	if word number 1 in the player's command is "in":
		if score >= 2:
			dirparse "in" instead;
	say "You don't see anywhere to go in." instead;

check going south:
	now your-tally is "[your-tally]s";
	check-nearlies;
	decrement ns;
	if ns < -9:
		say "[losted]";
		reset-game instead;
	check-nearlies;
	see-if-left true;

check going north:
	now your-tally is "[your-tally]n";
	check-nearlies;
	increment ns;
	if ns > 9:
		say "[losted]";
		reset-game instead;
	check-nearlies;
	see-if-left true;

check going west:
	now your-tally is "[your-tally]w";
	check-nearlies;
	decrement ew;
	if ew < -9:
		say "[losted]";
		reset-game instead;
	check-nearlies;
	see-if-left true;

check going east:
	now your-tally is "[your-tally]e";
	check-nearlies;
	increment ew;
	if ew > 9:
		say "[losted]";
		reset-game instead;
	check-nearlies;
	see-if-left true;

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
	check-nearlies;
	see-if-left false;

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
	check-nearlies;
	see-if-left false;

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
	check-nearlies;
	see-if-left false;

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
	check-nearlies;
	see-if-left false;

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
	check-nearlies;
	see-if-left true;

check going down:
	if gone-up-or-down is false:
		say "[up-down-cool].";
	now your-tally is "[your-tally]d";
	decrement ud;
	if ud < -9:
		say "[losted]";
		reset-game instead;
	check-nearlies;
	see-if-left true;

gone-up-or-down is a truth state that varies.

to say up-down-cool:
	say "The hybrid transport tubes/stairs are designed for optimal pedestrian convenience and exercise potential";
	now gone-up-or-down is true;

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
		say "You've been wandering for too long. You get tired, and you figure it's probably best to start over with a clean look on things. You push the button on your teleporter device[if posschars > 11], cancelling the rest of your planned journey[end if], and [if ew is 0 and ns is 0 and ud is 0]everything looks a bit different[else]back you go to the center[end if].[paragraph break]";
		now ignore-remaining-dirs is true;
		reset-game instead;
	tally-and-place;

scenery-found is a number that varies.

note-found is a truth state that varies.

to tally-and-place:
	let A be indexed text;
	now A is your-tally;
	let B be number of characters in your-tally;
	repeat with Q running through things in outside-area:
		if Q is not player and Q is not transporter:
			now Q is off-stage;
	if B > 2:
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
		repeat through table of scenery:
			if B > chrs entry:
				next;
			if A is tally entry in lower case:
				if there is a what-drops entry:
					now found entry is 1;
					move what-drops entry to outside-area;
					continue the action;
			if B < number of characters in tally entry:
				break;

after printing the locale description:
	let A be indexed text;
	now A is your-tally;
	let B be number of characters in your-tally;
	if B > 2:
		repeat through table of solvable tables:
			sweep-up tabname entry;
	repeat through table of scenery:
		if A is tally entry in lower case:
			if found entry is not 1:
				increment scenery-found;
				unless there is a what-drops entry:
					if debug-state is true:
						say "DEBUG: Scenery debug check!";
					say "[foundit entry][line break]";
					if scenery-found-yet is false:
						bracket-say "this wasn't critical to the game, but it's just something neat to find. There are [number of rows in table of scenery - 1] more to find, but they're meant to be obscure. Congratulations on finding one, though!";
						now scenery-found-yet is true;
					if found entry is 0: [-1 for ISEEKKEEN/etc is a bit of a hack but yeah]
						now found entry is 1;
	if your-tally is "hidden" or your-tally is "inside":
		if hideout is not in outside-area:
			move hideout to outside-area;
			say "[one of]All right! You think you see it! The hideout where your [if your-table is not table of friends]latest jaunt[else]whole task[end if] started![or]The hideout, again. A bit easier to recognize this time.[stopping]";
			now hidden-inside is true;
	repeat through your-table:
		if found entry is 1:
			if your-tally is tally entry in lower case:
				if note-found is false:
					say "Hm, that place you found before--it's somewhere around here, but you're focused on what to find next.";
					now note-found is true;

to sweep-up (x - a table name):
	if x is table of friends: [never look back]
		continue the action;
	if x is your-table: [don't clue something that dropped just now]
		continue the action;
	if your-table is table of just plain cool stuff and x is not table of last names: [don't clue any of the 3 previous in cool stuff mode]
		continue the action;
	if your-table is table of last names:
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

i-warn is a truth state that varies.

check going i when i-warn is false:
	if word number 1 in the player's command is "i":
		bracket-say "just to check, I is a direction, not the command to take inventory. Since you only have one item, X will suffice.";
		now i-warn is true;

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
	if walked-by is false:
		consider the plural-almost rule;
	now walked-by is false;
	if teleported is false:
		say "You remember hearing that anywhere worth getting to, you had to teleport to. And you didn't, this run.";
	else:
		now teleported is false;
		if add-to > 7 and your-table is table of friends:
			say "You don't know if they'd make you wander THIS much in order to find something. Perhaps you should stick with as short journeys as possible.";
			continue the action;
		if add-to >= 8:
			if score < 5:
				say "Hmm. If you're having trouble finding things, you may wish to start with stuff that's near first, instead of what's first on your list.";
		if add-to > 7:
			now add-to is 7;
	say "[b]Back at Sector 000[r][line break]";

book beginning

book entries

a quasi-entry is a kind of thing.

the hideout is a quasi-entry. "[one of]Hey! It's that hideout you stumbled on! Well, one of the two![or]The hideout where you got your tasks from is nearby.[stopping]". description is "Yup, you recognize it now. You just need to look carefully--but not too carefully so others get curious."

the otherwise unremarkable hovel is a quasi-entry. description is "It's a bit too calculatedly unremarkable. I mean, most hovels have some special feature, but this has nothing."

the edutainment storefront is a quasi-entry. "You recognize an edutainment storefront by the brain hologram.". description is "You can't tell what's inside. Perhaps you should (C)heck."

the suspiciously ordinary door is a quasi-entry. description is "The door is too clean and smooth. The wind blows by it with a nothing-to-see-here whistle.". "[if score is 0]Is it? Isn't it? Yes...no...it's an entry to a shadow campaign headquarters! Not that campaigns ever fail, for those who want to be elected.A suspiciously ordinary door leads in.[else if score is 1]It's a bit easier to recognize the shadow campaign headquarters now. There's another![else if score is 2]Another suspiciously ordinary door. You're sure, trying to underpin how the 'leaders' are just like regular people except for being hooked on powers.[else][another-door]. You wonder how you never recognized this sort of thing before.[end if]"

to say another-door:
	say "[one of]And here's another 'plain' door[or]Hey! You found another one[or]You feel clever at having found another secret door[or]Another suspiciously ordinary door, [one of]less suspicious than[or]as suspicious as[at random] the last, but that's suspicious in its own way[or]A door so plain, you wonder if it was ever opened[at random]"

understand "hq/headquarters" and "shadow/-- campaign/-- headquarters/hq" as suspiciously ordinary door.

the generic door that needs replacing is a quasi-entry. description is "Boy! It's generic all right! Generic enough you can just (C)heck to enter."

the front door is a quasi-entry. description is "There's no name on it, but you can (C)heck if anyone's home.".

the ominous door is a quasi-entry. description is "Boy! It's ominous, all right! It might be a mistake to enter.".

the tiny schoolhouse is a quasi-entry. description is "All schoolhouses are tiny. Part of the point of education is to say, you don't deserve a big school, but CEO's deserve a big office."

an abandoned shed is a quasi-entry. description is "You're not sure how the shed is squeezed between buildings, but it is."

a beaten-up store is a quasi-entry. description is "It does look as if a swanker store a street down came by and gave it a noogie or worse."

the movie house is a quasi-entry. description is "These are pretty much illegal, since if people want to watch a movie they can just go watch it themselves. You've heard some movie houses actually don't run propaganda before, after, and midway through films. That would be fun!"

a dusty warehouse is a quasi-entry. description is "The warehouse is dusty but clean. So someone is probably living there."

a fake barn is a quasi-entry. description is "Amazingly, there are no records of health code violations here. The occupants are very lucky."

a grocery store is a quasi-entry. description is "There's no description of sales at all. They probably figure if you have to ask, you don't deserve a discount."

a gymnasium is a quasi-entry. description is "You don't want to look too closely. All the exercise just walking around has been enough.". understand "gym" as gymnasium

a museum is a quasi-entry. description is "This museum doesn't even seem to want an ID or a fingerprint or anything!"

an upscale store is a quasi-entry. description is "There's not even a sign saying NO RIFF RAFF NEED APPLY."

a climate-controlled building is a quasi-entry. description is "You know it's climate-controlled by the tinted windows."

the thing called a cozy place with a neon sign is a quasi-entry. description is "The neon sign is fritzing charmingly. Unfortunately, there's a steep license to pay for anything not reading IN HERE."

a surprisingly churchy looking place is a quasi-entry. description is "Even humanism is under suspicion. Of course, nobody's a god, but all the same, you'd hate to be wrong about wasting time caring about one with so much real world stuff going on. Besides, if God were active at all, he'd have destroyed the world well before Fourdiopolis set things right."

check entering ominous door:
	say "Assisted suicide is more rigorous and refined here and now than with Threediopolis's pilot program. A hundred years ago, the Death Panels there (not the healthcare kind, silly!) only gave punditly views on the how and why before you pegged out, but--the authorities realized nobody asked YOU! The person of the moment![paragraph break]You're given surveys...questionnaires...what would you do better? What do you think authorities would do better? No, no, you are just lashing out because you are suicidal.  No, those free striped lollipops are for employees, not clients. You had plenty of time for a last meal before you walked in! Perhaps a moment to reconsider your one complaint here? If you're not in a rush? Ah, yes, you are not the first. Realizing others appreciate Fourdiopolis more than you could, and leaving more of its resources to them. Ah, yes, even the unsatisfied are satisfied in Fourdiopolis![paragraph break]";
	say "Erm, yeah. This isn't the best ending. Not at all. You may wish to UNDO.";
	end-loss-with-undo;

check going inside when a quasi-entry is visible:
	try entering a random visible quasi-entry instead;

check entering a quasi-entry:
	repeat through your-table:
		if your-tally is tally entry:
			if noun is front door:
				say "(well, knocking, actually)[line break]";
			if noun is suspiciously ordinary door:
				say "Whoah. You're not brave enough to enter. But you'll leave a message.[paragraph break]";
			if there is a foundit entry:
				say "[foundit entry][line break]";
			else:
				say "BUG I forgot to say something clever here.";
			now found entry is 1;
			say "[line break]You head back to the center of Fourdiopolis, feeling [if score is 0]confident you're off to a good start[else if score is 5]in the groove[else if score is 10]well on your way[else if score is 15]you've done enough, and not just the bare minimum[else][rand-yay][end if].";
			increment the score;
			now should-rejig is true;
			check-silly-comments;
			reset-game;
			do nothing instead;
	if hideout is visible:
		run-the-ending instead;
	say "Oops, should've found something." instead;

to say rand-yay:
	say "[one of]especially clever about that one[or]like maybe you can see a missing location you couldn't figure before[or]confident, but not cocky[or]focused, sensible, and logical--but not TOO much[or]happy to know the city's full of secrets[or]like you'd like to tell someone about that, but you'd probably get in trouble[in random order]"

to run-the-ending:
	if your-table is table of friends:
		if score < 5:
			say "'[if score is 0]None at all[else]Only [score in words][end if]? That simply won't do. We need someone who can do a bit more... well, have a nice life.' But you don't. A month later, though, you're arrested at 2 AM as an associate of the potential rebels. You wonder if they reported you, for doing so relatively little for them.";
			now story-ended is true;
			end the story saying "Well, you can always undo and retry";
			the rule succeeds;
		if score < 15:
			say "'Well, not too bad, but not quite good enough.' You go on your way, and every month or so, you walk by where you thought the hideout was, but you can never quite find it.";
			now story-ended is true;
			end the story saying "Find [15 - score in words] more and open a new puzzle";
			the rule succeeds;
		say "'Good job! That's [if score < 18]enough to be promoted to a general runner[else if score is 20]perfect[else]even better than we hoped[end if]! There's...a few more task lists. We're short of people. Some get lost, and captured. Can you do a bit more?'";
		bracket-say "You can RESTART and you'll have access to a new puzzle. There are five more--three chosen in random order, then a 'final' one, then an extra-difficult one. You can also type I DID I UNDID to reset your accomplishments and try this again. Or, if you lose your save file, I SEEK KEEN will jump over finding the friends.[paragraph break]But even if this was more than enough for you, getting through this list is an accomplishment. Go take some time to feel good about yourself. Fourdiopolis is not an easy game!";
		choose row 1 in table of accomplishments;
		now solved entry is true;
		write file of accomplishments from the table of accomplishments;
		end-win-with-undo;
		continue the action;
	else if your-table is table of last names:
		if score is 0:
			say "'Boo! Fink.' they chide you. But they know that with all the supplies ready, they don't need fearmongering anyway. Power to the people, well, hopefully.";
		else if score  < 7:
			say "'Well, it's a start. These people are hard to get at. But...we have enough momentum anyway. We hope.'";
		else if score < 17:
			say "'A bit disappointing, but, well, they'll be exposed with time anyway. Maybe those who haven't gotten anything yet will be scared in their own way.'";
		else if score < 21:
			say "'A majority! [if score * 2 is number of rows in table of last names]Well, if we round up. [end if]Perhaps there is some hope that they can be scared to act before we have to. Hm, we might anyway. It'll be fun.'";
		else if score < 29:
			say "'Wow! We could hardly have hoped for more!'";
		else if score < number of rows in table of last names:
			say "'Impressive indeed! We're glad you're not on THEIR side. We'd have gotten a lot more threats now than we already have.'";
		else:
			say "'All of them? You're almost scaring us. Don't worry. Almost.'";
		if score > 16:
			say "[paragraph break]You ask if you can come along for the uprisings, but they assure you your technical skills are far too valuable. You feel sort of ripped off, until you realize that means all-you-can-eat from the supplies you requisitioned earlier.";
		end-win-with-undo;
		continue the action;
	else if your-table is table of just plain cool stuff:
		if score < 10:
			say "'You know, the substance over style shtick can only be pulled off if you HAVE a certain amount of style. Hey, we don't like it either, but that's the real world. Well, maybe the facts will be good enough, if we yell loud enough.'";
		else if score < 15:
			say "'Hm, well, that'll make Fourdiopolis cool enough for now. Maybe we can like do the rest AFTER the revolution. Guess we have to be practical.'";
		else:
			say "'Wow! That's a lot of cool hidden stuff we need more of[if score > 18]! Too much, if that were possible[end if]! That's what we stand for, and what we'll give to the people! Or at least try to! They'll love us! There's just one more thing--we can strike terror into the hearts of the shadow councillors that help run this city. Their names are closely protected--but we know the sectors they live in, and you're just the person to find their shadow campaign headquarters.'";
			say "Congratulations! You've unlocked a final FINAL puzzle. You will be prompted to see if you'd like to go for it on restart. It's thirty, not twenty, and it's meant to be difficult can search out.[paragraph break]There's also a hidden command you can use at any time: type UNKINDNESS to get to the final bit.";
			choose row 5 in table of accomplishments;
			now solved entry is true;
			write file of accomplishments from the table of accomplishments;
		end-win-with-undo;
		continue the action;
	let lists-done be 0;
	let table-count be 0;
	repeat through table of accomplishments:
		increment table-count;
		if table-count <= 5 and solved entry is true:
			increment lists-done;
	if score is 0:
		say "Murmurs of dismay come back as people, including some of the friends you had a particularly tough time rescuing, are upset you weren't able to do anything[despite-good]. Harsh!";
	else if score < 5:
		say "A few people pat you on the back and say you at least brought people together, which is the most important thing. The compliments only go so far. You wish you could've done a bit more[despite-good].";
	else if score < 10:
		say "'Ambivalent whispering all around. Pretty good, they guess. But people have to be at the top of their game to inspire true change. Well, you got friends together, which is the important thing[if binary-solved > 1], and a bit more, besides. But it's not easy getting lost the right way[end if].";
	else if score < 15:
		say "Someone important-looking says 'Well, it'll do. Good job. But it wasn't a really ELITE run. Maybe find a few more things. Still, you deserve a break.'";
	if score < 15:
		now story-ended is true;
		end the story saying "[if score > 9]Just[else]Find[end if] [15 - score in words] [if score > 0]more [end if]to open a new puzzle";
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
		say "'You did [if score is 20]a perfect job[else]such a good job. [score in words] of 20 is impressive[end if]! But hey! There's still a bit more. We're--well, even shorter of competent people like you to find stuff. There's just [4 - lists-done in words] other big twenty-item task[if 4 - lists-done > 1]s[end if] left to do, but--it'll be about the same challenge as what you already found.'";
	bracket-say "if you wish to undo this specific task set, you can type I UNDID [spec-undo]. This will be in the A command, if you forget.";
	end-win-with-undo;

to say spec-undo:
	if your-table is table of marginalized people:
		say "DUDES";
	else if your-table is table of supplies:
		say "JUNK";
	else:
		say "EDU";

to say despite-good:
	say "[if binary-solved > 1] despite your good work elsewhere[end if]"

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
"dennis"	"can skip or jump"	"He begins telling you about his wonderful friend Jonathan and Jonathan's lovely future wife Elizabeth before getting serious and scared and asking if Christopher has been by yet."	front door	0
"eddie"	"crazy friend"	"He stashes some absurdly low-priced appliances into a closet before running out."	front door	0
"enid"	"friend of five"	"Enid listens as she makes proofreading marks on a book with a bunch of kids running around on the cover."	front door	0
"heidi"	"Alpine friend"	"Thankfully, you hear no yodeling as the door opens."	front door	0
"ike"	"cross, iron friend"	"'I'm ready to take down the sprawling military-industrial complex,' Ike says."	front door	0
"ines"	"Spanish friend"	"It's [your-tally in title case]! She [says-hi]."	front door	0
"isis"	"friend from Egypt"	"It's [your-tally in title case]! She [says-hi]."	front door	0
"jed"	"friend"	"It's [your-tally in title case]! He [says-hi]."	front door	0
"jenni"	"friend who says why not"	"It's [your-tally in title case]! She [says-hi]."	front door	0
"jessie"	"has desirable girl/guy"	"[either-gender]."	front door	0
"jud"	"hey, a friend, almost"	"It's [your-tally in title case]! He [says-hi]."	front door	0
"jude"	"hey, a friend"	"He says 'Oh, I was trying to make a sad song better, but never mind.'"	front door	0
"judi"	"hey, a friend's female twin"	"It's [your-tally in title case]! She [says-hi]."	front door	0
"june"	"fair-weather friend"	"She springs into action on hearing why you're here."	front door	0
"ken"	"solves number puzzles halfway"	"It's [your-tally in title case]! He [says-hi]."	front door	0
"kiki"	"friend who can deliver us"	"She gives a bit too sugary speech on how you can do anything you can put your mind to, but it's better than the opposite."	front door	0
"nikki"	"loud friend 6"	"It's [your-tally in title case]! She [says-hi]."	front door	0
"sid"	"not a vicious seizer"	"'In, Sid? [']E IS!' he roars."	front door	0
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
"hens"	"egg farms"	"Well, organic farms are always good. You'll need lots of food."	fake barn	0
"hides"	"warm weather clothing"	"Actually, most weather is warmer than it was years ago, but humans['] bodies adapted to be faster and leaner, so they need warm clothes well above freezing now."	upscale store	0
"juju"	"occult help (or can't-hurt)"	"Juju may not be effective, but it brings people together, and it feels fun. Especially because you get to slap a drum around a bit, and stab a doll representing the Mayor-Overlord."	dusty warehouse	0
"junk"	"not their treasure"	"You find all kinds of cool junk here. Some was being saved for the right customer--someone who could make anything out of junk. Like people back at headquarters."	beaten-up store	0
"kiwis"	"fruit"	"Oh, hey! It's the genetically modified kind where you don't have to pit the ends out! With edible stickers! Well, everything has edible stickers, but you're a sticker connoiseur."	grocery store	0
"nines"	"super swank clothes"	"Of course, none of the rebels would own any of this for themselves. But it's still fun to have the chance to wear stuff like this, once. You notice a tag: please shower immediately before and after wearing."	upscale store	0
"nukes"	"only if we're desperate or MAD"	"Fortunately, you can't just trip over a nuke and set it off. But unfortunately, every good subversive organization has to have one, even the nonviolent ones. Especially the nonviolents!"	abandoned shed	0
"sheds"	"storage"	"A fellow named Arthur makes a purchase ahead of you and gets far too excited he has three now, so people can stop laughing at him."	abandoned shed	0
"skein"	"more yarn than we'll ever need"	"All types and colors of yarn here--synthetic, real, thick, thin."	upscale store	0
"skunks"	"stink bomb raw materials"	"Organic chemists have still not found anything as offensive yet harmless as a skunk scent. Someone proved the near-impossibility of that back in 2150, but people still try."	fake barn	0
"swine"	"porcine stuff"	"It doesn't smell too good in here, and you've never been able to reconcile that with just how good bacon smells. Or you remember bacon smells. Which is even better than bacon bits!"	fake barn	0
"undies"	"unseeable wearables"	"All sizes of underwear! All clean! The underwear is recycled from holey socks, and the holey underwear will be recycled back into socks. The circle of life!"	beaten-up store	0
"unhewn"	"rock to carve"	"You're not sure how the big dolmen or menhir or whatever i's going to be teleported back to headquarters--there's still a weight limit, though it's higher than it needs to be--or why it's here. But, you're in execution, not planning."	dusty warehouse	0
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
"hunks"	"guys unnecessarily muscular"	"If you're muscular and don't have a physical job and aren't in the army, Fourdiopolis frowns on that. Sure, it's not illegal...but...it's even worse if you keep your body AND mind in shape just for your own sake."	gymnasium	0
"huns"	"allegedly barbarous, but we can't all be gentle"	"You need some people who have, sadly, been pigeonholed for their ancestry. They know others have it worse, but still..." 	hovel	0
"hussies"	"unfairly labeled women"	"Oh, sure, men get boxed in for talking back. It just still seems to happen more frequently to women. And these women would like to change that."	hovel	0
"indies"	"non-mainstream art"	"You persuade the people here that their art will get more exposure with the Fourdiopolis power structure down. But don't worry, you won't become totally mainstream!"	hovel	0
"inked"	"tattooed tough guys"	"Tattoos are illegal now unless they're government-enforced. Okay, if you manage to hide them certain places...but some people have had enough."	warehouse	0
"jedi"	"star wars fans"	"You learn some cool mind tricks, like melding concentration and intuition, and some awesome classic movie trivia. It's sad that people can't enjoy their own favorite movies."	movie house	0
"jejune"	"political pranksters"	"You run into people who want to commit political pranks in support of being able to commit more political pranks. It's sure better than power for power's sake."	hovel	0
"jeune"	"young idealistic foreigners"	"Kids from another land talk about all the stuff they don't have to beg for. You almost feel guilty wanting it, too."	tiny schoolhouse	0
"junkies"	"people hooked on caffeine NOT from overpriced coffee"	"Apparently there is a whole repository of places to get caffeine. All kinds of rainbow colored pop! And worse, Well, that certainly seems worth fighting for."	hovel	0
"kids"	"useful idealists"	"Some kids aren't 'practical' enough to accept the reality of life in Fourdiopolis. Their views are refreshing. They remind you of questions you had and thought you, or society, answered or dismissed. And if not all the questions are worth asking, there are a lot of really big ones."	tiny schoolhouse	0
"kink"	"illicit pleasure joint"	"Oh dear! You're not sure what's going on here. You're not sure you want to look. But these people are pro-freedom, for sure. You gain a few recruits."	warehouse	0
"ninnies"	"disparaged as stupid"	"Wow! You're impressed. Some people make a bad first impression because they don't seem as smart as they should...[italic type]but they have spent more time becoming smart than looking smart[r]. Wow!"	hovel	0
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

to say bnb:
	say "Two fellows in a park, sitting on a couch, commenting stupidly at music videos on an old-school television. What is society coming to? Hah, you said..."

to say worry-undo of (tn - a table name):
	let j be 2;
	if tn is table of supplies:
		now j is 3;
	else if tn is table of marginalized people:
		now j is 4;
	say "You feel a sudden fear your ";
	if tn is your-table:
		say "current";
	else:
		choose row j in table of accomplishments;
		say "[if solved entry is true]past[else]future[end if]";
	say " wrangling may be all for nought and can be wiped out just like that, as if you're part of some big silly game you only understand on the surface";

to say seek-track:
	let ln be a list of indexed text;
	repeat through table of scenery:
		if found entry is 0:
			add "[tally entry in upper case]" to ln;
	if debug-state is true:
		say "DEBUG NOTE found directory.";
	if number of entries in ln is 0:
		say "There's no weird stuff to track down"; [technically not true. DIE is always there, but I just didn't want to futz with the code. The stuff that's not listed is hidden in the AMUSING section, anyway.]
		continue the action;
	say "You [one of]find a weird written directory. It's well-hidden enough, you might be able to come back and see it[or]find more odd hints and places to go[or]go to the well again, and it's still not dry[stopping]. ";
	sort ln in random order;
	if number of entries in ln < 5:
		say "There must not be much left. ";
	truncate ln to 5 entries;
	say "You read: [ln]";

table of scenery [tosc]
tally (text)	descrip (text)	foundit (text)	what-drops	found	chrs
"die"	"sacrifice yourself"	"Assisted suicide is more rigorous than in Threediopolis. The Death Panels there (not the healthcare kind) give punditary views before you pegged out, but here, you have surveys...quesstionnaires...what would you do better? What do you think authorities would do better? No, no, you are just lashing out because you are suicidal. Ah, yes, even the unsatisfied are satisfied in Fourdiopolis."	ominous door	0	3
"duh"	--	"Oh, man! You can't believe you missed THAT one. It's obvious now!"	--	0	3
"dui"	--	"A robot-police runs by and grabs a breath-sample from the air in front of you. 'Proceed,' it says. Hmm.'"	--	0	3
"eek"	--	"Someone tells a scary story for effect and, well, gets the effect they want."	--	0	3
"hhh"	"Triple H"	"Someone threatens to bodyslam another person for being utterly evil. Then--bam! You see they actually do! Someone whispers to you, don't worry, it's fake, just entertainment. What is the world coming to?"	--	0	3
"kkk"	"bad bad people"	"Everyone around here just really, really sucks at life. What else can I say?"	--	0	3 [super extra double for this vs another k word but here there's an opportunity to laugh at people a bit I hope]
"deke"	--	"You wonder if you faked yourself out going this way."	--	0	4
"didi"	"Urkel"	"A fellow with oversized glasses and suspenders runs into you, shrugs his shoulders, snort-laughs and then runs away."	--	0	4
"dike"	--	"In this blocked-off area, people talk about the city water supply."	--	0	4
"dink"	--	"You're hit by a very very soft nerf ball that runs away. Hmm."	--	0	4
"ehhs"	--	"People keep asking fellow conversers to repeat themselves, here."	--	0	4
"heed"	--	"Some police give a particularly stern lecture to a citizen not fully obeying some minor law."	--	0	4
"hues"	--	"The local color is particularly vibrant in this neighborhood."	--	0	4
"hush"	--	"Unusually quiet here."	--	0	4
"ides"	--	"An organized march nearby leaves you feeling wary."	--	0	4
"juke"	--	"Someone walking towards you tries to get out of your way, and you do the same. But you both pick the same way to go, several times. Awkward!"	--	0	4
"keds"	--	"[snee]."	--	0	4
"kike"	"an unacceptable slur"	"Some kids call another kid a name. They try to convince him he can't be that made if he doesn't know what it means, or if it's a really old insult before it's over. You want to step in and help the poor kid but you don't know how."	--	0	4
"kwik"	--	"You can just hear the misspellings as people talk too fast here."	--	0	4
"nike"	--	"[snee]."	--	0	4
"seek"	--	"You spy someone else with a sheet similar to yours. You don't acknowledge them, though. Can't be too careful."	--	0	4
"shun"	--	"You feel very, very alone. People are more than just giving you your space."	--	0	4
"uhhs"	--	"Conversation feels a bit slower and dumber than usual for Fourdiopolis, for a second here."	--	0	4
"uuid"	--	"You are suddenly unable to get the hexadecimal number [b][uuid][r] out of your head!"	--	0	4
"whew"	--	"You just barely escaped something, there! You don't know what, but it would've been pretty bad."	--	0	4
"wiki"	--	"You suddenly have an urge to look up some term and follow a chain to all sorts of odd knowledge you may never use but it'll be fun."	--	0	4
"wind"	--	"You're almost blown off your feet for a second. Air currents in Fourdiopolis are weird--there's no PROOF the government controls them, but..."	--	0	4
"ennui"	--	"Yyyyyawn. What's the point?"	--	0	5
"iknew"	--	"Someone covers for looking stupid by explaining they were just being really, really ironic."	--	0	5
"jesus"	--	"Someone spouting an annoying proof that religions shouldn't exist then asks you to join the personality cult of a smart person dead for a hundred years, who wasn't nice, but they understood algorithms of how to make others nicer. You brush them away."	--	0	5
"knees"	--	"You grab an old ache for a moment."	--	0	5
"nisei"	--	"You walk past shops with Japanese signs."	--	0	5
"nuhuh"	--	"A trivial argument nearby quickly turns emotional."	--	0	5
"nuked"	--	"A surprisingly empty area. You look for biohazard signs but don't see any. Still, you feel disturbingly tingly."	--	0	5
"seine"	--	"You feel a hackneyed flavor of, and longing for, Gay Paree."	--	0	5
"shins"	--	"You grab an old ache for a moment."	--	0	5
"shush"	--	"'Oh, sure, you can THINK that, just don't SAY it, you know?'"	--	0	5
"sides"	--	"You feel cornered in here. You're not sure why."	--	0	5
"undid"	--	"You feel regret for what you've done and regret for that regret. You waste a bit of time fretting over how you've wasted a bit of time no matter which feeling is right."	--	0	5
"whisk"	--	"You trip on an odd cooking doohickey you forget the name of. People don't have time for making their own meals, with so much virtual reality to experience these days, and machines do it all well enough."	--	0	5
"dindin"	--	"You feel hungry."	--	0	6
"heehee"	--	"You think of a silly pun that feels funnier than it has a right to be."	--	0	6
"hehhuh"	--	"[bnb]"	--	0	6
"henwen"	"Prydain Chronicles"	"You thought you heard a talking pig just now."	--	0	6
"huhheh"	--	"[bnb]"	--	0	6
"nissin"	--	"You step on something. It looks like a chunk of dried noodles. You feel hungry for food you'll regret later."	--	0	6
"nudies"	--	"You see, and quickly ignore, some disturbing fliers on the ground."	--	0	6
"shinju"	--	"Hm, looks like a play, in the park. Not quite Romeo and Juliet, but seemes like it just ended the same way."	--	0	6
"shishe"	--	"You smell evidence people are--gasp--SMOKING. You remember health warnings that a whiff of the good smelling stuff is worse than the bad smelling stuff, and vice versa."	--	0	6
"unkind"	--	"You worry someone's going to do something mean to you, but don't worry, they're only thinking about it. Especially with video cameras all around."	--	0	6
"winded"	--	"You take a break to catch your breath."	--	0	6
"dejeune"	--	"You sure could use a lunch break right now!"	--	0	7
"kidniki"	--	"You temporarily feel on guard against the possibility of radical ninjas."	--	0	7
"kidskin"	--	"You walk by an exotic leather store."	--	0	7
"kuskunn"	"Magic Candle"	"You see an image of a demon trapped in a bubble, by a candle slowly burning."	--	0	7
"sissies"	--	"Some self-made tough guys still feel a need to gang up on people weaker than they are. The pain's over sooner than if they went one at a time, amirite?"	--	0	7
"skidded"	--	"A goverment utility vehicle swerves and almost hits someone about to jaywalk. Funny how one is always around, unless you jaywalk REALLY assertively."	--	0	7
"weenies"	--	"An old long-abandoned hot dog hut lies between two places of Serious Business. Your grandparents constantly babbled about the misspelled version from THEIR youth being so tasty, and--well--maybe the misspelling did make things tastier."	--	0	7
"inkiness"	--	"Everything's a bit cloudy, here."	--	0	8
"unkissed"	--	"You hear a teen sob about their lack of romantic luck."	--	0	8
"unwished"	--	"Someone tries to hand you a flyer you really, really don't want."	--	0	8
"whiskies"	--	"Wow! People seem to be having a rip roaring time, here[whisky-wine]. You don't have time for such carousing at the moment, but it boosts your spirits."	--	0	8
"iseekkeen"	--	"[seek-track]."	--	-1	9
"iundidedu"	--	"[worry-undo of table of education]."	--	-1	9
"jeskiddin"	--	"Someone walks by and notifies you this is a Level 17 restricted area. You quickly hide your to-do list, before they point and laugh that they got you GOOD, and the grocery store's THAT way."	--	0	9
"seediness"	--	"This area doesn't feel too posh. You don't know why, but it doesn't."	--	0	9
"skunkweed"	--	"It smells bad here, like it should be illegal."	--	0	9
"whininess"	--	"You can zone out one complaint or two, but when it's all around, it's like it's contagious and you just won't put up with it! Really, some people! It's just not fair! You'd never...oops."	--	0	9
"wineskins"	--	"Everything retro is fashionable again, and drinking wine from animal skins was before when retro was a thing, so--that big rich people's gathering in the park is extra nice."	--	0	9
"iundidjunk"	--	"[worry-undo of table of supplies]."	--	-1	10
"iundidnews"	--	"[worry-undo of table of marginalized people]."	--	-1	10
"skinniness"	--	"You are momentarily bombarded with ads for diet plans."	--	0	10

to say uuid:
	(- RAW(); -)

Include (-

[ RAW ix;
	for (ix=8: ix <= UUID_ARRAY->0 - 2: ix++) print (char) UUID_ARRAY->ix;
];

-).

to say whisky-wine:
	if your-table is table of supplies:
		choose row with tally of "wines" in your-table;
		say ". [if found entry is 0]You figure there may be something a bit more restrained at the end of your list--a different way to imbibe[else]You already got some wines, but whiskies should probably best wait to celebrate a successful revolution[end if]"

chapter nearlies table

to check-nearlies:
	if your-table is table of last names:
		continue the action;
	let mine-yet be false;
	repeat through table of nearlies:
		if tname entry is your-table:
			now mine-yet is true;
			if your-tally is tally entry:
				unless found-yet of mult entry:
					now found entry is 1;
			if your-tally is mult entry:
				now found entry is 0;
		else if mine-yet is true:
			break;

to decide whether found-yet of (x - indexed text):
	repeat through your-table:
		if x is "[tally entry]":
			if found entry is 1, decide yes;
			if found entry is 0, decide no;
	decide no;

this is the plural-almost rule:
	repeat through table of nearlies:
		if found entry is 1:
			if found-yet of mult entry:
				now found entry is 2;
			else:
				say "On your way back to the center, you wonder if you could've gone [if missage entry is 1]a bit farther[else if missage entry is 2]a small way along[else if missage entry is 3]a good bit ahead[else]down a small detour[end if] to find something. Or things. You felt like you were close.[paragraph break]";
				now found entry is 0;
				the rule succeeds;
	the rule succeeds;

table of nearlies [ton]
tally	mult	tname	found	missage
"jesse"	"jessie"	table of friends	0	4
"dis"	"disses"	table of marginalized people	0	3
"duke"	"dukes"	table of marginalized people	0	1
"hunk"	"hunks"	table of marginalized people	0	1
"indie"	"indies"	table of marginalized people	0	1
"junkie"	"junkies"	table of marginalized people	0	1
"kid"	"kids"	table of marginalized people	0	1
"sheikh"	"sheikhs"	table of marginalized people	0	1
"hijink"	"hijinks"	table of education	0	1
"hike"	"hikes"	table of education	0	1
"issue"	"issues"	table of education	0	1
"sine"	"sines"	table of education	0	1
"sin"	"sins"	table of education	0	1
"desk"	"desks"	table of supplies	0	1
"dish"	"dishes"	table of supplies	0	2
"hen"	"hens"	table of supplies	0	1
"kiwi"	"kiwis"	table of supplies	0	1
"nuke"	"nukes"	table of supplies	0	1
"shed"	"sheds"	table of supplies	0	1
"skunk"	"skunks"	table of supplies	0	1
"undie"	"undies"	table of supplies	0	1
"wine"	"wines"	table of supplies	0	1
"wish"	"wishes"	table of supplies	0	2
"dunk"	"dunks"	table of just plain cool stuff	0	1
"hiss"	"hisses"	table of just plain cool stuff	0	2
"husk"	"husks"	table of just plain cool stuff	0	1
"husk"	"huskies"	table of just plain cool stuff	0	3
"kiss"	"kisses"	table of just plain cool stuff	0	2
"shine"	"shininess"	table of just plain cool stuff	0	4
"skink"	"skinks"	table of just plain cool stuff	0	1
"ski"	"skis"	table of just plain cool stuff	0	1
"wink"	"winks"	table of just plain cool stuff	0	1

chapter final table

table of last names [tol]
tally (text)	descrip (text)	foundit (text)	what-drops	found
"dejesus"	"Spanish"	"[mark-away]."	suspiciously ordinary door	0
"deneke"	"German"	"[mark-away]."	suspiciously ordinary door	0
"dinh"	"Vietnamese"	"[mark-away]."	suspiciously ordinary door	0
"dinkins"	"New York"	"[mark-away]."	suspiciously ordinary door	0
"dinwiddie"	"Scottish"	"[mark-away]."	suspiciously ordinary door	0
"dudek"	"Polish"	"[mark-away]."	suspiciously ordinary door	0
"eddins"	"None"	"[mark-away]."	suspiciously ordinary door	0
"ennis"	"Not their 1st name"	"[mark-away]."	suspiciously ordinary door	0
"eskew"	"None"	"[mark-away]."	suspiciously ordinary door	0
"henke"	"None"	"[mark-away]."	suspiciously ordinary door	0
"hess"	"German"	"'You'd better believe you made a heck of a mess,' you write, among other things."	suspiciously ordinary door	0
"hines"	"Only 57% voted for"	"[mark-away]."	suspiciously ordinary door	0
"hsieh"	"Chinese"	"[mark-away]."	suspiciously ordinary door	0
"hsu"	"Chinese"	"[mark-away]."	suspiciously ordinary door	0
"hussein"	"Arabic"	"You get very good mileage indeed writing up a screed with ten different ways to say 'at least you aren't as bad as...' You're worried how easy it is."	suspiciously ordinary door	0
"ishii"	"Japanese"	"With no idea how true it is, you mention that this politician is even more 'I, I, I' than most."	suspiciously ordinary door	0
"jenkins"	"Disruptor"	"As you write up some absurd threat, you can't help but sign your name LEEROY, though you aren't silly enough to try to bust in."	suspiciously ordinary door	0
"jensen"	"Swedish"	"[mark-away]."	suspiciously ordinary door	0
"keese"	"None"	"Oh, wait, look. There's a weird pixelated bird on the door! As you make your mark, you reflect on the people keeping Fourdiopolis in the past under the guise of sticking with basics."	suspiciously ordinary door	0
"knudsen"	"Danish"	"[mark-away]."	suspiciously ordinary door	0
"kuhn"	"German"	"[mark-away]."	suspiciously ordinary door	0
"neeskens"	"Dutch"	"You feel an urge to mock this person's athletic ability and deride them as constantly second-best."	suspiciously ordinary door	0
"nhek"	"Cambodian"	"[mark-away]"	suspiciously ordinary door	0
"niesen"	"Scandinavian"	"[mark-away]."	suspiciously ordinary door	0
"nijinski"	"Polish/Russian"	"You write something about how this person is particularly good at dancing around issues, until they aren't. Booyah!"	suspiciously ordinary door	0
"nweke"	"Nigerian"	"You write something about how things fall apart in simple, powerful, no-nonsense language."	suspiciously ordinary door	0
"sheen"	"WINNING"	"As much as you distrust politicians who talk about winning, the alternative is...worse? This guy was particularly outrageous, you remember now. Entertaining, but outrageous."	suspiciously ordinary door	0
"sisk"	"None"	"[mark-away]."	suspiciously ordinary door	0
"sundin"	"Swedish"	"[mark-away]."	suspiciously ordinary door	0
"suskind"	"German"	"[mark-away]."	suspiciously ordinary door	0
"ueki"	"Japanese, unique"	"[mark-away]. "	suspiciously ordinary door	0
"weeks"	"takes their time"	"[mark-away]."	suspiciously ordinary door	0
"weiss"	"German"	"[mark-away]."	suspiciously ordinary door	0
"whidden"	"almost too close"	"[mark-away]."	suspiciously ordinary door	0
"wisniewski"	"Polish"	"As you make your mark, you feel a shudder of Loathing at Wisniewski also being The Man."	suspiciously ordinary door	0

to say mark-away:
	say "You read through your guidelines on rabble rousing literature and write up a short screed describing how [your-tally in title case] [one of]is typical of the whole bunch and one of the worst at the same time[or]doesn't care at all, but cares about themselves[or]is both too powerful and yet powerless to change the PEOPLE[or]doesn't understand common people but sure understands how to manipulate them[or]is the worst and yet controlled by even worse people at the same time[in random order]. You add in some bargle about [one of]how they'll get to spend more time with their lovely family soon[or]disgruntled ex-staffers TALK[or]they'll be the first out when people see all the corruption[or]their rags to riches story being a fraud compared to Ed Dunn[or]their lack of, or excessive, charisma is especially galling[or]Embarrassing Facts you know--ones you can't even write down[or]their lack of traditional values and desire to return Fourdiopolis to the 21st century won't stand[or]their [a random number between 85 and 95]% approval rating is a fraud[or]their getting [a random number between 85 and 95]% of the vote is suspicious[in random order]. Any crank can send an email like that, but few people have the guts to DROP BY. You dust your hands off and sneak away"

table of name yay
count	comment
1	"Well, you are in for it, now. Even doing this once gives some risk."
3	"You haven't been caught, yet. It's still nervy."
6	"Rebelling is almost becoming boring."
10	"You look at the names you have left, and you wonder if focusing on (or not focusing on) ethnic names Says Something About You. Well, it says you're a third of the way there."
--	"Halfway there. You can't believe THAT person--why, they offered token resistance to THAT bill..."
-9	"Three-quarters. That is a lot. You have sent a lesson to enough...or have you?"
-2	"Perhaps one or two should be left, as an example to the others. Or perhaps not."
0	"That is all. You have done well."

volume undo

include conditional undo by Jesse McGrew.

story-ended is a truth state that varies.

big-jump is a truth state that varies.

to end-loss-with-undo:
	now story-ended is true;
	end the story saying "[msg]";

to end-win-with-undo:
	now story-ended is true;
	end the story finally saying "[msg]";

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
		say "From the randomized...to the random";
		continue the action;
	say "[tc of q] down, [if score > 14]now only[else]still[end if] [3 - q in words] to go"

to say tc of (num - a number):
	let z be indexed text;
	now z is "[num in words]";
	say "[z in title case]";

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
table of just plain cool stuff	"[if score < 10]Still a way to go[else]Close, but...[end if]"	"All over except the last round"
table of last names	"Well, it was meant to be tough"	"Very impressive indeed"

rule for deciding whether to allow undo:
	if story-ended is true or big-jump is true:
		allow undo;
	else:
		say "You can't really quite reverse how and where you walked, or when you teleported[one of]. Worse, Fourdiopolis is no closer to time travel than Threediopolis, but it's a lot closer to proving time travel's impossible[or][stopping].[paragraph break]But don't worry, if you get killed somehow, you will be able to undo. And you can always zap back to the center and retrace your steps.";
		deny undo;

volume commands

period-warn is a truth state that varies.

locom-chars is a number that varies. locom-chars is 2.

after reading a command:
	let locom be the player's command in lower case;
	change the text of the player's command to "[locom]";
	if period-warn is false:
		if locom matches the regular expression "\.":
			say "You don't need to separate commands with periods. You [if score > 1]should've been noted you can munge directions together[else]may find out why in a bit[end if]. In the meantime, they may distract the parser.";
			now period-warn is true;
			wfak;
	now not-parseable-yet is false;
	if locom matches the regular expression "^<ewnsudhijk \.>*$":
		now not-parseable-yet is true;
[		if debug-state is true:
			say "DEBUG: [locom] [number of characters in locom] vs [locom-chars].";]
		if number of quasi-entries in outside-area > 0 and the player's command matches "^in$":
			continue the action;
		if number of characters in locom > locom-chars:
			if locom is "unkindness":
				continue the action;
			if locom is "i did i undid":
				continue the action;
			if locom is "i seek keen":
				continue the action;
			if locom is "in":
				continue the action;
			if locom matches the regular expression "^i (did|undid) (edu|junk|news)$":
				continue the action;
			dirparse locom;
			consider the silly stuff rule;
			reject the player's command;
	let w1 be word number 1 in locom;
	if the w1 is "g" or w1 is "again":
		say "That would actually make getting around in Fourdiopolis more complex. Because you can't really move from there to here, again, or not that way[if score < 3 and your-table is table of friends]. You'll understand once you find a few things--it'd just allow all kinds of extra crazy [italic type]guesses[roman type][else]. Most of the fun stuff would begin with G, though EGGS and DUNG would be left, which is not so fun[end if]. Using one-word directions should be quick enough.";
		reject the player's command;

check looking (this is the if command says L rule) :
	if the player's command matches the regular expression "^(l|look)\b":
		say "You look around, hoping for some weird fifth dimension, or eleventh direction, to look for something significant. You don't find it.";
	if dirparsing is true and quick-mode is true:
		say "[bold type]Speeding by sector [sec of ud][sec of ns][sec of ew][roman type][line break]";
		the rule succeeds;

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
			if charnum is allchar - 1:
				now dirparsing is false;
	now ignore-remaining-dirs is false;
	now dirparsing is false;
	now posschars is 0;

volume random silliness

show-silly is a truth state that varies. show-silly is usually true.

silly-row is a number that varies.

note-bad is a truth state that varies.

cycle-note is a truth state that varies.

skip-silly-this-turn is a truth state that varies.

to rulesAll: [used to turn rules ALL on at the very start of play]
	(- RulesAllSub(); -)

every turn (this is the silly stuff rule):
	if skip-silly-this-turn is true:
		now skip-silly-this-turn is false;
		the rule succeeds;
	if show-silly is true:
		if a random chance of 1 in 2 succeeds:
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
"Two people discuss the logistics of visiting every sector of Fourdiopolis before they die."
"A passer-by asks if you're willing to hear a one-minute lecture on how society represses you. You decline, even, or especially, after they say they've condensed it with practice."
"An older man tries to skip across the street with a pedestrian warning photographed, but the flash-cameras catch him blocking traffic. A younger kid who started earlier makes it."
"Even pedestrians babble about gas prices these days. Surely they didn't always, when there was only one type of gas, not ten."
"You try to focus on the less annoying of two conversations about voting for the lesser of two evils."
"Two activists get into a fight over whether the city should continually pump in instrumental music or heavy metal music on the streets."
"A kid shows off his trophy for three-dimensional bowling."
"Some kids voice can't believe their team with the now-extinct mascot lost to the expansion team with the long-extinct mascot."
"A malcontent grumbles that OF COURSE h and the other transporter directions should go 180 degrees the opposite of how they do."
"You see a police siren flash by, but you can't hear anything. Must be at a high pitch only teens can hear. You remember the last time you could. You miss it."
"Someone is ticketed for a broken Reality-Enhancing helmet. Those things are dangerous if they get too inaccurate."
"A smart-alecky kid remarks how people who can't visualize a hypercube don't deserve to use the transporters."
"An intense political argument! But both sides make up and agree that they're at least more interesting than the people they're fighting for. Oops. For whom they're fighting."
"Two gothy looking kids compare their nonconformist permits and wonder how more normal kids scored more flexible ones."
"A cop warns a kid about transporter joyriding in an HIJK loop. Because kids who say they'll try just one wind up going for all 24 possible combinations. That costs the taxpayer!"
"A mini-marathon thunders by. They all have those magnetic bibs that transporters can detect, so, no cheating."
"An old man recounts the day when all the two-letter country URL codes got used up."
"A passer-by hawks cemetery real estate. There's some open within five miles of the city, but not for long."
"Some crank cites shaky proof that overusing transporters makes you shorter. Another chimes in that it can make you taller, and it just depends which directions you go."
"In a fit of civic pride, citizens kvetch that Fourdiopolis will always be superior to Undergroundgrad, which may be the same size, but half of it doesn't COUNT."
"Several young hooligans dare a prospective gang member to try to teleport outside the city bounds, unless he's CHICKEN. Cheeeep, cheep, cheep, cheep!"
"A worldly-wise eleven-year-old explains to a ten-year-old that if you jaywalk, do it in the MIDDLE of the street, because thinking BIG. Also, it'll be harder for police cruisers to pull you over."
"A couple argues over the safest of six ways to walk to a new neighborhood 1 [rd of up] 1 [rd of north] 1 [rd of east]."
"You've grown oblivious to the whooshing of transport tubes, and one day you'll grow oblivious to your obliviousness."
"A distinguished-looking [if a random chance of 1 in 2 succeeds]wo[end if]man slips a street urchin 1000000 New Scrip for spraying particularly creative pro-government graffiti. The kid is grateful--food for a whole week! Or nutritious food for two days! Whichever."
"You do some brief math and realize it'd take fifteen--no, [italic type]seventeen[roman type] whole turns to get from the center to the downwestsouth corner."
"One person proclaims the plight of people living in the upeastnorth, downwestnorth, upwestsouth and downeastsouth corners of Fourdiopolis and how they don't have easy access to efficient teleportation transport."
"Someone hands out a flyer for the party of the YEAR at sector [unreachable]."
"You stumble onto some sort of geocaching competition clue that tells you to look around sector [unreachable] next. But that seems a bit too far away."
"You encounter an old friend who encourages you to visit them in sector [unreachable] when you get the time."
"You hear mumbles of a secret prison--I mean, detaining area--in [unreachable]."
"A police officer stops and accosts you and claims to remember a 'suspicious incident' from a bit ago in sector [unreachable]. You're pretty sure you haven't been there."
"An idealistic youngun tries to plot how many trips it'd take to visit all of Fourdiopolis's main blocks. He uses up so much scratch paper, he's warned and shooed by a Waste Police droid."
"A fellow pedestrian is fined for having a cracked phone-screen. He is apparently a repeat offender who hasn't gotten it cleared for a whole month."
"[if score < 2]You wonder how many moves it takes to get from one far corner of the city to the other, and back, and if they're the same[else]In a sudden rush of insight, you realize it will take 31 moves to get from one corner of Fourdiopolis to the other, then 24 to get back[end if]."
"A robo-dog zips between your legs with quantum-calculated precision. You hate them! If one stands by you too long, you get a weird embarrassing tingling. Apparently organic pets are worse. But you haven't seen many."
"Someone claiming to have been to Spaceneedleston says sure, it's posh, but it's not PRACTICAL or full of REAL PROGRESS like Fourdiopolis."
"People ahead of you discuss the politics of urban versus rural gerrymandering and qualifications for moving from half an effective vote to three-quarters, or even a full vote."
"A cop allows a kid reading an approved book to sit and loiter--if he isn't blocking foot-traffic TOO much."
"An argument erupts between members of the Nerd and Jock political parties, and when someone tries to mediate, he's panned for pretending he has and knows it all."
"You walk past a cheery pizza vendor droid. Well, it's cheery until someone tries for a prank order. Or even a weird subversive one like half canadian bacon with Pineapple, half artichoke with pesto, and light on the cheese--there are algorithms to check that and alert police."
"Gang leaders argue whether a disobedient underling should be smacked up or down."
"A political debate over whether payoffs to gangs or governments works better ensues."
"One kid tries to impress others with a story of a poor sap who got teleported into rock, another with a story of someone teleported five hundred feet above solid ground, and another tries to impress them with proof it'd never happen."
"You hear the swishing of sewage flow overhead."
"Some conspiracy theory nut goes on about how the transport tubes and/or teleporters destroyed his bike."

to say rd of (myd - a direction):
	if a random chance of 1 in 2 succeeds:
		say "[myd]";
	else:
		say "[opposite of myd]";

to say unreachable: [this picks something that can only be gotten in 11 moves and throws it to the player]
	let got-yet be false;
	while got-yet is false:
		choose a random row in table of elevensies;
		now got-yet is true;
		if a random chance of 1 in 2 succeeds:
			if x entry is y entry or y entry is z entry:
				now got-yet is false;
	let W be a list of numbers;
	add x entry to W;
	add y entry to W;
	add z entry to W;
	sort W in random order;
	say "[sec of entry 1 of W][sec of entry 2 of W][sec of entry 3 of W]";

table of elevensies
x	y	z
-9	-9	-1
-9	-9	1
-9	-8	-4
-9	-8	-2
-9	-7	-2
-9	-7	-1
-9	-6	-4
-9	-6	-3
-9	-5	-5
-9	-5	-3
-9	-1	9
-9	1	7
-9	1	9
-9	2	7
-9	2	8
-9	3	5
-9	3	6
-9	4	6
-9	4	8
-9	5	5
-8	-8	-5
-8	-8	-3
-8	-7	-4
-8	-7	-3
-8	-6	-6
-8	-6	-5
-8	2	9
-8	3	7
-8	3	8
-8	4	7
-8	4	9
-8	5	6
-8	5	8
-8	6	6
-7	-7	-6
-7	-7	-4
-7	-6	-5
-7	-5	-5
-7	1	9
-7	2	9
-7	3	8
-7	4	7
-7	4	8
-7	5	5
-7	5	6
-7	6	7
-6	3	9
-6	4	9
-6	5	7
-6	5	8
-6	6	8
-6	7	7
-5	3	9
-5	5	7
-5	5	9
-5	6	7
-5	6	8
-5	8	8
-4	6	9
-4	7	7
-4	7	8
-4	8	9
-3	5	9
-3	6	9
-3	7	8
-3	8	8
-2	7	9
-2	8	9
-1	7	9
-1	9	9
1	9	9

volume meta-verbs

chapter unkindnessing

unkindnessing is an action applying to nothing.

understand the command "unkindness" as something new.

understand "unkindness" as unkindnessing.

carry out unkindnessing:
	if your-table is table of last names:
		say "You're already hunting last names." instead;
	say "This will skip to the final toughest puzzle. Are you sure?";
	if debug-state is true or the player consents:
		say "Ok. Have fun.";
	else:
		say "Ok. Back to normal.";
		the rule succeeds;
	repeat through table of accomplishments:
		now solved entry is true;
	set-your-table table of last names;
	the rule succeeds;

chapter xyzzying

xyzzying is an action out of world.

understand the command "xyzzy" as something new.

understand "xyzzy" as xyzzying.

carry out xyzzying:
	say "What a totally out-of-date joke![paragraph break]Of course, there's some argument over whether the [italic type]proper[roman type] modern joke is wxyzzyx or wxyzzy, but...yeah.";
	the rule succeeds;

chapter wxyzzying

xyzzy-let is a number that varies.

wxyzzying is an action out of world.
wxyzzyxing is an action out of world.

understand the command "wxyzzy" as something new.
understand the command "wxyzzyx" as something new.

understand "wxyzzy" as wxyzzying.
understand "wxyzzyx" as wxyzzyxing.

to x-let (xnum - a number):
	if xyzzy-let is xnum:
		say "No, that still doesn't sound right.";
	else:
		say "No, no, the other way works better. Or less badly. Whichever.";
	now xyzzy-let is xnum;

carry out wxyzzying:
	x-let 6;
	the rule succeeds;

carry out wxyzzyxing:
	x-let 7;
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
	say "I'd like to thank Aaron Reed for providing a space where I can put this game so it doesn't seem like trolling or torture and also for checking with entrants to allow for a bit of cleanup before the first release. I was really conflicted about even putting this game out, because of its difficulty. The thing is--I [italic type]like[roman type] difficult stuff, though that's no excuse not to try to make it accessible to others. In fact, my goal is to make stuff that may seem difficult be a bit more accessible.[paragraph break]";
	say "I'd like to thank my testers, for putting up with something so confusing in so little time. [bold type]Buster Hudson, Robin Johnson and Teaspoon[roman type]. They found--well, the details would embarrass me. Both technical and aesthetic. I'm very grateful to them.[paragraph break]Also, Wade Clarke mentioned some neat things in-comp. It's not the first game of mine he's helped.[paragraph break]";
	say "And while I didn't have any personal contact with Zarf over this game, his Python regular-expression tester let me automate a lot of testing for the post-comp version.[paragraph break]";
	say "And finally, while it's fishy to list my Threediopolis testers by name so as to beef up my tester list...their thoughts and ideas helped me when I wrote up Fourdiopolis. I appreciate them.[paragraph break]The font in the cover 'art' is Chlorinar.";
	the rule succeeds;

chapter teching

teching is an action out of world.

understand the command "tech" as something new.

understand "tech" as teching.

carry out teching:
	say "Well, at first, I considered Kata and Ana, and maybe In and Out, or From and To. But I didn't know how that would capture diagonal movements, or make things different. So I wrote a bunch of PERL scripts with:[paragraph break][italic type]type english-words | grep [bracket]nsewudvxyz[close bracket] | grep [bracket]vxyz[close bracket][roman type]--or any four letters.";
	say "[line break]Eventually I figured how I wanted things to work--and I realized that jumping 2 of each in any direction would give the player some space. Not only that, the player would have a parity problem to figure if you needed an even or odd number of teleporter jumps. The only thing remaining was what the letters should be.";
	say "[line break]Then I remembered about cross products from calculus or physics or whatever. I, j, k. Rare enough they wouldn't create TOO many extra letters. So--the final one was h or l. I chose h, because I liked the names and numbers better. Plus L stood for look.";
	say "[line break]But it wasn't a full game until I figured how to break down the lists into serviceable sizes. You'd start with friends, because that helps you get an idea, then you'd move to supplies.";
	the rule succeeds;

volume errors/parser

understand "examine" and "x" as examining.

rule for supplying a missing noun when examining:
	if number of visible quasi-entries is 1:
		now the noun is a random visible quasi-entry;
		say "([the noun], since it's more interesting than your task list at the moment, though if you need, X LIST will work)[line break]";
	else:
		say "(the task list)[line break]";
		now the noun is the task list;

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
	if number of quasi-entries in outside-area is 1:
		say "Your eyes wander... hey! You can totally enter the [random visible quasi-entry], if you'd like.";
		the rule succeeds;
	let any-left be false;
	let total-left be 0;
	let cur-length be 3;
	let max-length be 3;
	repeat through your-table:
		if found entry is 0:
			now any-left is true;
			increment total-left;
		if max-length < number of characters in tally entry:
			now max-length is number of characters in tally entry;
	if any-left is false:
		say "No dawdling! Time to go back to the hideout. Where was it hidden inside, again?" instead;
	say "You consider what to do next. Hmm, [if total-left > 1]look for the shortest first: [end if]";
	while cur-length <= max-length:
		repeat through your-table:
			if number of characters in tally entry is cur-length:
				if found entry is 0:
					if there is no descrip entry:
						say "(needs descrip entry).";
					else:
						say "[bold type][descrip entry] at [sector-num of tally entry][roman type] [if total-left is 1]is the last task[else if total-left is 2]looks like the easier of the two[else]seems potentially the easiest[end if].";
					the rule succeeds;
		increment cur-length;
	say "BUG. Nothing is left.";

not-parseable-yet is a truth state that varies.

Rule for printing a parser error when the latest parser error is the not a verb i recognise error:
	say "I didn't recognize that verb[if not-parseable-yet is true]. Well, not yet[end if]. You can type A for the actions available. None should be too complex.";

chapter ring

after printing the locale description:
	if ns is 0 and ew is 0 and ud is 0 and number of characters in your-tally > 1:
		say "You sense you're both at the center and not, at the same time.";
	continue the action;

ring is an action applying to nothing.

understand the command "r" as something new.

understand "r" as ring.

r-yet is a truth state that varies.

in-place-yet is a truth state that varies.

carry out ring:
	let ncy be number of characters in your-tally;
	if ncy is 0:
		say "You're already at the center, and you haven't wandered since the last time you took a transporter." instead;
	if score < 2:
		if ncy is 1:
			say "You only just left the center. You're a little worried that if you use the transporters TOO frequently, you might get tracked somehow. Maybe with a bit more experience and confidence, you can sneak back quickly." instead;
		if ncy is 2:
			say "Maybe explore another block before hitting the transporters--you're not quite experienced or confident enough to do so yet. Using the transporters too frequently raises red flags." instead;
	if ncy > number of rows in table of far blab:
		say "Wow. Enough walking. Back to the center. Funny how the zap back rejuvenates you.";
	else:
		choose row ncy in table of far blab;
		say "[returny entry][paragraph break]";
	if number of visible quasi-entries > 0 and hideout is not in outside-area and ominous door is not in outside-area:
		say "You sure? There's a place you might wish to check.";
		if the player consents:
			say "You jump in the transporter, looking back for a brief moment.";
			reset-game;
			the rule succeeds;
		else:
			say "OK. You may wish to type C here.";
		the rule succeeds;
	if r-yet is false:
		now r-yet is true;
		say "You take one of the public teleporters back to the center. You don't need a special key. They're about the only thing free these days. The government, in a small sop to civil liberties, doesn't even track how many times a person uses it. Small things.[paragraph break]";
	if ns is 0 and ew is 0 and ud is 0 and in-place-yet is false:
		now in-place-yet is true;
		say "Hm. Weird. It feels like you didn't go anywhere, and at the same time, you did.[line break]";
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

chapter qing

qing is an action applying to nothing.

understand the command "q" as something new.

understand "q" as qing.

quick-mode is a truth state that varies.

carry out qing:
	now quick-mode is whether or not quick-mode is false;
	say "Now quick mode is [if quick-mode is true]on[else]off[end if].";
	the rule succeeds;

chapter aing

understand "v" as preferring unabbreviated room descriptions.

aing is an action out of world.

understand the command "a" as something new.

understand "a" as aing.

carry out aing:
	say "You can go in any direction, north, south, east or west, or up or down. You can abbreviate them. In addition, you have a device that lets you use transporters at will. They can send you in direction h, i, j, and k.";
	say "[2da][b]C[r] is short for check, to enter any building you may have found.";
	say "[2da][b]R[r] restarts your journey in sector 000 with a clear mind.";
	say "[2da][b]F[r] toggles the header with the list of remaining tasks.";
	say "[2da][b]B[r] gives brief room descriptions, which you may eventually want, as the random descriptions eventually loop. [b]V[r] expands them.";
	say "[2da][b]X[r] examines your list of tasks or, if an entry is nearby, examines that.";
	say "[2da][b]T[r] toggles silly random events that don't affect the game.";
	say "[2da][b]Q[r] toggles quick mode when you run around Fourdiopolis (ignores random events until you arrive at your destination).";
	say "[2da]Meta-commands (information on the game's development) include [b]ABOUT[r], [b]CREDITS[r] and [b]TECH[r].";
	if your-table is not table of friends:
		say "[2da][b]I DID I UNDID[r] will kick you back to [if your-table is table of last names]the cool stuff tasks[else if your-table is table of just plain cool stuff]the pod of three random task lists[else]finding friends[end if].";
		if your-table is not table of last names:
			choose row 2 in table of accomplishments;
			if solved entry is true:
				say "[2da][b]I UNDID EDU[r] will un-do the education task set.";
			choose row 3 in table of accomplishments;
			if solved entry is true:
				say "[2da][b]I UNDID JUNK[r] will un-do the supplies task set.";
			choose row 4 in table of accomplishments;
			if solved entry is true:
				say "[2da][b]I UNDID NEWS[r] will un-do the marginalized people task set.";
	if beta-state is true:
		say "Beta-testing commands:[line break]";
		say "[b]FO (1-6)[r] to force one list of things to do. 1 = friends, 2 = education, 3 = supplies, 4 = marginalized people, 5 = fun stuff, 6 = the bad guys. It's recommended you restart before doing this.";
		say "[b]FI[r] is an additional test command. FI 1 'solves' the first entry but makes the other 19 unsolved. FI 16 takes the first 16, leaving the last 4 unsolved. And so forth. So, FI (1-20) if you want to tinker.";
	the rule succeeds;

chapter fing

fing is an action out of world.

understand the command "f" as something new.

understand "f" as fing.

full-view is a truth state that varies.

To decide what number is screenh:
	(- VM_ScreenHeight() -);

carry out fing:
	if full-view is false:
		if screenh < 25 or screen width < 90:
			say "You need a 90x25 character window to make this work. It's currently [screen width] x [screenh]." instead;
	else:
		now should-rejig is true;
	now full-view is whether or not full-view is false;
	say "Now header view is [if full-view is true]on[else]off[end if].";
	the rule succeeds;

chapter keenseeking

keenseeking is an action applying to nothing.

understand the command "i seek keen" as something new.

understand "i seek keen" as keenseeking.

carry out keenseeking:
	if your-table is not table of friends:
		say "You already found the revolution's friends, so this isn't the way to skip forward any more[if your-table is not table of last names] besides editing the save file, fourdiop, or fourdiop.glkdata, and setting variables to 1 (done) or 0 (not) as you want[end if]." instead;
	choose row 1 in table of accomplishments;
	now solved entry is true;
	midtable-choose;
	say "You're now in the [cur-midtable] task set. You may undo, if you want.";
	now big-jump is true;
	the rule succeeds;

chapter undiding

undiding is an action applying to nothing.

understand the command "i did i undid" as something new.

understand "i did i undid" as undiding.

carry out undiding:
	let count be 0;
	if your-table is table of friends:
		say "You're already at the first task set, finding friends, so you can't go back any farther." instead;
	if your-table is table of just plain cool stuff: [reset to only having table of friends solved]
		now count is 0;
		repeat through table of accomplishments:
			increment count;
			if count is 1:
				now solved entry is true;
			else:
				now solved entry is false;
		midtable-choose;
		say "Now you are back to searching for [cur-midtable][scen-twaddle][extra-twiddle].";
	else if your-table is table of last names:
		choose row 5 in table of accomplishments;
		now solved entry is false;
		set-your-table table of just plain cool stuff;
		say "Now you're back to the last official task, the random cool stuff[scen-twaddle][extra-twiddle].";
	else:
		set-your-table table of friends;
		say "Now you are back to searching for friends, with no tasks done[scen-twaddle].";
	if number of characters in your-tally > 0:
		say "[line break]Oh, I also teleported you back to the center.";
		now teleported is true; [this is a small hack to quash the "you should have teleported" warning]
		reset-game;
	now big-jump is true;
	the rule succeeds;

to say scen-twaddle:
	say ", with no tasks done. Note that the game will not save this reverted status unless you win a task set"

to say extra-twiddle:
	say ". If you really want to twiddle things, find the file fourdiop (or fourdiop.glkdata) and either delete it or set all the 1-values to 0. You can also re-set them to 1. You've gotten this far--you definitely deserve to know this small cheat"

section undomiding

undomiding is an action applying to one number

carry out undomiding:
	if number understood > 4 or number understood < 2:
		say "Oops, this should never happen, but there's a bug in the I UNDID code. Email me at [email] if you can, to let me know [number understood] got passed." instead;
	if binary-solved is 0 or binary-solved is 1:
		say "You don't have any of the three middle scenarios solved, so trying to reset them won't do much[if on-this-table of number understood], especially since you're on the one you're trying to reset[end if]." instead;
	choose row number understood in table of accomplishments;
	if solved entry is false:
		say "The [table-by-num of number understood] task set is already unsolved[if on-this-table of number understood], and in fact, it's the one you're currently on[end if]." instead;
	now solved entry is false;
	if your-table is table of last names or your-table is table of just plain cool stuff:
		choose row 5 in table of accomplishments;
		if solved entry is true:
			now solved entry is false;
		midtable-choose;
		say "Unsolving the [cur-midtable] task set and making it the current one. If you didn't mean to do this, you can RESTART or type I SEEK KEEN.";
	else:
		say "Reverting the [table-by-num of number understood] task set to unsolved.";
	now big-jump is true;
	the rule succeeds;

to decide whether on-this-table of (nm - a number):
	choose row nm in table of solvable tables;
	if tabname entry is your-table, decide yes;
	decide no;

to say table-by-num of (num - a number):
	say "[if num is 2]education[else if num is 3]supply finding[else]ally finding[end if]"

to say cur-midtable:
	say "[if your-table is table of education]education[else if your-table is table of supplies]supply finding[else]ally finding";

section i undid edu-ing

undideduing is an action out of world.

understand the command "i undid edu" as something new.

understand "i undid edu" as undideduing.

carry out undideduing:
	try undomiding 2;
	the rule succeeds;

section i undid junk-ing

undidjunking is an action out of world.

understand the command "i undid junk" as something new.

understand "i undid junk" as undidjunking.

carry out undidjunking:
	try undomiding 3;
	the rule succeeds;

section i undid news-ing

undidnewsing is an action out of world.

understand the command "i undid news" as something new.

understand "i undid news" as undidnewsing.

carry out undidnewsing:
	try undomiding 4;
	the rule succeeds;

section domiding

domiding is an action applying to one number.

carry out domiding:
	if number understood > 4 or number understood < 2:
		say "Oops, this should never happen, but there's a bug in the I UNDID code. Email me at [email] if you can, to let me know [number understood] got passed." instead;
	if binary-solved is 0:
		say "You need to get past the friends task-list to try this." instead;
	if binary-solved is 15 or binary-solved is 31:
		say "You're already clear of the three middle scenarios." instead;
	choose row number understood in table of accomplishments;
	if solved entry is true:
		say "The [table-by-num of number understood] task set is already solved." instead;
	now solved entry is true;
	let said-yet be false;
	if on-this-table of number understood:
		now said-yet is true;
		say "Magically, you realize you already completed this task list and you can move ahead.[if binary-solved is 15][line break]";
		if binary-solved is not 15:
			midtable-choose;
			say "Now you're on the [table-by-num of number understood] task set.";
	if binary-solved is 15:
		say "Switching you to the table of cool stuff.";
		now your-table is table of just plain cool stuff;
	else:
		if said-yet is false:
			say "Solving the [table-by-num of number understood] task list, for later.";
	say "If you didn't mean to do this, you can UNDO.";
	now big-jump is true;
	the rule succeeds;


section i did edu-ing

dideduing is an action out of world.

understand the command "i did edu" as something new.

understand "i did edu" as dideduing.

carry out dideduing:
	try domiding 2;
	the rule succeeds;

section i did junk-ing

didjunking is an action out of world.

understand the command "i did junk" as something new.

understand "i did junk" as didjunking.

carry out didjunking:
	try domiding 3;
	the rule succeeds;

section i did news-ing

didnewsing is an action out of world.

understand the command "i did news" as something new.

understand "i did news" as didnewsing.

carry out didnewsing:
	try domiding 4;
	the rule succeeds;

volume status line

rule for constructing the status line when full-view is false:
	rejig the status line to 1 rows;
	center "Sector [sec of ud][sec of ns][sec of ew]: [score]/[number of rows in your-table]" at row 1;
	the rule succeeds;

last-lines is a number that varies. last-lines is usually 15.

should-rejig is a truth state that varies. should-rejig is usually true.

rule for constructing the status line when full-view is true and should-rejig is false:
	center "Sector [sec of ud][sec of ns][sec of ew]: [score]/[number of rows in your-table]" at row 1;

rule for constructing the status line when full-view is true and should-rejig is true:
	deepen the status line to last-lines rows;
	center "Sector [sec of ud][sec of ns][sec of ew]: [score]/[number of rows in your-table]" at row 1;
	now should-rejig is false;
	let total-lines be 2;
	move the cursor to 2;
	say "--";
	let hpos be 2;
	let tab-row be 0;
	repeat through your-table:
		increment tab-row;
		let cur-length be 0;
		if found entry is 0:
			now cur-length is 6 + number of characters in descrip entry + farchar of number of characters in tally entry;
			unless the remainder after dividing tab-row by 5 is 0:
				increase cur-length by 2;
			if cur-length + hpos > screen width - 1:
				say "[line break]  ";
				increment total-lines;
				now hpos is 2;
			say "[descrip entry]([sector-num of tally entry]/[farness of tally entry])";
			now hpos is hpos + cur-length;
		else:
			now cur-length is number of characters in tally entry;
			unless the remainder after dividing tab-row by 5 is 0:
				increase cur-length by 2;
			if cur-length + hpos > screen width - 1:
				say "[line break]  ";
				increment total-lines;
				now hpos is 2;
			say "[tally entry in upper case]";
			now hpos is hpos + cur-length;
		if the remainder after dividing tab-row by 5 is 0:
			if tab-row is not number of rows in your-table:
				say "[line break]--";
				increment total-lines;
				now hpos is 2;
		else:
			say ", "; [NOTE: this will go off-screen if you are at width - 1 or width]
	rejig the status line to total-lines rows;
	now last-lines is total-lines;
	the rule succeeds;

to rejig the status line to (depth - a number) rows:
	(- VM_StatusLineHeight({depth}); -);

volume when play begins

section debug - not for release

when play begins (this is the debug true rule):
	now debug-state is true;

chapter dsing

dsing is an action out of world.

understand the command "ds" as something new.

understand "ds" as dsing.

carry out dsing:
	now debug-state is whether or not debug-state is false;
	say "Debug-state is now [debug-state].";
	the rule succeeds;


part main stuff

when play begins (this is the set the status line rule):
	now your-tally is "";
	now right hand status line is "[score]/[number of rows in your-table]";
	now ns is 0;
	now ew is 0;
	now ud is 0;

screen-read is a truth state that varies.

when play begins (this is the set table defaults rule):
	set-your-table table of friends;
	sort the table of silly randoms in random order;
	if debug-state is false:
		say "Fourdiopolis has some screen reader support. Do you wish to use it?";
		if the player consents:
			now screen-read is true;
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
	repeat through table of name yay:
		if there is no count entry:
			now count entry is (1 + number of rows in table of last names) / 2;
		else if count entry < 1:
			increase count entry by number of rows in table of last names;
	wfak;

scrange is a list of numbers that varies.

chapter saved accomplishments

the file of accomplishments is called "fourdiop".

when play begins (this is the check accomplishments at start rule) :
	if file of accomplishments exists:
		read file of accomplishments into table of accomplishments;
	else:
		write file of accomplishments from the table of accomplishments;
	if binary-solved is wrongo:
		say "Oops! Something happened, and the save file appears to be corrupted. I'm resetting everything, though if you know the semi-secret commands, you can get back to where you were.";
		repeat through table of accomplishments:
			now solved entry is false;
	port-solvable;
	choose row 1 in table of accomplishments;
	if solved entry is false:
		if debug-state is true:
			say "[bold type]DEBUG: test 1w to get through.";
		set-your-table table of friends;
		the rule succeeds;
	else:
		now locom-chars is 1;
		choose row 5 in table of accomplishments;
		if solved entry is true and debug-state is false:
			say "There is only one thing left to do. You must find the shadow councillors--you only have their addresses--and place the mark of the rebellion on their doors. Do you dare risk the intellectual turmoil therein?";
			if the player consents:
				set-your-table table of last names;
				say "Ok. You have [number of rows in your-table] to find.";
			else:
				set-your-table table of just plain cool stuff;
				say "Ok. You will get to try the cool stuff again.";
			the rule succeeds;
		else if solved entry is true and debug-state is true:
			say "You've got all 5 areas solved, so to get to the 6th, type FO 6 then TEST 6W. You'll need to test the yes/no question manually.";
		else if debug-state is true:
			say "[bold type]DEBUG: test 5w to get through the final bit. Erase fourdiop.glkdata to clear everything, or use WF to change the data file.[roman type][line break]";
		if all-else-solved:
			set-your-table table of just plain cool stuff;
			if debug-state is true:
				say "[bold type]DEBUG: test 5w to get through.[roman type][line break]";
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
	if score is 2 and your-table is table of friends:
		now locom-chars is 1;
		say "[line break][if ever-fast is true]You've already been munging directions together into one word, and there's no reason to stop[else]Now that you've got the hang of things, you can just munge directions together. Like DUDES instead of D, U, D, E, S[end if].";

to comment-mine (j - a table name):
	repeat through j:
		if count entry is score:
			if there is no comment entry:
				say "BUG there should be a comment entry!";
			else:
				say "[line break][comment entry][line break]";

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
	let Q2 be a random number between 1 and 2;
	let X be true;
	while X is true:
		increase Q by Q2;
		if Q > 4:
			now Q is Q - 3;
		choose row Q in table of accomplishments;
		let X be solved entry;
	choose row Q in table of solvable tables;
	if debug-state is true:
		say "[bold type]DEBUG: [Q]: [tabname entry]. test [Q]w to get through.[roman type][line break]";
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
	say "[one of]--rhetorical questions are for narrative purposes, and yes/no questions will be specifically prompted that way[or][stopping]"

check requesting the score:
	say "So far, you've found [the score] of the [number of rows in your-table] locations you needed to[one of]. Note that X, or the status line, may be a better way to keep track of overall progress[or][stopping].";
	if scenery-found > 0:
		say "[line break]You've [if score > 0]also [end if]found [scenery-found] of [number of rows in table of scenery] miscellaneous bits of scenery.";
	the rule succeeds;

instead of drinking:
	say "There are hydration stations all around Fourdiopolis. You're nowhere near an inexpensive one."

volume silly coding tricks

chapter negate OOPS

Include (-

[ Keyboard  a_buffer a_table  nw i w w2 x1 x2;
	sline1 = score; sline2 = turns;

	while (true) {
		! Save the start of the buffer, in case "oops" needs to restore it
		for (i=0 : i<64 : i++) oops_workspace->i = a_buffer->i;

		! In case of an array entry corruption that shouldn't happen, but would be
		! disastrous if it did:
		#Ifdef TARGET_ZCODE;
		a_buffer->0 = INPUT_BUFFER_LEN;
		a_table->0 = 15;  ! Allow to split input into this many words
		#Endif; ! TARGET_

		! Print the prompt, and read in the words and dictionary addresses
		PrintPrompt();
		DrawStatusLine();
		KeyboardPrimitive(a_buffer, a_table);

		! Set nw to the number of words
		#Ifdef TARGET_ZCODE; nw = a_table->1; #Ifnot; nw = a_table-->0; #Endif;

		! If the line was blank, get a fresh line
		if (nw == 0) {
			@push etype; etype = BLANKLINE_PE;
			players_command = 100;
			BeginActivity(PRINTING_A_PARSER_ERROR_ACT);
			if (ForActivity(PRINTING_A_PARSER_ERROR_ACT) == false) L__M(##Miscellany,10);
			EndActivity(PRINTING_A_PARSER_ERROR_ACT);
			@pull etype;
			continue;
		}

		! Unless the opening word was OOPS, return
		! Conveniently, a_table-->1 is the first word on both the Z-machine and Glulx

		w = a_table-->1;
		! Undo handling

		if ((w == UNDO1__WD or UNDO3__WD) && (nw==1)) {
			Perform_Undo();
			continue;
		}
		i = VM_Save_Undo();
		#ifdef PREVENT_UNDO; undo_flag = 0; #endif;
		#ifndef PREVENT_UNDO; undo_flag = 2; #endif;
		if (i == -1) undo_flag = 0;
		if (i == 0) undo_flag = 1;
		if (i == 2) {
			VM_RestoreWindowColours();
			VM_Style(SUBHEADER_VMSTY);
			SL_Location(); print "^";
			! print (name) location, "^";
			VM_Style(NORMAL_VMSTY);
			L__M(##Miscellany, 13);
			continue;
		}
		return nw;
	}
];

-) instead of "Reading the Command" in "Parser.i6t"

volume beta testing - not for release

beta-state is a truth state that varies.

when play begins:
	now beta-state is true;
	if debug-state is true:
		continue the action;
	unless currently transcripting:
		say "Transcripts are a big help to me. Send them to blurglecruncheon@gmail.com. After you press a key, a dialog will appear telling what to save a transcript to. You can preface any comments with a punctuation mark e.g. >*This needs to be implemented[roman type].[paragraph break]Thanks!";
		wfak;
		try switching the story transcript on;
	else:
		say "Thanks for taking a transcript! blurglecruncheon@gmail.com."

chapter foing

[ * this forces you to read table # (X). 1=friends 2=education 3=supplies 4=marginalized 5=fun 6=last names. Negative values clear the table of accomplishments. ]
foing is an action applying to one number.

foxing is an action applying to nothing.

understand the command "fo" as something new.

understand "fo" as foxing.

carry out foxing:
	say "1-6 are the possible numbers." instead;

understand "fo [number]" as foing.

carry out foing:
	let whichtable be the number understood;
	if number understood < -6 or number understood > 6:
		say "1-6 please. 1=friends 2=education 3=supplies 4=marginalized 5=fun 6=last names. Or negative, to clear the table." instead;
	if number understood < 0:
		now whichtable is 0 - number understood;
		repeat through table of accomplishments:
			now solved entry is true;
	else:
		now whichtable is number understood;
	if number understood is 0:
		say "Choosing friends.";
		set-your-table the table of friends;
	else:
		choose row whichtable in table of solvable tables;
		set-your-table tabname entry;
	repeat through your-table:
		now found entry is 0;
	say "Your new table is [your-table]. You may wish to X to see the list again. Also, all 'found' entries are cleared.";
	the rule succeeds;

chapter fiing

[ * this fixes the number of things solved from 1 to 20 ]

fiing is an action applying to one number.

understand the command "fi" as something new.

understand "fi" as foxing.

understand "fi [number]" as fiing.

carry out fiing:
	let count be 0;
	if number understood < 0 or number understood > number of rows in your-table:
		say "0-[number of rows in your-table] please." instead;
	repeat through your-table:
		increment count;
		if count > number understood:
			now found entry is 0;
		else:
			now found entry is 1;
	if number understood is 0:
		say "Cleared all entries to 0.";
	else if number understood is number of rows in your-table:
		say "Set all entries to 1.";
	else:
		say "First [number understood] entries are 1, last are 0. X to make sure.";
	now score is number understood;
	the rule succeeds;

volume amusing the player

rule for amusing a victorious player:
	say "Have you tried:[line break]";
	let hide-ever be false;
	repeat through table of silly jokes:
		let hide-this be false;
		if there is a need-solved entry:
			unless need-solved entry is game-done:
				now hide-this is true;
				now hide-ever is true;
		if hide-this is false:
			say "[2da][funny-try entry][line break]";
	if hide-ever is true:
		say "You still can solve more and unlock other amusing things to do.";

to decide whether (n - a number) is game-done:
	if n < 1, decide no;
	if n is number of rows in table of accomplishments, decide yes;
	if n > number of rows in table of accomplishments, decide yes;
	choose row n in table of accomplishments;
	if solved entry is true, decide yes;
	decide no;

table of silly jokes
funny-try	need-solved
"to DIE?"	1
"waiting?"	--
"XYZZY? And the follow-up(s)?"	--
"sleeping?"	--
"A scenery location at 6FF?"	--
"to visit where I SEEK KEEN?"	--


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
		say "[bold type]DEBUG:[roman type] [t][line break]";

to dn (t - text):
	if debug-state is true:
		say "[bold type]DEBUG:[roman type] [t]";

a thing can be abstract. a thing is usually not abstract.

chapter wfing

[* this writes specific true/false items to a file & changes the game as randomly as you'd expect]

wf0ing is an action applying to nothing.

wfing is an action applying to one number.

understand the command "wf" as something new.

understand "wf" as wf0ing.

carry out wf0ing:
	try wfing -1;
	the rule succeeds;

understand "wf [number]" as wfing.

carry out wfing:
	if number understood is wrongo:
		say "That's not a valid number to write to the save file. 0, odd #s from 1 to 15 inclusive, and 31 work. Type -1 for full explanations." instead;
	now skip-silly-this-turn is true;
	if number understood is -4:
		let bin-num be binary-solved;
		if bin-num < 1 or bin-num > 14 or bin-num is wrongo:
			say "You need to have friends solved and not all the middle tables." instead;
		midtable-choose;
		the rule succeeds;
	if number understood is -3:
		say "Current table: [your-table]." instead;
	if number understood is -2:
		repeat through table of accomplishments:
			say "[solved entry].";
		the rule succeeds;
	if number understood is -1:
		say "0=clear all,31=solve all[line break]1=solve friends only. 2=solve education 4=solve supplies 8=solve marginalized.[paragraph break]Misc values: -1 gives use, -2 shows solved entries, -3 shows current table." instead;
	say "[bold type]NOTE: this writes to the file. The previous number was [binary-solved], if you wish to undo things.[roman type][line break]";
	let num-to-div be number understood;
	let count be 0;
	repeat through table of accomplishments:
		increment count;
		if the remainder after dividing num-to-div by 2 is 1:
			now solved entry is true;
		else:
			now solved entry is false;
		say "Row [count] is [solved entry] now.";
		now num-to-div is num-to-div / 2;
	write file of accomplishments from the table of accomplishments;
	if number understood is 0:
		set-your-table table of friends;
	else if number understood is 15:
		set-your-table table of just plain cool stuff;
	else if number understood is 31:
		set-your-table table of last names;
	else:
		midtable-choose;
	say "Current table is [your-table], and it has been reset.";
	if number of characters in your-tally > 0:
		say "[line break]Oh, I also teleported you back to the center.";
		now teleported is true; [this is a small hack to quash the "you should have teleported" warning]
		reset-game;
	the rule succeeds.

chapter cxing

[ * this is a small stub to examine the task list, then enter. It was used for walkthrough testing because it was slightly tricky to change /c/ to /x/c/. ]

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

[ * this shows accomplishments e.g. which tables you've solved]

saing is an action out of world.

understand the command "sa" as something new.

understand "sa" as saing.

carry out saing:
	show-accomp;
	the rule succeeds;

chapter scing

[* this changes how much scenery we see]

scing is an action applying to one number.

understand the command "sc" as something new.

understand "sc [number]" as scing.

carry out scing:
	let my-count be 0;
	repeat through table of scenery:
		if there is a found entry and found entry is 1:
			now found entry is 0;
	if number understood < 0:
		repeat through table of scenery:
			if there is a found entry and found entry is 0:
				increment my-count;
				if my-count + number understood > 0:
					now found entry is 1;
		say "All but [0 - number understood] sceneries set to 1.";
	else if number understood is 0:
		say "All cleared to 0.";
	else:
		repeat through table of scenery:
			if there is a found entry and found entry is 0:
				now found entry is 1;
				increment my-count;
				if my-count is number understood:
					break;
		say "[my-count] sceneries set to 1.";
	the rule succeeds;

chapter auto tests

[ * The tests basically consist of plowing through one of the win sheets. FO 1 means to force paper #1. They have been deprecated by Zarf's automated testing. Plus the names for 6 are out of date. ]

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

test 5w with "x/dunks/c/dusk/c/hisses/c/huskies/c/husks/c/inn/c/kisses/c/newsdesk/c/sheesh/c/shininess/c/skinks/c/skis/c/sunk/c/sunshine/c/swish/c/unwind/c/weekend/c/whee/c/whinnies/c/winks/c/hidden/c"

test 5wx with "x/dunks/cx/dusk/cx/hisses/cx/huskies/cx/husks/cx/inn/cx/kisses/cx/newsdesk/cx/sheesh/cx/shininess/cx/skinks/cx/skis/cx/sunk/cx/sunshine/cx/swish/cx/unwind/cx/weekend/cx/whee/cx/whinnies/cx/winks/cx/hidden/cx"

test 6win with "fo 6/dejesus/c/dinh/c/dinkins/c/dinwiddie/c/dudek/c/eddins/c/ennis/c/eskew/c/henke/c/hess/c/hines/c/hsieh/c/hsu/c/hussein/c/ishii/c/jenkins/c/jensen/c/keene/c/keese/c/knudsen/c/kuhn/c/niesen/c/sheen/c/shenn/c/shin/c/sisk/c/weeks/c/weiss/c/whidden/c/wisniewski/c/inside/c"

test 6w with "x/dejesus/c/dinh/c/dinkins/c/dinwiddie/c/dudek/c/eddins/c/ennis/c/eskew/c/henke/c/hess/c/hines/c/hsieh/c/hsu/c/hussein/c/ishii/c/jenkins/c/jensen/c/keene/c/keese/c/knudsen/c/kuhn/c/niesen/c/sheen/c/shenn/c/shin/c/sisk/c/weeks/c/weiss/c/whidden/c/wisniewski/c/inside/c"

test 6wx with "x/dejesus/cx/dinh/cx/dinkins/cx/dinwiddie/cx/dudek/cx/eddins/cx/ennis/cx/eskew/cx/henke/cx/hess/cx/hines/cx/hsieh/cx/hsu/cx/hussein/cx/ishii/cx/jenkins/cx/jensen/cx/keene/cx/keese/cx/knudsen/cx/kuhn/cx/niesen/cx/sheen/cx/shenn/cx/shin/cx/sisk/cx/weeks/cx/weiss/cx/whidden/cx/wisniewski/cx/inside/cx"