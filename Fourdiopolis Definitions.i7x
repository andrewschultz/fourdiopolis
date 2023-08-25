Version 1/230825 of Fourdiopolis Definitions by Andrew Schultz begins here.

"This encompasses small stubs, particularly <to decide which> and <definition> that would clutter up the main code and be hard to find otherwise. You can see what could or should be sent here with def.py. It also includes Fourdiopolis's custom directions and weird operations on them"

volume mostly about directions

h is a direction. the opposite of h is i. [ None of these are true! But opposites are never used for teleport directions, and Inform (sensibly) demands we define one, because Fourdiopolis is a very odd case indeed. ]
i is a direction. the opposite of i is h.
j is a direction. the opposite of j is k.
k is a direction. the opposite of k is j.

outside-area is west of outside-area.
outside-area is north of outside-area.
outside-area is up of outside-area.
outside-area is h of outside-area. [outside-area is i of outside-area. outside-area is j of outside-area.] outside-area is k of outside-area.

chapter udgo/ewgo/nsgo (for how transporters work)

a direction has a number called ewgo.
a direction has a number called nsgo.
a direction has a number called udgo.

ewgo of west is 1. ewgo of east is -1.
nsgo of north is 1. nsgo of south is -1.
udgo of up is 1. udgo of down is -1.

udgo of h is 2. ewgo of h is 2. nsgo of h is 2.
udgo of i is -2. ewgo of i is 2. nsgo of i is -2.
udgo of j is -2. ewgo of j is -2. nsgo of j is 2.
udgo of k is 2. ewgo of k is -2. nsgo of k is 2.

chapter dirhashes

a direction has a number called dirhash.

dirhash of south is 1.
dirhash of east is 2.
dirhash of west is 3.
dirhash of up is 4.
dirhash of down is 5.
dirhash of h is 6.
dirhash of i is 7.
dirhash of j is 8.
dirhash of k is 9.

chapter definitions

definition: a direction (called di) is teleporty:
	if di is h or di is i or di is j or di is k, yes;
	no;

chapter other stubs

to check-up-down:
	if gone-up-or-down is false:
		say "The hybrid transport tubes/stairs are designed for optimal pedestrian convenience and exercise potential.";
		now gone-up-or-down is true;

to say abbr of (di - a direction):
	if di is teleporty:
		say "[di]";
	else if di is north:
		say "n";
	else if di is south:
		say "s";
	else if di is east:
		say "e";
	else if di is west:
		say "w";
	else if di is up:
		say "u";
	else if di is down:
		say "d";

volume printing stubs

to say 3d: say "[i]Threediopolis[r]".

to say 2da:
	unless screen-read is true:
		say "--";

to say email: say "blurglecruncheon@gmail.com"

to say your-sec: say "[sec of ud][sec of ns][sec of ew]"

to say score-of: say "[score]/[number of rows in your-table]"

Fourdiopolis Definitions ends here.

---- DOCUMENTATION ----
