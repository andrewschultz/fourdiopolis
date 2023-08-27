Version 1/230821 of Fourdiopolis Tests by Andrew Schultz begins here.

"This lays out basic IDE tests for Fourdiopolis, along with general commands that help to gauge game states. It tests all five main starting scenarios."

volume auto tests

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

volume programmed-in tests, shortcuts, and so forth

volume testing - not for release

when play begins (this is the test for written stuff rule):
	repeat with SC running through scenarios:
		tab-check objectives of SC;
	say "Testing notes:[paragraph break]WF resets the save tables by a binary number (0-31, 1=first).[line break]sc (-14 to 14) changes so we've seen (#) scenery for positive numbers, or still need them for negative. The game tracks scenery from the table of 4-long.";

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

[include property checking by Emily Short.

a thing can be abstract. a thing is usually not abstract.]

chapter wfing

[* this writes specific true/false items to a file & changes the game as randomly as you'd expect]

wf0ing is an action out of world.

wfing is an action out of world applying to one number.

understand the command "wf" as something new.

understand "wf" as wf0ing.

carry out wf0ing:
	try wfing -1;
	the rule succeeds;

understand "wf [number]" as wfing.

carry out wfing:
	if number understood is wrongo, say "That's not a valid number to write to the save file. 0, odd #s from 1 to 15 inclusive, and 31 work. Type -1 for full explanations." instead;
	if number understood is -4:
		let bin-num be binary-solved;
		if bin-num < 1 or bin-num > 14 or bin-num is wrongo, say "You need to have friends solved and not all the middle tables." instead;
		midtable-choose;
		the rule succeeds;
	if number understood is -3, say "Current table: [your-table]." instead;
	if number understood is -2:
		repeat through table of accomplishments:
			say "[solved entry].";
		the rule succeeds;
	if number understood is -1, say "0=clear all,31=solve all[line break]1=solve friends only. 2=solve education 4=solve supplies 8=solve marginalized.[paragraph break]Misc values: -1 gives use, -2 shows solved entries, -3 shows current table." instead;
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
		shift-scen FRI;
	else if number understood is 15:
		shift-scen STU;
	else if number understood is 31:
		shift-scen LAS;
	else:
		midtable-choose;
	say "Current table is [your-table], and it has been reset.";
	if steps-so-far > 0:
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
	if number of visible quasi-entries is 0, say "Nothing to check." instead;
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
	let toNum be 0;
	let X be number of rows in table of scenery 4;
	if the number understood > X or number understood < 0 - X:
		say "Oops. That's too many to leave undone. You need between -[X] and [X]. 0 resets all to unseen.";
		the rule succeeds;
	let max-count be X;
	if max-count < 0:
		now max-count is 0 - max-count;
	if X < 0:
		now toNum is 1;
	repeat with Q running through scenery-tables:
		repeat through Q:
			if there is a found entry and found entry is not -1:
				now found entry is toNum;
	while my-count < max-count: [everything is set to 0/1 except for the ones we need to change]
		increment my-count;
		choose row my-count in table of scenery 4;
		now found entry is 1 - toNum;
	now x is number understood;
	if x < 0:
		now x is 0 - x;
	say "Marking found scenery for [if number understood < 0]all but [end if][X] scenery rows.";
	if your-table is not table of last names:
		say "This is maybe most effective when you are on the final round, but scenery will still reappear/disappear from Table of Scenery 4.";

Fourdiopolis Tests ends here.

---- DOCUMENTATION ----
