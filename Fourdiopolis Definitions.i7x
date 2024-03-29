Version 1/230825 of Fourdiopolis Definitions by Andrew Schultz begins here.

"This encompasses small stubs, particularly <to decide which> and <definition> that would clutter up the main code and be hard to find otherwise. You can see what could or should be sent here with def.py. It also includes Fourdiopolis's custom directions and weird operations on them"

[note the big point of positive vectors: I is east, J is north, K is up.]

volume scenarios

a scenario is a kind of thing. a scenario has a number called scidx. a scenario has a table name called objectives. a scenario has a table name called milestones. a scenario has a table name called nearmisses. a scenario has a truth state called won. a scenario has a rule called win-rule. a scenario has indexed text called lose-msg. a scenario has indexed text called win-msg.

FRI is a scenario. scidx of FRI is 1. objectives of FRI is table of fri finds. milestones of FRI is table of fri milestones. nearmisses of FRI is table of fri near misses. win-rule of FRI is fri-win rule. lose-msg of FRI is "Alone in the big metropolis". win-msg of FRI is "Wow, there's friends out there".

EDU is a scenario. scidx of EDU is 2. objectives of EDU is table of edu finds. milestones of EDU is table of edu milestones. nearmisses of EDU is table of edu near misses. win-rule of EDU is mid-win rule.

SUP is a scenario. scidx of SUP is 3. objectives of SUP is table of sup finds. milestones of SUP is table of sup milestones. nearmisses of SUP is table of sup near misses. win-rule of SUP is mid-win rule.

PEO is a scenario. scidx of PEO is 4. objectives of PEO is table of peo finds. milestones of PEO is table of peo milestones. nearmisses of PEO is table of peo near misses. win-rule of PEO is mid-win rule.

STU is a scenario. scidx of STU is 5. objectives of STU is table of stu finds. milestones of STU is table of stu milestones. nearmisses of STU is table of stu near misses. win-rule of STU is stu-win rule. lose-msg of STU is "[if score < 10]Still a way to go[else]Close, but...[end if]". win-msg of STU is "All over except the last round".

LAS is a scenario. scidx of LAS is 6. objectives of LAS is table of las finds. milestones of LAS is table of las milestones.[nearmisses of LAS is table of las near misses.]win-rule of LAS is las-win rule. lose-msg of LAS is "The revolution will start a bit later". win-msg of LAS is "You have accelerated the revolution".

scenario-list is a list of scenarios variable. scenario-list is { FRI, EDU, SUP, PEO, STU, LAS }.

cur-scen is a scenario that varies. cur-scen is FRI.

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

nsgo of north is 1.
nsgo of south is -1.
ewgo of east is 1.
ewgo of west is -1.
udgo of up is 1.
udgo of down is -1.

ewgo of h is  2. nsgo of h is  2. udgo of h is  2.
ewgo of i is  2. nsgo of i is -2. udgo of i is -2.
ewgo of j is -2. nsgo of j is  2. udgo of j is -2.
ewgo of k is -2. nsgo of k is -2. udgo of k is  2.

chapter dirhashes

a direction has a number called dirhash.

dirhash of north is 1.
dirhash of south is 2.
dirhash of east is 3.
dirhash of west is 4.
dirhash of up is 5.
dirhash of down is 6.
dirhash of h is 7.
dirhash of i is 8.
dirhash of j is 9.
dirhash of k is 10.

chapter definitions

definition: a direction (called di) is teleporty:
	if di is h or di is i or di is j or di is k, yes;
	no;

chapter other stubs

to check-up-down:
	if gone-up-or-down is false:
		say "The hybrid transport tubes/stairs are designed for optimal pedestrian convenience and exercise potential.";
		now gone-up-or-down is true;

to say abbr of (di - a direction): [ Thanks to OtisTDog on intfiction.org for this code! ]
	(- print (address) {di}.&name-->1; -)

volume i6

chapter redrawing status line

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

chapter screen and header queries

to rejig the status line to (depth - a number) rows:
	(- VM_StatusLineHeight({depth}); -);

To decide what number is screenh:
	(- VM_ScreenHeight() -);

chapter location printing stubs

Include (-
[ sec ix;
	if ((ix < -9) || (ix > 9)) { print "X"; }
	else if (ix >= 0) { print ix; } else { print (char)(64-ix); }
];
-).

to say sec of (q - a number): (- sec({q}); -)

chapter uuid stub for silly random text

to say uuid:
	(- RAW(); -)

Include (-

[ RAW ix;
	for (ix=8: ix <= UUID_ARRAY->0 - 2: ix++) print (char) UUID_ARRAY->ix;
];

-).

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
