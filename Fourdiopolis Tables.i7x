Version 1/230821 of Fourdiopolis Tables by Andrew Schultz begins here.

"This lays out the major tables for Fourdiopolis for easy indexing and searching, as well as any rules related to the tables. The main scenario tables come first, then the scenery tables. There are also table-specific stubs in here."

volume main scenario tables

chapter friends (scenario 1)

table of friends
tally (text)	talnum	descrip (text)	foundit (text)	what-drops	found
"dennis"	520071	"skipper or jumper too"	"He begins telling you about his wonderful friend Jonathan and Jonathan's lovely future wife Elizabeth before getting serious and scared and asking if Christopher has been by yet. Eh, better than some creep describing a system for manipulating girls."	front door	0 [dennis hopper?]
"eddie"	25572	"crazy friend"	"He stashes some absurdly low-priced appliances into a closet before running out."	front door	0
"enid"	2075	"friend of five"	"Enid listens as she makes proofreading marks on a book with a bunch of kids running around on the cover."	front door	0
"heidi"	62757	"Alpine friend"	"Thankfully, you hear no yodeling as the door opens."	front door	0
"ike"	792	"cross, iron friend"	"'I'm ready to take down the sprawling military-industrial complex,' Ike says."	front door	0
"ines"	7021	"Spanish friend"	"It's [text-tally in title case]! She [says-hi]."	front door	0
"isis"	7171	"friend from Egypt"	"It's [text-tally in title case]! She [says-hi]."	front door	0
"jed"	825	"friend"	"It's [text-tally in title case]! He [says-hi]."	front door	0
"jenni"	82007	"friend who says why not"	"It's [text-tally in title case]! She [says-hi]."	front door	0
"jessie"	821172	"has desirable girl/guy"	"[either-gender]."	front door	0
"jud"	845	"hey, a friend, almost"	"It's [text-tally in title case]! He [says-hi]."	front door	0
"jude"	8452	"hey, a friend"	"He says 'Oh, I was trying to make a sad song better, but never mind.'"	front door	0
"judi"	8457	"hey, a friend's female twin"	"It's [text-tally in title case]! She [says-hi]."	front door	0
"june"	8402	"fair-weather friend"	"She springs into action on hearing why you're here."	front door	0
"ken"	920	"solves number puzzles halfway"	"It's [text-tally in title case]! He [says-hi]."	front door	0
"kiki"	9797	"friend who can deliver us"	"She gives a bit too sugary speech on how you can do anything you can put your mind to, but it's better than the opposite."	front door	0
"nikki"	7997	"loud friend 6"	"It's [text-tally in title case]! She [says-hi]."	front door	0
"sid"	175	"not a vicious seizer"	"'In, Sid? [']E IS!' he roars."	front door	0
"susie"	14172	"friend with weird boyfriend"	"'No, they DON'T need a transmogrifier!' Susie booms to someone you can't see. 'Not even one that works!'"	front door	0
"winnie"	370072	"doesn't miss Ke*in"	"Talking with Winnie you feel nostalgia and remember some growing pains."	front door	0

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

book middle tables

chapter education (scenario 2)

table of education
tally (text)	talnum	descrip (text)	foundit (text)	what-drops	found
"hijinks"	6787091	"a full loop of political subversions"	"You learn tricks to make political rallies and flash mobs work with a minimum of arrests."	edutainment storefront	0
"hikes"	67921	"back to almost nature"	"You get a brief virtual reality sample of the unlivable wilds beyond the cities."	edutainment storefront	0
"issues"	711421	"detailed wonkery"	"You learn not only the important issues but the details--and even how to skewer people who go too far into details."	edutainment storefront	0
"keen"	9220	"motivation"	"You can never have too much motivation. Unless you spend too much time motivating yourself, you forget to do anything."	edutainment storefront	0
"kind"	9705	"decency"	"You learn not only how to be nice but how to fool people into thinking you're nice enough they better like you and if they're doubting that, they feel guilty. You'll only use the second in an emergency. You hope."	edutainment storefront	0
"kinesis"	9702171	"mobility"	"You learn how to sneak around authorities even if you're not naturally nimble."	edutainment storefront	0
"nein"	270	"foreign languages, or not"	"You learn useful things to say in different languages: yes, no, please, and Dude, Whatever."	edutainment storefront	0
"sensei"	120127	"Eastern wisdom"	"You put up with perhaps a bit more mumbo-jumbo terminology than you want, but the break from extreme capitalism, while heretical, is surprisingly soothing."	edutainment storefront	0
"sines"	17021	"advanced math lesson"	"You endure a very useful trigonometry lesson, you think. You remember which is sine and which is cosine, but now you've knocked out secant and cosecant."	tiny schoolhouse	0
"sinews"	170231	"proper physical health"	"You get a quick work-couse in physiology, necessary for protestors and operatives who need stamina."	edutainment storefront	0
"sins"	1701	"what authorities do wrong"	"You get a lecture on things you didn't even know were wrong with Fourdiopolis. It's short on charisma, but that's somewhere else."	edutainment storefront	0
"sinus"	17041	"breathing techniques"	"You ace the course on breathing techniques and get a 10% off coupon for snoring surgery. Wait, you know you missed that one question...are you being suckered, here? Surgery's expensive!"	edutainment storefront	0
"skew"	1923	"emphasizing the right parts of the truth"	"You learn several ways to embarrass people into a corner even when you don't need to. Because if you don't first, they will."	edutainment storefront	0
"skies"	19721	"how to look up"	"Ah! The sky! You don't get to see much of it. Only 1/19 of Fourdiopolis residents do. Well, less, because the people at the top have big sprawling mansions. Still, it's a source of inspiration."	edutainment storefront	0
"uhhuh"	46646	"intuition and persuasivity"	"You learn about tone of voice and gestures, and how different words that sound the same aren't."	edutainment storefront	0
"undenied"	40520725	"never giving up"	"You're stuck watching heroic dramatic clips from ancient sports like American football (too violent) and un-American football (too scoreless). They're more inspiring than you'd have guessed!"	edutainment storefront	0
"whenwewin"	362032370	"planning for post-victory"	"You learn the optimum amount of planning in advance so you're actually confident, but not overconfident. You're confident you understand, but not too confident."	edutainment storefront	0
"whine"	36702	"learning to complain right"	"You learn the best subtleties in voice inflection when working on, err, with individuals, small crowds, or large crowds. It seems so obvious now!"	edutainment storefront	0
"wise"	3712	"general smartitude"	"You learn not only generalities to make you feel clever but generalities to make you seem clever to others! Oh boy!"	edutainment storefront	0
"wushu"	34164	"martial arts"	"You hear some blather about martial arts, not a sport, or some game that requires no mental commitment."	edutainment storefront	0

table of education yay
count	comment
1	"You feel smarter already!"
3	"Even though you're only getting passing acquaintance with activism, it all seems simpler than actual school and the media led you to believe."
6	"A few more cracks appear in what you learned when you were younger. You don't know everything, but a lot just makes sense."
10	"Suddenly all the Accelerated Learners feel like frauds, sort of. If only you'd had more life experience, you'd realized they were hot air. But maybe you wouldn't be able to get lost like this."
15	"You reflect it's right that your abstract reasoning has led you to seeing so much cool stuff. Internet, schminternet. They'll probably be happy with what you found."
19	"Just one more!"

chapter supplies (scenario 3)

table of supplies
tally (text)	talnum	descrip (text)	foundit (text)	what-drops	found
"desks"	52191	"boring office stuff"	"Well, we all need desks. Desks just aren't exciting. Maybe they can fold up, or have weird shapes, or even have cool drawers. But they're never exciting. At least they're ergonomic and space-efficient these days."	dusty warehouse	0
"dishes"	571621	"something to eat on"	"Wow! All kinds of dishes! They're all biodegradable, too. They're a bit ugly, but you can't have everything. In a pinch, they can also be broken and thrown as weapons. Not very good weapons, but better than nothing."	beaten-up store	0
"disused"	5714125	"abandoned place to hide and plot"	"Shadow groups can always use a good disused place. Until it gets too dis-dis-used."	abandoned shed	0
"hens"	6201	"egg farms"	"Well, organic farms are always good. You'll need lots of food. Eggs have always been good and cheap."	fake barn	0
"hides"	67521	"warm weather clothing"	"Actually, most weather is warmer than it was years ago, but humans['] bodies adapted to be faster and leaner, so they need warm clothes well above freezing now."	upscale store	0
"juju"	8484	"occult help (or can't-hurt)"	"Juju may not be effective, but it brings people together, and it feels fun. Especially because you get to slap a drum around a bit, and stab a doll representing the Mayor-Overlord."	dusty warehouse	0
"junk"	8409	"not their treasure"	"You find all kinds of cool junk here. Some was being saved for the right customer--someone who could make anything out of junk. Like people back at headquarters."	beaten-up store	0
"kiwis"	97371	"fruit"	"Oh, hey! It's the genetically modified kind where you don't have to pit the ends out! With edible stickers! Well, everything has edible stickers, but you're a sticker connoiseur."	grocery store	0
"nines"	7021	"super swank clothes"	"Of course, none of the rebels would own any of this for themselves. But it's still fun to have the chance to wear stuff like this, once. You notice a tag: please shower immediately before and after wearing."	upscale store	0
"nukes"	4921	"only if we're desperate or MAD"	"Fortunately, you can't just trip over a nuke and set it off. But unfortunately, every good subversive organization has to have one, even the nonviolent ones. Especially the nonviolents!"	abandoned shed	0
"sheds"	16251	"storage"	"A fellow named Arthur makes a purchase ahead of you and gets far too excited he has three now, so people can stop laughing at him."	abandoned shed	0
"skein"	19270	"more yarn than we'll ever need"	"All types and colors of yarn here--synthetic, real, thick, thin."	upscale store	0
"skunks"	194091	"stink bomb raw materials"	"Organic chemists have still not found anything as offensive yet harmless as a skunk scent. Someone proved the near-impossibility of that back in 2150, but people still try."	fake barn	0
"swine"	13702	"porcine stuff"	"It doesn't smell too good in here, and you've never been able to reconcile that with just how good bacon smells. Or you remember bacon smells. Which is even better than bacon bits!"	fake barn	0
"undies"	405721	"unseeable wearables"	"All sizes of underwear! All clean! The underwear is recycled from holey socks, and the holey underwear will be recycled back into socks. The circle of life!"	beaten-up store	0
"unhewn"	406230	"rock to carve"	"You're not sure how the big dolmen or menhir or whatever i's going to be teleported back to headquarters--there's still a weight limit, though it's higher than it needs to be--or why it's here. But, you're in execution, not planning."	dusty warehouse	0
"unis"	4071	"clothes to have pride in"	"Man! These uniforms look spiffy. You're a bit worried they'd kind of expose the revolution, but--they're reversible into plain and boring! Woo!"	dusty warehouse	0
"win"	370	"stupid pro-government buttons for cover"	"'So! Ready to whip inflation now?' The--the guy seems serious. You look horrified. 'Ah, good, just a test. If that didn't upset you, you might be one of the bad guys.'"	dusty warehouse	0
"wines"	37021	"alcoholic beverages"	"Oh man! Not just the freeze-dried stuff, but the really bubbly stuff!"	beaten-up store	0
"wishes"	371621	"stuff to look forward to"	"You look down at your list. 'Yes,' you think to yourself. '[if score > 18]Celebrating with the people hidden inside[else]A few of these[end if] will be more fun to go through than this one.'"	surprisingly churchy looking place	0

table of sup yay
count	comment
1	"You're a bit surprised that you were able to requisition anything. You worried you were going to get arrested."
3	"It's getting easier to ask with time. Of course, you aren't asking for YOU."
6	"The more people are willing to give supplies, the less popular you realize the government IS. Or, well, maybe these people can be fooled..."
10	"You've always been made to feel guilty for accepting free stuff, and you never found yourself businesslike, but...just going through the motions, you feel less boxed-in about wanting more."
15	"You're a bit worried the supplies won't be able to fit in the small hideout you remembered. Eh, well."
19	"You feel a twinge wondering if you can't find that last one. Perhaps it was important in ways you didn't realize. 'If you found the others, why didn't you...?' and somehow 'the last one's the toughest' won't quite wash with what you know."

chapter people (scenario 4)

table of marginalized people
tally (text)	talnum	descrip (text)	foundit (text)	what-drops	found
"denied"	520725	"folks rejected by society or health plans"	"There are always disgruntled people to bring to a cause."	hovel	0
"disses"	571121	"comedy insult club"	"Many people here applaud you for getting them to join the fight to freely insult the powerful as well as the poor -- even if you might not be able to formulate an insult yourself."	neon	0
"djinn"	58700	"bottled up powerful ally"	"You--you don't really believe in magic. But still, that smoky looking bottle has got to help someone. You just hope whoever uses it is up on their wishing theory and doesn't get rooked."	warehouse	0
"dukes"	54921	"right neighborly fellers from Kentucky"	"Hoo-wee! You learn some good lessons about loving your oppressive neighbors, knowing it could be worse, but not fearing what could be worse. You aren't so big on owning an orange vehicle, or that flag on the side of it, though."	fake barn	0
"hunks"	64091	"guys unnecessarily muscular"	"If you're muscular and don't have a physical job and aren't in the army, Fourdiopolis frowns on that. Sure, it's not illegal...but...it's even worse if you keep your body AND mind in shape just for your own sake."	gymnasium	0
"huns"	6401	"allegedly barbarous, but we can't all be gentle"	"You need some people who have, sadly, been pigeonholed for their ancestry. They know others have it worse, but still..." 	hovel	0
"hussies"	6411721	"unfairly labeled women"	"Oh, sure, men get boxed in for talking back. It just still seems to happen more frequently to women. And these women would like to change that."	hovel	0
"indies"	705721	"non-mainstream art"	"You persuade the people here that their art will get more exposure with the Fourdiopolis power structure down. But don't worry, you won't become totally mainstream!"	hovel	0
"inked"	70925	"tattooed tough guys"	"Tattoos are illegal now unless they're government-enforced. Okay, if you manage to hide them certain places...but some people have had enough."	warehouse	0
"jedi"	8257	"star wars fans"	"You learn some cool mind tricks, like melding concentration and intuition, and some awesome classic movie trivia. It's sad that people can't enjoy their own favorite movies."	movie house	0
"jejune"	828402	"political pranksters"	"You run into people who want to commit political pranks in support of being able to commit more political pranks. It's sure better than power for power's sake."	hovel	0
"jeune"	82402	"young idealistic foreigners"	"Kids from another land talk about all the stuff they don't have to beg for. You almost feel guilty wanting it, too."	tiny schoolhouse	0
"junkies"	8409721	"people hooked on caffeine NOT from overpriced coffee"	"Apparently there is a whole repository of places to get caffeine. All kinds of rainbow colored pop! And worse, Well, that certainly seems worth fighting for."	hovel	0
"kids"	9751	"useful idealists"	"Some kids aren't 'practical' enough to accept the reality of life in Fourdiopolis. Their views are refreshing. They remind you of questions you had and thought you, or society, answered or dismissed. And if not all the questions are worth asking, there are a lot of really big ones."	tiny schoolhouse	0
"kink"	9709	"illicit pleasure joint"	"Oh dear! You're not sure what's going on here. You're not sure you want to look. But these people are pro-freedom, for sure. You gain a few recruits."	warehouse	0
"ninnies"	700721	"disparaged as stupid"	"Wow! You're impressed. Some people make a bad first impression because they don't seem as smart as they should...[italic type]but they have spent more time becoming smart than looking smart[r]. Wow!"	hovel	0
"sheikhs"	1627961	"foreign aid"	"The geopolitical blah blah has people from foreign countries under the thumb of city-states like Fourdiopolis. They have power in their own country--but they're concerned emigrants to Fourdiopolis have been treated poorly."	hovel	0
"sike"	1792	"purveyors of annoying slang"	"All annoying slang eventually becomes cool again. And besides, it might annoy the right people, done right. You learn a bit from them."	hovel	0
"snide"	10752	"beyond confidence"	"These people aren't arrested for being snide but for being snide about the wrong things. No--no, they're being snide about the right things, right? You're pretty convinced by this. They're less obnoxious than government propaganda, and sometimes it's not enough to say 'It's not fair.'"	hovel	0
"swiss"	13711	"people totally not neutral any more"	"Fourdiopolis officials have played the game of 'oh, even neutral people can see we're right...' but here are some neutral people who feel differently!"	hovel	0

table of people yay
count	comment
1	"Well, maybe you don't agree with these people, but they shouldn't be entirely repressed. And they're not the only ones!"
3	"People opposed to the government were painted as useless hippies, but maybe not."
6	"You'd always been taught not to be around people too different from you--but you've liked the new people you meant. They've found you different and interesting too."
10	"Whether or not people have been physically different, they've been interesting to be around."
15	"You also think you've done enough--and the people you didn't ping, you'll get them later?"
19	"You've come to realize that the government gives lip service to diversity but only at the price of messing everyone over equally. There's some philosophical fight over how much it helps until it hurts, and you always felt suspicious about their over-aggressive PR campaigns, but actually meeting people has opened your eyes a bit."

chapter end table (scenario 5)

table of just plain cool stuff [toj]
tally (text)	talnum	descrip (text)	foundit (text)	what-drops	found
"dunks"	54091	"basketball show #1"	"Oh man! The old ten-foot rims are cheating a bit, but it's still fun to watch. You forget when dunking was outlawed on national television, or why, or when Basketball Drones overtook Basketball Jones."	gymnasium	0
"dusk"	5419	"a beautiful sunset, or a close enough rendition"	"Oh wow! That's beautiful! You catch yourself thinking what range of RGB colors is in the sunset, before realizing you're missing the point."	climate-controlled building	0
"hisses"	671121	"snake exhibit"	"Well, not all snakes are poisonous, though the ones outside of cities are. Still, it's neat to see. For free. I mean, there are zoos and private forest preserves, but it'd be neat to have this."	fake barn	0
"huskies"	6419721	"cool dogs"	"Pet ownership isn't really a thing any more. The planet is eating up resources fast enough!"	fake barn	0
"husks"	64191	"corn and its uses"	"So many recipes and things to do with corn are secret now. Or you are arrested if the government catches you without paying a recycling tax. You've seen a lot before, but it's good to see people doing so almost out in the open."	fake barn	0
"inn"	700	"old fashioned hospitality"	"There are plenty of cheap places to eat if you finish your food within five minutes, but you enjoy just sitting and...oops, other people are waiting. It's been a half-hour."	cozy place with a neon sign	0
"kisses"	971121	"love for all"	"You don't have time for this, but it's nice to see people not being charged for a cuddle or whatever."	cozy place with a neon sign	0
"newsdesk"	2315219	"old propaganda center"	"It's fun to laugh at the old stuff. Even though, really, the new stuff is just the old stuff packaged up better. It's hard to remember, though, with how flashy it is."	museum	0
"sheesh"	162216	"silliness"	"Even nonsense has been formulated as optionally enjoyable these days. And it's hard to break from that formula, or break from the formula to break from the formula. You just let it all out here. And you feel you helped others do so, too, somehow."	cozy place with a neon sign	0
"shininess"	167070211	"pretty and bright"	"Life is dingy, except for commercials. It's nice to see something shiny that doesn't make you feel indebted."	museum	0
"skinks"	197091	"cool odd animals"	"Apparently there are going to be new species in the wild by 2400. You don't have that long, even with increased life expectancy. Fortunately, enough weird ones are still left."	fake barn	0
"skis"	1971	"fake snow, no fake fun"	"You spend fifteen minutes in a weird tumbling machine with little white flakes coming down on you. They'll be back in ten years, people say, once the anti-global warming measures come back. But some skeptics worry the temperature will keep dropping, and that's not good."	climate-controlled building	0
"sunk"	1409	"replica of the Titanic"	"Such splendor, despite a song playing in the background that makes you cringe."	museum	0
"sunshine"	14016702	"general cheeriness"	"There are lucky places on the sides and edges of Fourdiopolis where you can get sun. Maybe you can sneak back to the center from a teleport, or teleport out to get there. But it's risky! Here, well, the miracles of optics let you get real sunlight without the UV rays."	climate-controlled building	0
"swish"	13716	"basketball show #2"	"Here, unathletic people drain twenty three-pointers in a row, or a hundred free-throws, and laugh about how their favorite players can't to the same."	gymnasium	0
"unwind"	403705	"where and how to relax"	"Oh my goodness! A chair that leans back? And it's comfy and ergonomic? And just anyone can sit in it? And they don't have to do hard thinking work? Why? Just because? Well, okay..."	cozy place with a neon sign	0
"weekend"	3229205	"(former) time of rest"	"You imagine having two whole days of getting paid without doing anything--per week! Not that you have two whole days, now. You only remember being fined for not taking vacation because maybe you were trying to guilt trip your employers. But it seems a bit less awful now."	cozy place with a neon sign	0
"whee"	3622	"fun fun fun"	"Hyperspace technology allows roller coasters to fit in a very small space indeed."	cozy place with a neon sign	0
"whinnies"	36700721	"horsies"	"The horses look a bit sad, as if they'd like somewhere to run. But they nuzzle you and all that. What if there were places they could walk around more? Places everyone could still see them?"	fake barn	0
"winks"	37091	"flirty place"	"Of course there are mating rituals, but there's a certain amount of rigor in them. You get looekd at funny if you break too many rules. But here, a wink needs no excuses. It's not just about romantic stuff, either."	cozy place with a neon sign	0

table of stuff yay
count	comment
1	"Yes, the world would be a better place with more places like this thriving."
3	"You feel a bit greedy wanting to see more. I mean, there are commercials for super luxuries, but those--they make you feel bad. This leaves you feeling you could contribute in some way."
6	"You always felt like lumping things into Fun and Not Fun was too simple. Now you see there are different ways of fun."
10	"The fun people you've met have been various degrees of exciting. And it's all good!"
15	"You don't know if you can take any more fun. But you've definitely had enough to report back to the hideout."
19	"One more fun thing! But might it be negative overall fun to search for it and get frustrated, or just say, I've had enough fun? Philosophy."

chapter misc table stubs

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

Fourdiopolis Tables ends here.

---- DOCUMENTATION ----
