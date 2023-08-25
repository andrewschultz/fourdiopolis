Version 1/230825 of Fourdiopolis Globals by Andrew Schultz begins here.

"This encompasses variables that would otherwise clutter the story.ni file for Fourdiopolis. You can see what could or should be sent here with dglo.py."

volume super critical stuff

text-tally is indexed text that varies. [ yeah this is kind of big ]

num-tally is a number that varies. [keeps track of hashes]
steps-so-far is a number that varies.

dirparsing is a truth state that varies. [are we running through a command?]
ignore-remaining-dirs is a truth state that varies. [cut off commands if you type in too much]

chapter directional

ns is a number that varies. ew is a number that varies. ud is a number that varies.

chapter game text

allscenery is a number that varies. [calculated at start, # of scenery since there are multiple tables]
hidden-inside is a truth state that varies. [did you discover where to return?]
silly-row is a number that varies. cycle-note is a truth state that varies. [silly-row is the row of silly encounters, and cycle-note sees if you got through them all]

volume game state

ever-examined-list is a truth state that varies. [X LIST, ever?]
ever-fast is a truth state that varies. [we give a hint if you didn't go fast when you go to a certain point]
i-warn is a truth state that varies. [if the user types "only" i, we warn about inventory]
gone-up-or-down is a truth state that varies. [we get a note with each first up or down]
locom-chars is a number that varies. locom-chars is 2. [this affects how/when you can use a jump command. It's at 3 until you figure what's going on.]
note-t-command is a truth state that varies. [this sees if the user hit T or is aware of it in-game]
not-parseable-yet is a truth state that varies. [this is a flag for if people try to go with, say, WK too early]
note-previous-found is a truth state that varies. [if you go to one location then revisit it, this flag is tripped with a message]
noted-center-return is a truth state that varies. [have you crossed back to 0 0 0 yet? First time, you get a hint.]
period-warn is a truth state that varies. [A.B is not ncessary]
r-yet is a truth state that varies. [has the player typed R yet? First time we do, we get a message]
scenery-found is a number that varies. [you get a note when you first find scenery]
story-ended is a truth state that varies. just-level-warped is a truth state that varies. [if you died or won, or if you warped, you may undo. Otherwise, no]
teleported is a truth state that varies. [did you teleport this trip?]
walked-by is a truth state that varies. [did you walk by an entry during this trip?]
xyzzy-let is a number that varies. [this is part of the XYZZY joke. You can try other commands, and this tracks the latest]

chapter user options

full-view is a truth state that varies. [option to see everything in header mode]
quick-mode is a truth state that varies. [ignores random events until you make it to destination ]
screen-read is a truth state that varies. [do we use a screen reader? Can this be replaced with my extension?]
show-silly is a truth state that varies. show-silly is usually true. [toggled by T, this says whether to display the silly text]

chapter header stuff

last-lines is a number that varies. last-lines is usually 15. [how many rows in the header?]
should-rejig is a truth state that varies. should-rejig is usually true. [need to refresh header?]

volume testing stuff

beta-state is a truth state that varies. [ affects typing A ]

Fourdiopolis Globals ends here.

posschars is a number that varies. [detects if you might get too tired e.g. WWWW WWWW WWWW]
bounds-warn is a truth state that varies. [did a policeman warn you?]

skip-silly-this-turn is a truth state that varies. [mostly so I don't get a weird something or other during testing]

---- DOCUMENTATION ----
