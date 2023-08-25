Version 1/230825 of Fourdiopolis Beta Testing by Andrew Schultz begins here.

"This encompasses rare cases where we want commands available to beta testers but not to end players."

volume beta testing - not for release

when play begins:
	now beta-state is true;
	if debug-state is true, continue the action;
	unless currently transcripting:
		say "Transcripts are a big help to me. Send them to [email]. After you press a key, a dialog will appear telling what to save a transcript to. You can preface any comments with a punctuation mark e.g. >*This needs to be implemented[roman type].[paragraph break]Thanks!";
		wfak;
		try switching the story transcript on;
	else:
		say "Thanks for taking a transcript! [email]."

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
	if number understood < -6 or number understood > 6, say "1-6 please. 1=friends 2=education 3=supplies 4=marginalized 5=fun 6=last names. Or negative, to clear the table." instead;
	if number understood < 0:
		now whichtable is 0 - number understood;
		repeat through table of accomplishments:
			now solved entry is true;
	else:
		now whichtable is number understood;
	if number understood is 0:
		say "Choosing friends.";
		shift-scen FRI;
	else:
		shift-scen entry whichtable of scenario-list;
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
	if number understood < 0 or number understood > number of rows in your-table, say "0-[number of rows in your-table] please." instead;
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

Fourdiopolis Beta Testing ends here.

---- DOCUMENTATION ----
