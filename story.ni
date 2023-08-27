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

the release number is 3.

[use memory economy.]

section includes

include Trivial Niceties by Andrew Schultz.

include Old School Verb Total Carnage by Andrew Schultz.

include Basic Screen Effects by Emily Short.

include Fourdiopolis Globals by Andrew Schultz.

include Fourdiopolis Definitions by Andrew Schultz.

include Fourdiopolis Tables by Andrew Schultz.

include Oops Zapper by Andrew Schultz.

include Again Zapper by Andrew Schultz.

section Beta Testing - not for release

include Fourdiopolis Beta Testing by Andrew Schultz.

section includes - not for release

include Fourdiopolis Tests by Andrew Schultz. [commenting this out saves 0x1000 z-machine space while debugging]

chapter stubs

to decide which table name is your-table:
	decide on objectives of cur-scen;

to shift-scen (sc - a scenario):
	now cur-scen is sc;
	now hidden-inside is true;
	now locom-chars is 1;
	if cur-scen is fri:
		now locom-chars is 2;
		now hidden-inside is false;
	let cur-left be binary-solved;
	repeat with SC2 running through scenarios:
		now won of SC2 is whether or not the remainder after dividing cur-left by 2 is 1;
		now cur-left is cur-left / 2;
	repeat through your-table:
		now found entry is 0;
	now score is 0;
	now should-rejig is true;

to reset-scenery (x - a number):
	if x > 1 or x < 0:
		say "You can only reset to 1 or 0.";
	repeat with Q running through scenery-tables:
		repeat through Q:
			if found entry is 0 or found entry is 1:
				now found entry is x;

to debug-say (x - text):
	if debug-state is true:
		say "[bold type]DEBUG:[roman type] [x][line break]";

to show-accomp:
	if debug-state is false, continue the action;
	let count be 0;
	repeat through table of accomplishments:
		increment count;
		say "[count]: [solved entry][line break]";
	say "Current table: [your-table].";

section number-counting stubs

[originally in debug only but useful for release]

to decide whether (n - a number) is bad-save-val:
	if n is 0 or n is 31, no;
	if n > 15, yes;
	if the remainder after dividing n by 2 is 0, yes;
	no;

to decide which number is binary-solved:
	let additive be 1;
	let total-sum be 0;
	repeat through table of accomplishments:
		if solved entry is true:
			increase total-sum by additive;
		now additive is additive * 2;
	decide on total-sum;

book variables

the player carries the task list.

description of task list is "BUG".

description of player is "[one of]You don't look particularly odd, but authorities and such have always said there's something suspicious about you. Lately, you've sort of wished there was. [or][stopping]You should blend in nicely with the scenery for all the tasks you need to do."

to say farness of (x - indexed text):
	let q be the number of characters in x;
	if q > 10:
		say "buggily far";
	else:
		say "[entry q in dist-to-txt]";

to say bug-near:
	say "You do a small random shuffle before taking a teleporter back to the center, just to throw off the city's data tracking complex. Not too random, though. You don't want to get picked up on suspicion of intoxication"

return-msgs is a list of text variable. return-msgs is {
"[bug-near].",
"[bug-near].",
"Your journey this time was very short, but no point wandering if it's off to a bad start.",
"A short journey, but maybe you discovered something to do. Or not-do.",
"A kind of short journey, good for exercise and sightseeing.",
"A kind of long journey this time.",
"A long journey. You're glad you're in shape so you can walk this much. Or maybe you've walked so much and you're now in shape. That's the sort of thing you think about during long walks.",
"It's been a very long walk indeed.",
"This walk has been extra long. You sense the further you went, the less likely you were to find something.",
"Man! That was a marathon, but you zapped back to the center before you got too tired."
}

dist-to-txt is a list of text variable. dist-to-txt is {
"buggily near",
"buggily near",
"very near",
"near",
"kinda near",
"kinda far",
"far",
"very far",
"extra far",
"WAY far"
}

carry out examining the task list:
	let Q be number of rows in your-table;
	let Q2 be 0;
	repeat through your-table:
		increment Q2;
		if the remainder after dividing Q2 by 5 is 1:
			say "[2da]";
		if found entry is 1:
			say "[bold type][if cur-scen is fri][tally entry in title case][else if cur-scen is las][tally entry in upper case][else][tally entry][end if][roman type]";
		else:
			say "[descrip entry] @ [cityloc entry] ";
			say "([farness of tally entry])";
		if the remainder after dividing Q2 by 5 is 0 or Q2 is number of rows in your-table:
			say ".";
		else:
			say ", ";
	say "[line break]There's a note scribbled in that you probably have to use a transporter to get to any of these places.";
	if hideout is visible:
		say "[line break]Ooh, the hideout to go back to is visible![line break]";
	else if hidden-inside is false:
		say "[line break]You're not sure where to report after reading this, but it's somewhere hidden inside. Where was it? B15? ED5? Anyway, they apparently had a backup shelter, if one got raided[if score > 14]. You've probably done enough to go back[end if].";
	else:
		say "[line break]You found the place hidden inside to return to. [if score > 14]Maybe you can go there, now[else]But you might not want to go back yet[end if].";
	if ever-examined-list is false:
		say "[line break]Hmm, you might not want to do these in explicit order. Maybe try and find the nearest ones first to get your feet wet.";
		now ever-examined-list is true;
	the rule succeeds;

to say losted:
	if ud > 9:
		say "A security droid whizzes behind you--you might get too much sun if you go any higher, and the ozone layer isn't healed yet! ";
	else if ud < -9:
		say "A small alarm goes off. Law-abiding citizens don't need to be digging beneath Fourdiopolis. Or even looking like they are. A security droid taps you on your left shoulder, and when you turn around, you realize it was on your right. [one of]Snea-kee[or]Fooled again[stopping]! ";
	else:
		say "An anti-suicide droid pulls you back as you walk close to what you realize is the edge of Fourdiopolis. It reminds you there are cleaner ways to do that, if you know where to look. ";
	say "You're whisked back to the center[if posschars > steps-so-far], and with this interruption, you decide to cancel the rest of your walking plans[end if].";
	if bounds-warn is false:
		say "[line break]You look at your list, and many of the locations are relatively close to the center. Maybe you don't need to venture near the edges that much.";
		now bounds-warn is true;
	now ignore-remaining-dirs is true;

book the room

outside-area is a privately-named room. printed name of outside-area is "Sector [your-sec]". "[outside-rand]"

to say outside-rand:
	unless set to unabbreviated room descriptions:
		continue the action;
	if a random chance of 2 in 5 succeeds:
		say "Teleporters, transport tubes, walkways. So ubiquitous, so similar, yet different[edge-check].[no line break]";
	else:
		say "[one of]You feel as if you both should and shouldn't know this area[or]There's a [one of]smaller[or]larger[at random] than usual crowd by the [one of]teleports[or]vertical tubes[at random] here. Well, it can't always be constant[or]The sidewalks go from too crowded to too empty to unremarkable as you walk around[or]You think you see someone from a few blocks ago, coming the opposite way again, but you can't just go up and ASK them[or]Suddenly you remember how, as a kid, you wanted to visit every single sector one day[or]Someone complains their map-tracker has led them the wrong way[or]You stop to wonder how confusing old times must have been, when city subsectors had curvy bent borders[or]You wonder what living in a smaller city, one where diagonal streets were legal, would be like[in random order][edge-check].[no line break]";

to say edge-check:
	if ud is 9:
		say ". You can see the sun above. No upward-tubes or buildings block your view";
	else if ew is 9 or ns is 9 or ew is -9 or ns is -9:
		say ". You can see the countryside beyond the Fourdiopolis limits here";
	else if ud is -9:
		say ". The tubes down here seem less, well, open";

check waiting:
	say "Loitering is a serious offense in Fourdiopolis. Officers often patrol for it. Often undercover. Which creates confusion, which makes loitering an even more serious offense." instead;

to say u-a:
	say "No need to attract undue attention"

understand the command "wake" as something new.
understand the command "think" as something new.

check burning: say "[u-a]." instead;
check jumping: say "[u-a]." instead;
check waving: say "[u-a]." instead;
check waving hands: say "[u-a]." instead;

the block attacking rule is not listed in any rulebook.
the block burning rule is not listed in any rulebook.
the block kissing rule is not listed in any rulebook.
the block waving hands rule is not listed in any rulebook.
the block sleeping rule is not listed in any rulebook.
the block swearing obscenely rule is not listed in any rulebook.
the block swearing mildly rule is not listed in any rulebook.
the block sleeping rule is not listed in any rulebook.

check sleeping:
	say "There's laws against that. Well, there are no laws against sleeping, but sleeping in possession of valuables encourages criminals. Sleeping without them is vagrancy." instead;

check swearing obscenely:
	say "The old swear words have a certain charm, even though a language commission established new previously nonsensical words as more neurologically effective." instead;

check swearing mildly:
	say "The government approves of such restraint in frustration." instead;

check kissing:
	say "That both is and isn't appropriate in Fourdiopolis." instead;

check attacking:
	say "Violence? In this surveilled day and age? Never!" instead;

the transporter is scenery in outside-area. "The transporter--well, the details are inside, and they're not important. It has the letters I, J, K and H in a rough circle, or maybe they're vertices of a pyramid, or something. Anyway, you can probably just go h, i, j or k, and it'll understand that. No need for red tape."

check entering transporter:
	say "That's a bit ambiguous. Try going h, i, j or k, instead." instead;

check examining the transporter for the first time:
	say "You review the literature on the transporter about the four approved teleport directions: h, i, j and k, and something about quaternions, and something else about how you can't have people passing each other in opposite directions in a teleportal field, or BAM. It's all pretty standard stuff, and if people can't understand it, they look knowledgeable nodding their heads about it."

check entering transporter:
	say "You can just try to go the various directions: h, i, j, or k."

book going

the can't exit when not inside anything rule is not listed in any rulebook.

check exiting: say "Out? Of Fourdiopolis? You don't have proper documentation. And you can't get it. Well, not in this game.";

to dirsmack:
	say "In these efficient days, people find using more than one letter for a direction too flowery.[line break]";

the command shortening tip rule is listed first in the check going rules.

check going (this is the command shortening tip rule):
	if word number 1 in the player's command in lower case is "go", say "In these sped-up days, the word 'go' is superfluous. Unless you are in charge, like Ed Dunn.'" instead;
	let XX be "[the player's command in lower case]";
	repeat with X running through { "north", "south", "east", "west", "up", "down" }:
		if XX matches the text X, case insensitively:
			dirsmack instead;

to see-if-left:
	if number of quasi-entries in outside-area > 0:
		if quick-mode is true:
			say "You're vaguely worried you missed something, but you have somewhere to be. You think. You hope.";
			continue the action;
		say "As you [if noun is teleporty]blip[else]walk[end if] away, you reflect you can always find [if hideout is in outside-area]the hideout[else]that place[end if] later, if you want.";
		now walked-by is true;

check going inside:
	if word number 1 in the player's command is "in":
		if score >= 2, dirparse "in" instead;
	say "You don't see anywhere to go in." instead;

to boost-num-tally:
	let q be dirhash of noun;
	if steps-so-far >= 8:
		now walk-short-3 is 11 * walk-short-3;
		increase walk-short-3 by q;
	else if steps-so-far >= 4:
		now walk-short-2 is 11 * walk-short-2;
		increase walk-short-2 by q;
	else:
		now walk-short-1 is 11 * walk-short-1;
		increase walk-short-1 by q;
	increment steps-so-far;

definition: a number (called nu) is outofbounds:
	if nu > 9 or nu < -9, yes;
	no;

to decide whether broke-boundary:
	if ns is outofbounds or ew is outofbounds or ud is outofbounds, yes;
	no;

this is the walked out of bounds rule:
	if broke-boundary:
		say "[losted]";
		reset-game instead;

this is the teleported out of bounds rule:
	if broke-boundary:
		decrease ew by ewgo of noun;
		decrease ns by nsgo of noun;
		decrease ud by udgo of noun;
		the rule succeeds;
	now teleported is true;

to move-player-along:
	increase ew by ewgo of noun;
	increase ns by nsgo of noun;
	increase ud by udgo of noun;
	if noun is teleporty:
		abide by the teleported out of bounds rule;
	else:
		abide by the walked out of bounds rule;
	if noun is up or noun is down, check-up-down;
	see-if-left;

to say no-jump-for-you:
	say "The teleporter buzzes ominously--a warning that such a displacement might negatively affect the overall safety rating of Fourdiopolis teleporters. Or let you escape without proper documentation. Whichever";

check going:
	move-player-along;
	if steps-so-far is 7 and cur-scen is fri and a random chance of 1 in 3 succeeds:
		say "You think and hope[one of][or], again, [stopping]that they wouldn't have you wandering THIS far to start.[paragraph break]";
	if steps-so-far > 10:
		say "You've been wandering for too long. You get tired, and you figure it's probably best to start over with a clean look on things. You push the button on your teleporter device[if posschars > 11], cancelling the rest of your planned journey[end if], and [if ew is 0 and ns is 0 and ud is 0]everything looks a bit different[else]back you go to the center[end if].[paragraph break]";
		now ignore-remaining-dirs is true;
		reset-game instead;
	tally-and-place;
	check-near-misses;

to tally-and-place:
	boost-num-tally;
	repeat with Q running through things in outside-area:
		if Q is not player and Q is not transporter:
			now Q is off-stage;
	if steps-so-far > 2 and steps-so-far < 11:
		repeat through your-table:
			if walk-short-1 is hash1 entry and walk-short-2 is hash2 entry and walk-short-3 is hash3 entry:
				if found entry is not 1:
					if there is no what-drops entry:
						move generic door to outside-area;
						say "BUG we need to get rid of the generic door.";
						continue the action;
					if location of what-drops entry is not outside-area:
						move what-drops entry to outside-area;
						continue the action;
		repeat through cur-scenery-table:
			if walk-short-1 is hash1 entry and walk-short-2 is hash2 entry and walk-short-3 is hash3 entry:
				if there is a what-drops entry:
					now found entry is 1;
					move what-drops entry to outside-area;
					continue the action;

scenery-tables is a list of table names that varies. scenery-tables is {table of scenery 3, table of scenery 4, table of scenery 5, table of scenery 6, table of scenery 7, table of scenery 8, table of scenery 9, table of scenery 10 }

definition: a scenario (called SC) is ahead:
	if SC is cur-scen, no;
	if SC is FRI, no; [never look back]
	if SC is not LAS and cur-scen is STU, no; [don't clue any of the 3 previous in cool stuff mode]
	if won of SC is true, no;
	if cur-scen is las, no;
	yes;

to decide whether around-hideout:
	if walk-short-1 is 10799 and walk-short-2 is 69, yes;
	if walk-short-1 is 10357 and walk-short-2 is 34, yes;
	no;

to decide which table name is cur-scenery-table:
	decide on entry (steps-so-far - 2) in scenery-tables;

after printing the locale description:
	if steps-so-far > 2:
		repeat with SC running through ahead scenarios:
			sweep-up SC;
		if steps-so-far < 11:
			repeat through cur-scenery-table:
				if walk-short-1 is hash1 entry and walk-short-2 is hash2 entry and walk-short-3 is hash3 entry:
					if found entry is not 1:
						increment scenery-found;
						unless there is a what-drops entry:
							if debug-state is true:
								say "DEBUG: Scenery debug check!";
							say "[foundit entry][line break]";
							if scenery-found is 0:
								bracket-say "this wasn't critical to the game, but it's just something neat to find. There are [allscenery - 1] more to find, but they're meant to be obscure. Congratulations on finding one, though!";
							if found entry is 0: [-1 for ISEEKKEEN/etc is a bit of a hack but yeah]
								now found entry is 1;
	if around-hideout:
		if hideout is not in outside-area:
			move hideout to outside-area;
			say "[one of]All right! You think you see it! The hideout where your [if cur-scen is not fri]latest jaunt[else]whole task[end if] started![or]The hideout, again. A bit easier to recognize this time.[stopping]";
			now hidden-inside is true;
	repeat through your-table:
		if found entry is 1:
			if walk-short-1 is hash1 entry and walk-short-2 is hash2 entry and walk-short-3 is hash3 entry:
				if note-previous-found is false:
					say "Hm, that place you found before--it's somewhere around here, but you're focused on what to find next.";
					now note-previous-found is true;

to sweep-up (sc - a scenario):
	repeat through objectives of sc:
		if walk-short-1 is hash1 entry and walk-short-2 is hash2 entry and walk-short-3 is hash3 entry:
			if sc is LAS:
				say "You feel very cold. Something unknown but oppressive lies nearby, but you don't [if cur-scen is fri]nearly [else if cur-scen is stu]quite [end if]have the means or skill to see or deal with it, yet.";
			else:
				say "You feel like maybe you got a bit ahead of yourself, here, and you should remember this place for a later time.";
			break;

chapter diagonals

check going a diagonal direction:
	say "You can't cut through buildings on your own. Even with teleporters being all the rage. Well, apparently you could cut through some lobbies years ago, but surveillance and keycard-doors have taken care of that." instead;

book directions

giing is an action applying to nothing.

understand the command "i" as something new.

understand "i" as giing.

carry out giing:
	if i-warn is false:
		bracket-say "just to check, I is a direction, not the command to take inventory. Since you only have one item, X will suffice.";
		now i-warn is true;
	try going i instead;

to bracket-say (tx - text):
	say "[italic type][bracket]NOTE: [tx][close bracket][r][line break]";

book whatever

to reset-game:
	now ns is 0;
	now ew is 0;
	now ud is 0;
	now all visible quasi-entries are off-stage; [probably not neccessary to put all the way up here but just in case]
	now walk-short-1 is 0;
	now walk-short-2 is 0;
	now walk-short-3 is 0;
	if walked-by is false:
		consider the plural-almost rule;
	now walked-by is false;
	if teleported is false:
		say "You remember hearing that anywhere worth getting to, you had to teleport to. And you didn't, this run.[line break]";
	else:
		now teleported is false;
		if steps-so-far > 6 and cur-scen is fri:
			say "You saw a lot of Fourdiopolis this time, but maybe your assigned tasks aren't [if steps-so-far is 7]quite [else if steps-so-far > 8]nearly [end if]as complex (yet) as having to walk THIS much.[paragraph break]"; [skipping 8 is intentional!]
		if steps-so-far >= 8:
			if cur-scen is not las and score < 5:
				say "Hmm. If you're having trouble finding things, you may wish to start with stuff that's near first, instead of what's first on your list.[paragraph break]";
	now steps-so-far is 0;
	say "[b]Back at Sector 000[r][line break]";

book entries

a quasi-entry is a kind of thing.

the hideout is a quasi-entry. "[one of]Hey! It's that hideout you stumbled on! Well, one of the two![or]The hideout where you got your tasks from is nearby.[stopping]". description is "Yup, you recognize it now. You just need to look carefully--but not too carefully so others get curious."

the otherwise unremarkable hovel is a quasi-entry. description is "It's a bit too calculatedly unremarkable. I mean, most hovels have some special feature, but this has nothing."

the edutainment storefront is a quasi-entry. "You recognize an edutainment storefront by the brain hologram.". description is "You can't tell what's inside. Perhaps you should (C)heck."

the suspiciously ordinary door is a quasi-entry. description is "The door is too clean and smooth. The wind blows by it with a nothing-to-see-here whistle.". "[if score is 0]Is it? Isn't it? Yes...no...it's an entry to a shadow campaign headquarters! Not that campaigns ever fail, for those who want to be elected. A suspiciously ordinary door leads in.[else if score is 1]It's a bit easier to recognize the shadow campaign headquarters now. There's another![else if score is 2]Another suspiciously ordinary door. You're sure, trying to underpin how the 'leaders' are just like regular people except for being hooked on powers.[else][another-door]. You wonder how you never recognized this sort of thing before.[end if]"

to say another-door:
	say "[one of]And here's another 'plain' door[or]Hey! You found another one[or]You feel clever at having found another secret door[or]Another suspiciously ordinary door, [one of]less suspicious than[or]as suspicious as[at random] the last, but that's suspicious in its own way[or]A door so plain, you wonder if it was ever opened[at random]"

understand "hq/headquarters" and "shadow/-- campaign/-- headquarters/hq" as suspiciously ordinary door.

the generic door that needs replacing is a quasi-entry. description is "Boy! It's generic all right! Generic enough you can just (C)heck to enter."

the front door is a quasi-entry. description is "There's no name on it, but you can (C)heck if anyone's home.".

the ominous door is a quasi-entry. "An ominous door awaits here, to enter if you dare.". description is "Boy! It's ominous, all right! It might be a mistake to enter.".

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
		if walk-short-1 is hash1 entry and walk-short-2 is hash2 entry and walk-short-3 is hash3 entry:
			if noun is front door:
				say "(well, knocking, actually)[line break]";
			if noun is suspiciously ordinary door:
				say "Whoah. You're not brave enough to enter. But you'll leave a message.[paragraph break]";
			if there is a foundit entry:
				say "[foundit entry][line break]";
			else if cur-scen is las:
				say "You read through your guidelines on rabble-rousing literature and write up a short screed describing how [tally entry in title case] [one of]is typical of the whole bunch and one of the worst at the same time[or]doesn't care at all, but cares about themselves[or]is both too powerful and yet powerless to change the PEOPLE[or]doesn't understand common people but sure understands how to manipulate them[or]is the worst and yet controlled by even worse people at the same time[in random order]. You add in some bargle about [one of]how they'll get to spend more time with their lovely family soon[or]disgruntled ex-staffers TALK[or]they'll be the first out when people see all the corruption[or]their rags to riches story being a fraud compared to Ed Dunn[or]their lack of, or excessive, charisma is especially galling[or]Embarrassing Facts you know--ones you can't even write down[or]their lack of traditional values and desire to return Fourdiopolis to the 22nd or even 21st century won't stand[or]their [a random number between 85 and 95]% approval rating is a fraud[or]their getting [a random number between 85 and 95]% of the vote is suspicious[in random order]. Any crank can send an email like that, but few people have the guts to DROP BY. You dust your hands off and sneak away";
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
		abide by the win-rule of cur-scen;
		end-win-with-undo;
		the rule succeeds;
	say "Oops, should've found something." instead;

to say rand-yay:
	say "[one of]especially clever about that one[or]like maybe you can see a missing location you couldn't figure before[or]confident, but not cocky[or]focused, sensible, and logical--but not TOO much[or]happy to know the city's full of secrets[or]like you'd like to tell someone about that, but you'd probably get in trouble[in random order]"

book ending rules

this is the fri-win rule:
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

definition: a scenario (called sc) is finished:
	if sc is las, no;
	if won of sc is true, yes;
	no;

this is the mid-win rule:
	abide by the gen-score-end-check rule;
	choose row (scidx of cur-scen) in table of accomplishments;
	now solved entry is true;
	write file of accomplishments from the table of accomplishments;
	let nfs be number of finished scenarios;
	if nfs is 4:
		say "You've gotten all the supplies the rebels need! Now, for the final challenge: find fun stuff that will make a revolution worthwhile. There's--well, we don't know much about having fun, but we're sure other people do.";
	else:
		say "'You did [if score is 20]a perfect job[else]such a good job. [score in words] of 20 is impressive[end if]! But hey! There's still a bit more. We're--well, even shorter of competent people like you to find stuff. There's just [4 - nfs in words] other big twenty-item task[if 4 - nfs > 1]s[end if] left to do, but--it'll be about the same challenge as what you already found.'";
	bracket-say "if you wish to undo this specific task set, you can type I UNDID [spec-undo]. This will be in the A command, if you forget.";

this is the stu-win rule:
	abide by the gen-score-end-check rule;
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

this is the las-win rule:
	if score is 0:
		say "'Boo! Fink.' they chide you. But they know that with all the supplies ready, they don't need fearmongering anyway. Power to the people, well, hopefully.";
	else if score  < 7:
		say "'Well, it's a start. These people are hard to get at. But...we have enough momentum anyway. We hope.'";
	else if score < 18:
		say "'A bit disappointing, but, well, they'll be exposed with time anyway. Maybe those who haven't gotten anything yet will be scared in their own way.'";
	else if score < 23:
		say "'A majority! [if score * 2 is last-scen-rows]Well, if we round up. [end if]Perhaps there is some hope that they can be scared to act before we have to. Hm, we might anyway. It'll be fun.'";
	else if score < 29:
		say "'Wow! We could hardly have hoped for more! Though--err, well, maybe you could've figured THEM, or...oh, never mind.'";
	else if score < last-scen-rows:
		say "'Impressive indeed! We're glad you're not on THEIR side. We'd have gotten a lot more threats now than we already have.'";
	else:
		say "'All of them? You're almost scaring us. Don't worry. Almost.'";
	if score * 2 >= last-scen-rows:
		say "[paragraph break]You ask if you can come along for the uprisings, but they assure you your technical skills are far too valuable. You feel sort of ripped off, until you realize that means all-you-can-eat from the supplies you requisitioned earlier.";
		continue the action;
	the rule succeeds;

this is the gen-score-end-check rule:
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
		the rule succeeds;

to say spec-undo:
	if cur-scen is peo:
		say "DUDES";
	else if cur-scen is sup:
		say "JUNK";
	else:
		say "EDU";

to say despite-good:
	say "[if binary-solved > 1] despite your good work elsewhere[end if]"

book what to find

to say seek-track:
	let ln be a list of indexed text;
	repeat with Q running through scenery-tables:
		repeat through Q:
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

volume undo

include conditional undo by Jesse McGrew.

to end-loss-with-undo:
	now story-ended is true;
	end the story saying "[msg]";

to end-win-with-undo:
	now story-ended is true;
	end the story finally saying "[msg]";

to say msg:
	if walk-short-1 is 817: [ "die" ]
		say "Hope you enjoyed the silly death";
		continue the action;
	if lose-msg of cur-scen is not empty:
		say "[if score > 14][win-msg of cur-scen][else][lose-msg of cur-scen][end if]";
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

rule for deciding whether to allow undo:
	if story-ended is true or just-level-warped is true:
		allow undo;
	else:
		say "You can't really quite reverse how and where you walked, or when you teleported[one of]. Worse, Fourdiopolis is no closer to time travel than Threediopolis, but it's a lot closer to proving time travel's impossible[or][stopping].[paragraph break]But don't worry, if you get killed somehow, you will be able to undo. And you can always zap back to the center and retrace your steps.";
		deny undo;

volume commands

after reading a command:
	let locom be the player's command in lower case;
	change the text of the player's command to "[locom]";
	if period-warn is false:
		if locom matches the regular expression "\.":
			say "You don't need to separate commands with periods. You [if score > 1]should've been noted you can munge directions together[else]may find out why in a bit[end if]. In the meantime, they may distract the parser.";
			now period-warn is true;
			wfak;
	now not-parseable-yet is false;
	now just-level-warped is false;
	if number of characters in locom > locom-chars and locom matches the regular expression "^<ewnsudhijk \.>*$":
		now not-parseable-yet is true;
[		if debug-state is true:
			say "DEBUG: [locom] [number of characters in locom] vs [locom-chars].";]
		if locom is "in", continue the action;
		let ncl be number of characters in locom;
		if ncl >= 10:
			if locom is "unkindness":
				unkindness;
			else if locom is "i did i undid":
				didundid;
			else if locom is "i seek keen":
				seekkeen;
			else if locom matches the regular expression "^i (did|undid) (edu|junk|news)$":
				let my-num be 2;
				if locom matches the text "junk":
					now my-num is 3;
				else if locom matches the text "news":
					now my-num is 4;
				if locom matches the text "undid":
					try undomiding my-num;
				else:
					try domiding my-num;
				reject the player's command;
			else if ncl > 10:
				say "Too long a walk to contemplate.";
				reject the player's command;
		dirparse locom;
		consider the silly stuff rule;
		reject the player's command;

lplaining is an action applying to nothing.
understand "l" as lplaining.

check lplaining:
	say "You look around, hoping for some weird fifth dimension, or eleventh direction, to look for something significant. You don't find it.";
	try looking instead;

check looking:
	if dirparsing is true and quick-mode is true:
		say "[b]Speeding by sector [your-sec][r][line break]";
		the rule succeeds;

to dirparse (dirlump - indexed text):
	if number of characters in dirlump > 2 and steps-so-far > 0:
		[if debug-state is true:
			say "DEBUG: [text-tally] and [number of characters in dirlump].";]
		if debug-state is false:
			say "You aren't starting from the center. Do you still wish to turbo ahead?";
			if the player consents:
				say "Ok.";
			else:
				say "Just type [b]R[roman type] to go to the center and try again.";
				continue the action;
		else:
			say "WARNING should have question but skipping for testing purposes.";
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
	now posschars is steps-so-far + allchar;
	repeat with charnum running from 1 to allchar:
		unless ignore-remaining-dirs is true:
			let cnc be character number charnum in dirlump;
			repeat through table of dirmatches:
				if cnc is let entry:
					try going dir entry;
					break;
			if cnc is ".":
				bracket-say "ignoring period.";
			if charnum is allchar - 1:
				now dirparsing is false;
	now ignore-remaining-dirs is false;
	now dirparsing is false;
	now posschars is 0;

table of dirmatches
let	dir
"w"	west
"e"	east
"n"	north
"s"	south
"u"	up
"d"	down
"h"	h
"i"	i
"j"	j
"k"	k

volume random silliness

every turn (this is the silly stuff rule):
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
			if note-t-command is false:
				bracket-say "You can turn this random text off with T. You don't need to interact with citizens on the street in any way.";
				now note-t-command is true;

to say rd of (myd - a direction):
	if a random chance of 1 in 2 succeeds:
		say "[myd]";
	else:
		say "[opposite of myd]";

volume meta-verbs

chapter unkindnessing

to unkindness:
	if cur-scen is las:
		say "You're already hunting last names.";
		continue the action;
	say "This will skip to the final toughest puzzle. Are you sure?";
	if debug-state is true or the player consents:
		say "Ok. Have fun.";
	else:
		say "Ok. Back to normal.";
		continue the action;
	repeat through table of accomplishments:
		now solved entry is true;
	shift-scen LAS;

chapter xyzzying

xyzzying is an action out of world.

understand the command "xyzzy" as something new.

understand "xyzzy" as xyzzying.

carry out xyzzying:
	say "What a totally out-of-date joke![paragraph break]Of course, there's some argument over whether the [italic type]proper[roman type] modern joke is wxyzzyx or wxyzzy, but...yeah.";
	the rule succeeds;

chapter wxyzzying

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
	say "[this-game] is a sequel to [3d]. It was inspired by a joke review Hanon Ondricek wrote in the IFComp 2013 authors['] forum, of an alternate-universe IFComp game called Onediopolis. I posted something like 'Ha ha, of course, if there were a game, it'd be [this-game], but probably not. It'd be too weird.'[paragraph break]";
	say "But the idea and the itch were there. The only problem? It really seemed impossible at first. I didn't know what the directions would be, or how or why they were what they were. Unfortunately there was no way to make it as intuitive as [3d], but once I figured you could have several slates of tasks, things began to open up. But unfortunately, any list of things to find went into three digits, which is overload.[paragraph break]";
	say "I don't strictly want to send out a throwaway game, but sometimes--you have to get your work out there somewhere to move on. And that was the case with initially submitting the game. And I'm grateful to Aaron Reed for allowing a Back Garden that allows me to write things like this that might not be home runs, or that some people would just wouldn't like. But--they're there, and I want to clear them out somehow for the next thing. I hit the old 'I don't want to inflict this on my testers' when it'd be even worse on a larger scale to inflict it on judges. Overall, though, I'm pleased with my post-comp work.[paragraph break]";
	say "So I'd like to encourage others who say 'gee, well, should I?' that, yes, you should. Whether it's too personal, not personal enough, too general or too specific--if you've had doubts for a couple months, you've done enough thinking. Get a draft out there, etc. Some people won't like it, and it's okay.[paragraph break]";
	say "People who helped with [this-game] are in [b]CREDITS[r]. If you haven't played [3d], there may be spoilers about more detailed discussion in another auxiliary meta-command called [b]TECH[r].[paragraph break]";
	say "[this-game], despite requiring considerable thought, should be POLITE on the Zarfian cruelty scale. There is one joke death, but it is undoable.[paragraph break]";
	say "Release 2 on August 14, 2016 cleared up some of the bigger bugs. This verified some code of David Kinder's that allowed me not to redraw the status line every time did indeed speed up Fourdiopolis a bit more.[paragraph break]";
	say "Release 3 was on XX X, 2023. It allowed for a Z-Machine version and fixed a lot of bugs.[paragraph break]";
	say "Also, there will not be a Fivediopolis. No way, no how.";
	the rule succeeds;

chapter creditsing

creditsing is an action out of world.

understand the command "credits" as something new.

understand "credits" as creditsing.

carry out creditsing:
	say "I'd like to thank Aaron Reed for providing a space where I can put this game so it doesn't seem like trolling or torture and also for checking with entrants to allow for a bit of cleanup before the first release. I was really conflicted about even putting this game out, because of its difficulty. The thing is--I [italic type]like[roman type] difficult stuff, though that's no excuse not to try to make it accessible to others. In fact, my goal is to make stuff that may seem difficult be a bit more accessible.[paragraph break]";
	say "I'd like to thank my testers, for putting up with something so confusing in so little time. [bold type]Buster Hudson, Robin Johnson and Teaspoon[roman type]. They found--well, the details would embarrass me. Both technical and aesthetic. I'm very grateful to them.[paragraph break]Also, Wade Clarke mentioned some neat things in-comp. It's not the first game of mine he's helped.[paragraph break]";
	say "And while I didn't have any personal contact with Zarf over this game, his Python regular-expression tester let me automate a lot of testing for post-comp versions.[paragraph break]";
	say "And finally, while it's fishy to list my [3d] testers by name so as to beef up my tester list...their thoughts and ideas helped me when I wrote up Fourdiopolis. I appreciate them.[paragraph break]The font in the cover 'art' is Chlorinar.";
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
	say "[line break]Zarf's Python regression testing suite was critical to making fixes in the post-comp release of Fourdiopolis. It found a lot, and it helped me test random shuffling of solutions. I recommend it, if you are writing an Inform game. Even knowing the simple stuff works, or when it breaks, is a big help. Testing can be tiring--your work or others[']!";
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
	if any-left is false, say "No dawdling! Time to go back to the hideout. Where was it hidden inside, again?" instead;
	say "You consider what to do next. Hmm, [if total-left > 1]look for the shortest first: [end if]";
	while cur-length <= max-length:
		repeat through your-table:
			if number of characters in tally entry is cur-length:
				if found entry is 0:
					if there is no descrip entry:
						say "(needs descrip entry).";
					else:
						say "[bold type][descrip entry] at [cityloc entry][roman type] [if total-left is 1]is the last task[else if total-left is 2]looks like the easier of the two[else]seems potentially the easiest[end if].";
					the rule succeeds;
		increment cur-length;
	say "BUG. Nothing is left.";

Rule for printing a parser error when the latest parser error is the not a verb i recognise error:
	say "I didn't recognize that verb[if not-parseable-yet is true]. Well, not yet[end if]. You can type A for the actions available. None should be too complex.";

chapter ring

after printing the locale description:
	if ns is 0 and ew is 0 and ud is 0 and steps-so-far > 1:
		say "You sense you're both at the center and not, at the same time.";
	continue the action;

ring is an action applying to nothing.

understand the command "r" as something new.

understand "r" as ring.

carry out ring:
	let ncy be steps-so-far;
	if ncy is 0, say "You're already at the center, and you haven't wandered since the last time you took a transporter." instead;
	if score < 2:
		if ncy is 1, say "You only just left the center. You're a little worried that if you use the transporters TOO frequently, you might get tracked somehow. Maybe with a bit more experience and confidence, you can sneak back quickly." instead;
		if ncy is 2, say "Maybe explore another block before hitting the transporters--you're not quite experienced or confident enough to do so yet. Using the transporters too frequently raises red flags." instead;
	if ncy > 10:
		say "Wow. Enough walking. Back to the center. Funny how the zap back rejuvenates you.";
	else:
		say "[entry ncy in return-msgs][paragraph break]";
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
	if ns is 0 and ew is 0 and ud is 0 and noted-center-return is false:
		now noted-center-return is true;
		say "Hm. Weird. It feels like you didn't go anywhere, and at the same time, you did.[line break]";
	reset-game;
	the rule succeeds;

chapter cing

cing is an action applying to nothing.

understand the command "c" as something new.

understand "c" as cing.

carry out cing:
	if number of visible quasi-entries is 0, say "Nothing to check." instead;
	try entering a random visible quasi-entry;
	the rule succeeds;

chapter qing

qing is an action applying to nothing.

understand the command "q" as something new.

understand "q" as qing.

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
	if cur-scen is not fri:
		say "[2da][b]I DID I UNDID[r] will kick you back to [if cur-scen is las]the cool stuff tasks[else if cur-scen is stu]the pod of three random task lists[else]finding friends[end if].";
		if cur-scen is not las:
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

carry out fing:
	if full-view is false:
		if screenh < 25 or screen width < 90, say "You need a 90x25 character window to make this work. It's currently [screen width] x [screenh]." instead;
	else:
		now should-rejig is true;
	now full-view is whether or not full-view is false;
	say "Now header view is [if full-view is true]on[else]off[end if].";
	the rule succeeds;

chapter keenseeking

to seekkeen:
	if cur-scen is not fri:
		say "You already found the revolution's friends, so this isn't the way to skip forward any more[if cur-scen is not las] besides editing the save file, fourdiop, or fourdiop.glkdata, and setting variables to 1 (done) or 0 (not) as you want[end if].";
		continue the action;
	choose row 1 in table of accomplishments;
	now solved entry is true;
	midtable-choose;
	say "You're now in the [cur-midtable] task set. You may undo, if you want.";
	now just-level-warped is true;

chapter undiding

to didundid:
	let count be 0;
	if cur-scen is fri:
		say "You're already at the first task set, finding friends, so you can't go back any farther.";
		continue the action;
	if cur-scen is stu: [reset to only having table of friends solved]
		now count is 0;
		repeat through table of accomplishments:
			increment count;
			if count is 1:
				now solved entry is true;
			else:
				now solved entry is false;
		midtable-choose;
		say "Now you are back to searching for [cur-midtable][scen-twaddle][extra-twiddle].";
	else if cur-scen is las:
		choose row 5 in table of accomplishments;
		now solved entry is false;
		shift-scen STU;
		say "Now you're back to the last official task, the random cool stuff[scen-twaddle][extra-twiddle].";
	else:
		shift-scen FRI;
		say "Now you are back to searching for friends, with no tasks done[scen-twaddle].";
	if steps-so-far > 0:
		say "[line break]Oh, I also teleported you back to the center.";
		now teleported is true; [this is a small hack to quash the "you should have teleported" warning]
		reset-game;
	now just-level-warped is true;

to say scen-twaddle:
	say ", with no tasks done. Note that the game will not save this reverted status unless you win a task set"

to say extra-twiddle:
	say ". If you really want to twiddle things, find the file fourdiop (or fourdiop.glkdata) and either delete it or set all the 1-values to 0. You can also re-set them to 1. You've gotten this far--you definitely deserve to know this small cheat"

section undomiding

undomiding is an action applying to one number.

to decide whether already-here:
	if cur-scen is entry (number understood) of scenario-list, yes;
	no;

carry out undomiding:
	if number understood > 4 or number understood < 2, say "Oops, this should never happen, but there's a bug in the [b]I UNDID[r] code. Email me at [email] if you can, to let me know [number understood] got passed." instead;
	if binary-solved is 0 or binary-solved is 1, say "You don't have any of the three middle scenarios solved, so trying to reset them won't do much[if already-here], especially since you're on the one you're trying to reset[end if]." instead;
	choose row number understood in table of accomplishments;
	if solved entry is false, say "The [table-by-num of number understood] task set is already unsolved[if already-here], and in fact, it's the one you're currently on[end if]." instead;
	now solved entry is false;
	if cur-scen is las or cur-scen is stu:
		choose row 5 in table of accomplishments;
		if solved entry is true:
			now solved entry is false;
		midtable-choose;
		say "Unsolving the [cur-midtable] task set and making it the current one. If you didn't mean to do this, you can [b]RESTART[r] or type [b]I SEEK KEEN[r].";
	else:
		say "Reverting the [table-by-num of number understood] task set to unsolved.";
	now just-level-warped is true;
	the rule succeeds;

to say table-by-num of (num - a number):
	say "[if num is 2]education[else if num is 3]supply finding[else]ally finding[end if]"

to say cur-midtable:
	say "[if cur-scen is edu]education[else if cur-scen is sup]supply finding[else]ally finding";

section domiding

domiding is an action applying to one number.

carry out domiding:
	if number understood > 4 or number understood < 2, say "Oops, this should never happen, but there's a bug in the I UNDID code. Email me at [email] if you can, to let me know [number understood] got passed." instead;
	if binary-solved is 0, say "You need to get past the friends task-list to try this." instead;
	if binary-solved is 15 or binary-solved is 31, say "You're already clear of the three middle scenarios." instead;
	choose row number understood in table of accomplishments;
	if solved entry is true, say "The [table-by-num of number understood] task set is already solved." instead;
	now solved entry is true;
	let said-yet be false;
	if cur-scen is entry (number understood) of scenario-list:
		now said-yet is true;
		say "Magically, you realize you already completed this task list and you can move ahead.[if binary-solved is 15][line break]";
		if binary-solved is not 15:
			midtable-choose;
			say "Now you're on the [table-by-num of number understood] task set.";
	if binary-solved is 15:
		say "Switching you to the table of cool stuff.";
		shift-scen STU;
	else:
		if said-yet is false:
			say "Solving the [table-by-num of number understood] task list, for later.";
	say "If you didn't mean to do this, you can UNDO.";
	now just-level-warped is true;
	the rule succeeds;

volume status line

rule for constructing the status line when full-view is false:
	rejig the status line to 1 rows;
	center "Sector [your-sec]: [score-of]" at row 1;
	the rule succeeds;

rule for constructing the status line when full-view is true and should-rejig is false:
	center "Sector [your-sec]: [score-of]" at row 1;

rule for constructing the status line when full-view is true and should-rejig is true:
	deepen the status line to last-lines rows;
	center "Sector [your-sec]: [score-of]" at row 1;
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
			now cur-length is 6 + number of characters in descrip entry + number of characters in entry (number of characters in tally entry) of dist-to-txt;
			unless the remainder after dividing tab-row by 5 is 0:
				increase cur-length by 2;
			if cur-length + hpos > screen width - 1:
				say "[line break]  ";
				increment total-lines;
				now hpos is 2;
			say "[descrip entry]([cityloc entry]/[farness of tally entry])";
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

volume when play begins

part main stuff

when play begins (this is the set the status line rule):
	now walk-short-1 is 0;
	now walk-short-2 is 0;
	now walk-short-3 is 0;
	now right hand status line is "[score-of]";
	now ns is 0;
	now ew is 0;
	now ud is 0;
	repeat with Q running through scenery-tables:
		increase allscenery by number of rows in Q;

to decide which number is last-scen-rows: decide on number of rows in table of las finds

when play begins (this is the set table defaults rule):
	shift-scen FRI;
	sort the table of silly randoms in random order;
	if debug-state is false:
		say "Fourdiopolis has some screen reader support. Do you wish to use it?";
		if the player consents:
			now screen-read is true;
	repeat through table of las milestones:
		if there is no count entry:
			now count entry is (1 + last-scen-rows) / 2;
		else if count entry < 1:
			increase count entry by last-scen-rows;

scrange is a list of numbers that varies.

chapter saved accomplishments

the file of accomplishments is called "fourdiop".

when play begins (this is the check accomplishments at start rule) :
	if file of accomplishments exists:
		read file of accomplishments into table of accomplishments;
	else:
		write file of accomplishments from the table of accomplishments;
	if binary-solved is bad-save-val:
		say "Oops! Something happened, and the save file appears to be corrupted. I'm resetting everything, though if you know the semi-secret commands, you can get back to where you were.";
		repeat through table of accomplishments:
			now solved entry is false;
		wfak;
	port-solvable;
	let total-solved be 0;
	repeat with SC running through scenarios:
		if won of SC is true, increment total-solved;
	if binary-solved is 0:
		give-intro;
		if debug-state is true:
			say "[bold type]DEBUG: test 1w to get through.";
		shift-scen FRI;
		the rule succeeds;
	else if binary-solved is 31:
		now locom-chars is 1;
		if debug-state is true:
			say "[bold type]DEBUG: You've got all 5 areas solved, so to get to the 6th, type FO 6 then TEST 6W. You'll need to test the yes/no question manually.[roman type][line break]";
		say "Wow! Hey! You haven't been caught yet! There is only one thing left to do. You must find the shadow councillors--you only have their addresses--and place the mark of the rebellion on their doors. Do you dare risk the intellectual turmoil therein?";
		if debug-state is false and the player consents:
			shift-scen LAS;
			say "Ok. You have [number of rows in your-table] to find.";
		else:
			shift-scen STU;
			say "Ok. You will get to try the cool stuff again.";
		the rule succeeds;
	else if binary-solved is 15:
		if debug-state is true:
			say "[bold type]DEBUG: test 5w to get through the final bit. Erase fourdiop.glkdata to clear everything, or use WF to change the data file.[roman type][line break]";
		say "Well, you've covered the practical stuff. It's time for the impractical stuff which, if you think about it, is practical in its own way, because the government is only about helping citizens with strictly practical stuff. They spend a lot of money each year to prove it, too.";
		if all-else-solved:
			shift-scen STU;
			if debug-state is true:
				say "[bold type]DEBUG: test 5w to get through.[roman type][line break]";
	else:
		if total-solved is 1:
			say "You brought everyone together, but without supplies, you can't do much but have a therapy session. Someone hands you some pills to stave off teleporter sickness, and you are told to pick one of three pieces of paper in front of you...";
			wfak;
		else if total-solved is 2:
			say "Nobody else has really stepped up. Since you've already done pretty well, you're given the chance to do more. Someone flips a coin, nods, and hands you a task list...";
			wfak;
		else:
			say "You feel exhausted, but if you dig deep, you could find the energy for one more round. You're handed one last paper, told (for good luck) not to turn it over until you've left.";
			wfak;
		midtable-choose;

to give-intro: [this is for the very start before everything is solved]
	say "Threediopolis was quite a structural and engineering experiment, but it's so last century. There are more people than ever in the world! They need to be packed in further! And Fourdiopolis allows 90% more population density per square feet of land! Land it hasn't sunk into yet!";
	wfak;
	say "That's mostly due to teleporter technology. Their ley lines or whatever can't interfere with walking, and you can't have a teleportal path that goes there and back. hat's been known since 2110, but they weren't safe until 2180--and not cheap until now. Nowhere near free like the vertical transporters, but if you know the right people...";
	wfak;
	say "And there's a lot of other stuff they're upset about. There's oppression. Oh, lots of it! The oppression is so oppressive, the counter-oppressive forces oppress everyday citizens with new examples of oppression. There's probably a Nash Equilibrium between oppression and counter-oppression, but it doesn't feel stable.";
	wfak;
	say "You've heard rumors of business files of a fellow from last century named Ed Dunn. He employed runners to find places Internet searches and GPSs couldn't. He made a killing. Apparently, the people working for him were happier and more fulfilled than he was, and they even found places he never could. He'd ask to walk with them, but when he went along, nothing would pop up. You just needed an impractical mind. Sort of like what people accused YOU of having.";
	wfak;
	say "And you have gotten social demerits and such. You claimed you didn't mean to do whatever, and the authorities said it's worse that way, what if you mean to one day?";
	wfak;
	say "It's not going to be like that. It can't be like that. The authorities covered those loopholes. But somehow...you stumbled onto a bunch of nonconformists. They were surprised you found them, then they realized you weren't a government agent, and you didn't even like the government. They gave you a key to the teleporters. And a task list. Of stuff to find. To help them overthrow the government. It's up to you, to find unusual things and people not stamped out yet.";
	say "[bold type]NOTE: to see commands for Fourdiopolis, type VERBS or VERB, or V for short.[roman type][paragraph break]";
	wfak;

to port-solvable:
	repeat with J running from 1 to 5:
		choose row J in table of accomplishments;
		now won of (entry J in scenario-list) is solved entry;

to decide whether all-else-solved:
	let Q be 2;
	while Q < number of rows in table of accomplishments:
		choose row Q in table of accomplishments;
		if solved entry is false, decide no;
		increment Q;
	decide yes;

to check-silly-comments:
	repeat through milestones of cur-scen:
		if count entry is score:
			if there is no comment entry:
				say "BUG there should be a comment entry!";
			else:
				say "[line break][comment entry][line break]";
	if score is 2 and cur-scen is FRI:
		now locom-chars is 1;
		say "[line break][if ever-fast is true]You've already been munging directions together into one word, and there's no reason to stop[else]Now that you've got the hang of things, you can just munge directions together. Like DUDES instead of D, U, D, E, S[end if].";

table of accomplishments
solved
false
false
false
false
false

to midtable-choose:
	if all-else-solved:
		shift-scen STU;
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
	shift-scen entry Q of scenario-list;
	if debug-state is true:
		say "[bold type]DEBUG: [Q]: [objectives of cur-scen]. test [Q]w to get through.[roman type][line break]";

volume change default verbs

ting is an action out of world.

understand the command "t" as something new.

Understand "t" as ting.

carry out ting:
	now show-silly is whether or not show-silly is false;
	say "Silly random events are now [if show-silly is true]on[else]off[end if].";
	now note-t-command is true;

understand "b" as preferring sometimes abbreviated room descriptions.

the block drinking rule is not listed in any rulebook.
the block saying yes rule is not listed in any rulebook.
the block saying no rule is not listed in any rulebook.

check saying yes: say "Not much to say yes to[rhet]." instead;

check saying no: say "Not much to say no to[rhet]." instead;

to say rhet:
	say "[one of]--rhetorical questions are for narrative purposes, and yes/no questions will be specifically prompted that way[or][stopping]"

check requesting the score:
	say "So far, you've found [the score] of the [number of rows in your-table] locations you needed to[one of]. Note that X, or the status line, may be a better way to keep track of overall progress[or][stopping].";
	if scenery-found > 0:
		say "[line break]You've [if score > 0]also [end if]found [scenery-found] of [allscenery] miscellaneous bits of scenery.";
	the rule succeeds;

check drinking: say "There are hydration stations all around Fourdiopolis. You're nowhere near an inexpensive one." instead;

volume i6 coding magic

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
