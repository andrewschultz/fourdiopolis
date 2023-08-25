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

chapter stuff table (scenario 5)

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

chapter final table

table of last names [tol]
tally (text)	talnum	descrip (text)	foundit (text)	what-drops	found
"dejesus"	5282141	"Spanish"	"[mark-away]."	suspiciously ordinary door	0
"deneke"	520292	"German"	"[mark-away]."	suspiciously ordinary door	0
"dinh"	5706	"Vietnamese"	"[mark-away]."	suspiciously ordinary door	0
"dinwiddie"	570375572	"Scottish"	"[mark-away]."	suspiciously ordinary door	0
"dudek"	54529	"Polish"	"[mark-away]."	suspiciously ordinary door	0
"eddins"	255701	"None"	"[mark-away]."	suspiciously ordinary door	0
"ennis"	20071	"Not their 1st name"	"[mark-away]."	suspiciously ordinary door	0
"eskew"	21923	"None"	"[mark-away]."	suspiciously ordinary door	0
"heineken"	62702920	"Boozy Dutch type"	"You leave a note about how they're so bad at legislating, they might be worse sober."	suspiciously ordinary door	0
"henke"	62092	"None"	"[mark-away]."	suspiciously ordinary door	0
"hess"	6211	"German"	"'You'd better believe you made a heck of a mess,' you write, among other things."	suspiciously ordinary door	0
"hines"	67021	"Only 57% voted for"	"[mark-away]."	suspiciously ordinary door	0
"hsieh"	61726	"Chinese"	"[mark-away]."	suspiciously ordinary door	0
"hsu"	614	"Chinese"	"[mark-away]."	suspiciously ordinary door	0
"huish"	64716	"Welsh"	"[mark-away]."	suspiciously ordinary door	0
"hussein"	6411270	"Arabic"	"You get very good mileage indeed writing up a screed with ten different ways to say 'at least you aren't as bad as...' You're worried how easy it is."	suspiciously ordinary door	0
"ishii"	71677	"Japanese"	"With no idea how true it is, you mention that this politician is even more 'I, I, I' than most."	suspiciously ordinary door	0
"jenkins"	8209701	"Disruptor"	"As you write up some absurd threat, you can't help but sign your name LEEROY, though you aren't silly enough to try to bust in."	suspiciously ordinary door	0
"jensen"	820120	"Swedish"	"[mark-away]."	suspiciously ordinary door	0
"keese"	92212	"None"	"Oh, wait, look. There's a weird pixelated bird on the door! As you make your mark, you reflect on the people keeping Fourdiopolis in the past under the guise of sticking with basics."	suspiciously ordinary door	0
"knudsen"	9045120	"Danish"	"[mark-away]."	suspiciously ordinary door	0
"kuhn"	9460	"German"	"[mark-away]."	suspiciously ordinary door	0
"neeskens"	2219201	"Dutch"	"You feel an urge to mock this person's athletic ability and deride them as constantly second-best."	suspiciously ordinary door	0
"nhek"	629	"Cambodian"	"[mark-away]"	suspiciously ordinary door	0
"niesen"	72120	"Scandinavian"	"[mark-away]."	suspiciously ordinary door	0
"nijinski"	7870197	"Polish/Russian"	"You write something about how this person is particularly good at dancing around issues, until they aren't. Booyah!"	suspiciously ordinary door	0
"nweke"	3292	"Nigerian"	"You write something about how things fall apart in simple, powerful, no-nonsense language."	suspiciously ordinary door	0
"sheen"	16220	"WINNING"	"As much as you distrust politicians who talk about winning, the alternative is...worse? This guy was particularly outrageous, you remember now. Entertaining, but outrageous."	suspiciously ordinary door	0
"sisk"	1719	"None"	"[mark-away]."	suspiciously ordinary door	0
"sundin"	140570	"Swedish"	"[mark-away]."	suspiciously ordinary door	0
"suskind"	1419705	"German"	"[mark-away]."	suspiciously ordinary door	0
"ueki"	4297	"Japanese, unique"	"[mark-away]. "	suspiciously ordinary door	0
"weeks"	32291	"takes their time"	"[mark-away]."	suspiciously ordinary door	0
"weiss"	32711	"German"	"[mark-away]."	suspiciously ordinary door	0
"whidden"	3675520	"almost too close"	"[mark-away]."	suspiciously ordinary door	0
"wisniewski"	-1	"Polish"	"As you make your mark, you feel a shudder of Loathing at Wisniewski also being The Man."	suspiciously ordinary door	0

to say mark-away:
	say "You read through your guidelines on rabble rousing literature and write up a short screed describing how [text-tally in title case] [one of]is typical of the whole bunch and one of the worst at the same time[or]doesn't care at all, but cares about themselves[or]is both too powerful and yet powerless to change the PEOPLE[or]doesn't understand common people but sure understands how to manipulate them[or]is the worst and yet controlled by even worse people at the same time[in random order]. You add in some bargle about [one of]how they'll get to spend more time with their lovely family soon[or]disgruntled ex-staffers TALK[or]they'll be the first out when people see all the corruption[or]their rags to riches story being a fraud compared to Ed Dunn[or]their lack of, or excessive, charisma is especially galling[or]Embarrassing Facts you know--ones you can't even write down[or]their lack of traditional values and desire to return Fourdiopolis to the 22nd or even 21st century won't stand[or]their [a random number between 85 and 95]% approval rating is a fraud[or]their getting [a random number between 85 and 95]% of the vote is suspicious[in random order]. Any crank can send an email like that, but few people have the guts to DROP BY. You dust your hands off and sneak away"

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

volume nearlies

[ this is for if you get close, especially early on--mostly reserved for "you should try the plural." ]

to check-nearlies:
	choose row with tabname of your-table in table of solvable tables;
	if there is no tabnear entry, the rule succeeds;
	repeat through tabnear entry:
		if text-tally is tally entry:
			unless found-yet of mult entry:
				now found entry is 1;
		if text-tally is mult entry:
			now found entry is 0;
		break;

to decide whether found-yet of (x - indexed text):
	repeat through your-table:
		if x is "[tally entry]":
			if found entry is 1, decide yes;
			if found entry is 0, decide no;
	decide no;

this is the plural-almost rule:
	choose row with tabname of your-table in table of solvable tables;
	if there is no tabnear entry, the rule succeeds;
	repeat through tabnear entry:
		if found entry is 1:
			if found-yet of mult entry:
				now found entry is 2;
			else:
				say "On your way back to the center, you wonder if you could've gone [if missage entry is 1]a bit farther[else if missage entry is 2]a small way along[else if missage entry is 3]a good bit ahead[else]down a small detour[end if] to find something. Or things. You felt like you were close.[paragraph break]";
				now found entry is 0;
			break;
	the rule succeeds;

table of friend nearlies
tally	talnum	mult	found	missage
"jesse"	82112	"jessie"	0	4

table of marginalized nearlies
tally	talnum	mult	found	missage
"dis"	571	"disses"	0	3
"duke"	5492	"dukes"	0	1
"hunk"	6409	"hunks"	0	1
"indie"	70572	"indies"	0	1
"junkie"	840972	"junkies"	0	1
"kid"	975	"kids"	0	1
"sheikh"	162796	"sheikhs"	0	1

table of education nearlies
tally	talnum	mult	found	missage
"hijink"	678709	"hijinks"	0	1
"hike"	6792	"hikes"	0	1
"issue"	71142	"issues"	0	1
"sine"	1702	"sines"	0	1
"sin"	170	"sins"	0	1

table of supplies nearlies
tally	talnum	mult	found	missage
"desk"	5219	"desks"	0	1
"dish"	5716	"dishes"	0	2
"hen"	620	"hens"	0	1
"kiwi"	9737	"kiwis"	0	1
"nuke"	492	"nukes"	0	1
"shed"	1625	"sheds"	0	1
"skunk"	19409	"skunks"	0	1
"undie"	40572	"undies"	0	1
"wine"	3702	"wines"	0	1
"wish"	3716	"wishes"	0	2

table of cool stuff nearlies
tally	talnum	mult	found	missage
"dunk"	5409	"dunks"	0	1
"hiss"	6711	"hisses"	0	2
"husk"	6419	"husks"	0	1
"husk"	6419	"huskies"	0	3
"kiss"	9711	"kisses"	0	2
"shine"	16702	"shininess"	0	4
"skink"	19709	"skinks"	0	1
"ski"	197	"skis"	0	1
"wink"	3709	"winks"	0	1

volume tables of scenery

[these are divided up by length to save processing time. When you've made X moves, you only check Table of Scenery X. This is all quite optional.]

table of scenery 3 [tosc]
tally (text)	talnum	descrip (text)	foundit (text)	what-drops	found
"die"	572	"sacrifice yourself"	"Assisted suicide is more rigorous than in Threediopolis. The Death Panels there (not the healthcare kind) give punditary views before you pegged out, concluding thoughts of profundity before the void. Here, you have surveys...questionnaires...what would you do better? What do you think authorities would do better? Now, now, answer, don't try to beg for the juice and cookies over there. They are not for you (really, you should've PLANNED something as important as a last meal, because there wsn't much TO plan) but for the people working hard here who will NEED the nourishment."	ominous door	0
"duh"	546	--	"Oh, man! You can't believe you missed THAT one. It's obvious now!"	--	0
"dui"	547	--	"A robot-police runs by and grabs a breath-sample from the air in front of you. 'Proceed,' it says. Hmm.'"	--	0
"eek"	229	--	"Someone tells a scary story for effect and, well, gets the effect they want."	--	0
"hhh"	666	"Triple H"	"Someone threatens to bodyslam another person for being utterly evil. Then--bam! You see they actually do! Someone whispers to you, don't worry, it's fake, just entertainment. What is the world coming to?"	--	0
"kkk"	999	"bad bad people"	"Everyone around here just really, really sucks at life. What else can I say?"	--	0 [super extra double for this vs another k word but here there's an opportunity to laugh at people a bit I hope]

table of scenery 4 [tosc4]
tally (text)	talnum	descrip (text)	foundit (text)	what-drops	found
"deke"	5292	--	"You wonder if you faked yourself out going this way."	--	0
"didi"	5757	"Urkel"	"A fellow with oversized glasses and suspenders runs into you, shrugs his shoulders, denies any fault, snort-laughs and then runs away."	--	0
"dike"	5792	--	"In this blocked-off area, people talk about the city water supply."	--	0
"dink"	5709	--	"You're hit by a very very soft nerf ball that runs away. Hmm."	--	0
"ehhs"	2661	--	"People keep asking fellow conversers to repeat themselves, here."	--	0
"heed"	6225	--	"Some police give a particularly stern lecture to a citizen not fully obeying some minor law."	--	0
"hues"	6421	--	"The local color is particularly vibrant in this neighborhood."	--	0
"hush"	6416	--	"Unusually quiet here."	--	0
"ides"	7521	--	"An organized march nearby leaves you feeling wary."	--	0
"juke"	8492	--	"Someone walking towards you tries to get out of your way, and you do the same. But you both pick the same way to go, several times. Awkward!"	--	0
"keds"	9251	--	"[snee]."	--	0
"kwik"	9379	--	"You can just hear the bad spelling as people with more willpower than abstract knowledge exercise their authority."	--	0
"nike"	792	--	"[snee]."	--	0
"seek"	1229	--	"You spy someone else with a sheet similar to yours. You don't acknowledge them, though. Can't be too careful."	--	0
"shun"	1640	--	"You feel very, very alone. People are more than just giving you your space."	--	0
"uhhs"	4661	--	"Conversation feels a bit slower and dumber than usual for Fourdiopolis, for a second here."	--	0
"uuid"	4475	--	"You are suddenly unable to get the hexadecimal number [b][uuid][r] out of your head!"	--	0
"whew"	3623	--	"You just barely escaped something, there! You don't know what, but it would've been pretty bad."	--	0
"wiki"	3797	--	"You suddenly have an urge to look up some term and follow a chain to all sorts of odd knowledge you may never use but it'll be fun."	--	0
"wind"	3705	--	"You're almost blown off your feet for a second. Air currents in Fourdiopolis are weird--there's no PROOF the government controls them, but..."	--	0

table of scenery 5 [tosc5]
tally (text)	talnum	descrip (text)	foundit (text)	what-drops	found
"ennui"	20047	--	"Yyyyyawn. What's the point?"	--	0
"iknew"	79023	--	"Someone covers for looking stupid by explaining they were just being really, really ironic."	--	0
"jesus"	82141	--	"Someone spouting an annoying proof that religions shouldn't exist then asks you to join the personality cult of a smart person dead for a hundred years, who wasn't nice, but they understood algorithms of how to make others nicer. You brush them away."	--	0
"knees"	90221	--	"You grab an old ache for a moment."	--	0
"nisei"	7127	--	"You walk past shops with Japanese signs."	--	0
"nuhuh"	4646	--	"A trivial argument nearby quickly turns emotional."	--	0
"nuked"	4925	--	"A surprisingly empty area. You look for biohazard signs but don't see any. Still, you feel disturbingly tingly."	--	0
"seine"	12702	--	"You feel a hackneyed flavor of, and longing for, Gay Paree."	--	0
"shins"	16701	--	"You grab an old ache for a moment."	--	0
"shush"	16416	--	"'Oh, sure, you can THINK that, just don't SAY it, you know?'"	--	0
"sides"	17521	--	"You feel cornered in here. You're not sure why."	--	0
"undid"	40575	--	"You feel regret for what you've done and regret for that regret. You waste a bit of time fretting over how you've wasted a bit of time no matter which feeling is right."	--	0
"whisk"	36719	--	"You trip on an odd cooking doohickey you forget the name of. People don't have time for making their own meals, with so much virtual reality to experience these days, and machines do it all well enough."	--	0

table of scenery 6 [tosc6]
tally (text)	talnum	descrip (text)	foundit (text)	what-drops	found
"dindin"	570570	--	"You feel hungry."	--	0
"heehee"	622622	--	"You think of a silly pun that feels funnier than it has a right to be."	--	0
"hehhuh"	626646	--	"[bnb]"	--	0
"henwen"	620320	"Prydain Chronicles"	"You thought you heard a talking pig just now."	--	0
"huhheh"	646626	--	"[bnb]"	--	0
"nissin"	71170	--	"You step on something. It looks like a chunk of dried noodles. You feel hungry for food you'll regret later."	--	0
"nudies"	45721	--	"You see, and quickly ignore, some disturbing fliers on the ground."	--	0
"shinju"	167084	--	"Hm, looks like a play, in the park. Not quite Romeo and Juliet, but seemes like it just ended the same way."	--	0
"shishe"	167162	--	"You smell evidence people are--gasp--SMOKING. You remember health warnings that a whiff of the good smelling stuff is worse than the bad smelling stuff, and vice versa."	--	0
"unkind"	409705	--	"You hear a name. It's a slur. It's probably old, and maybe people forget why, but the nastiness still remains. It's the sort of thing the ubiquitous video cameras can't catch and report."	--	0
"winded"	370525	--	"You take a break to catch your breath."	--	0

table of scenery 7 [tosc7]
tally (text)	talnum	descrip (text)	foundit (text)	what-drops	found
"dejeune"	5282402	--	"You sure could use a lunch break right now!"	--	0
"kidniki"	9750797	--	"You temporarily feel on guard against the possibility of radical ninjas."	--	0
"kidskin"	9751970	--	"You walk by an exotic leather store."	--	0
"kuskunn"	9419400	"Magic Candle"	"You see an image of a demon trapped in a bubble, by a candle slowly burning."	--	0
"sissies"	1711721	--	"Some self-made tough guys still feel a need to gang up on people weaker than they are. The pain's over sooner than if they went one at a time, amirite?"	--	0
"skidded"	1975525	--	"A goverment utility vehicle swerves and almost hits someone about to jaywalk. Funny how one is always around, unless you jaywalk REALLY assertively."	--	0
"swedish"	1325716	--	"An ethnic area full of oddly dotted vowels. You know them by their unicode numbers, but you have no clue how to pronounce them."	--	0
"weenies"	3220721	--	"An old long-abandoned hot dog hut lies between two places of Serious Business. Your grandparents constantly babbled about the misspelled version from THEIR youth being so tasty, and--well--maybe the misspelling did make things tastier."	--	0

table of scenery 8 [tosc8]
tally (text)	talnum	descrip (text)	foundit (text)	what-drops	found
"inkiness"	70970211	--	"Everything's a bit cloudy, here."	--	0
"unkissed"	40971125	--	"You hear a teen sob about their lack of romantic luck."	--	0
"unwished"	40371625	--	"Someone tries to hand you a flyer you really, really don't want."	--	0
"whiskies"	36719721	--	"Wow! People seem to be having a rip roaring time, here[whisky-wine]. You don't have time for such carousing at the moment, but it boosts your spirits."	--	0

table of scenery 9 [tosc9]
tally (text)	talnum	descrip (text)	foundit (text)	what-drops	found
"iseekkeen"	712299220	--	"[seek-track]."	--	-1
"iundidedu"	740575254	--	"[worry-undo of table of education]."	--	-1
"jeskiddin"	821975570	--	"Someone walks by and notifies you this is a Level 17 restricted area. You quickly hide your to-do list, before they point and laugh that they got you GOOD, and the grocery store's THAT way."	--	0
"seediness"	122570211	--	"This area doesn't feel too posh. You don't know why, but it doesn't."	--	0
"skunkweed"	194093225	--	"It smells bad here, like it should be illegal."	--	0
"whininess"	367070211	--	"You can zone out one complaint or two, but when it's all around, it's like it's contagious and you just won't put up with it! Really, some people! It's just not fair! You'd never...oops."	--	0
"wineskins"	370219701	--	"Everything retro is fashionable again, and drinking wine from animal skins was before when retro was a thing, so--that big rich people's gathering in the park is extra nice."	--	0

table of scenery 10 [tosc10]
tally (text)	talnum	descrip (text)	foundit (text)	what-drops	found
"iundidjunk"	-1	--	"[worry-undo of table of supplies]."	--	-1
"iundidnews"	-1	--	"[worry-undo of table of marginalized people]."	--	-1
"skinniness"	-1	--	"You are momentarily bombarded with ads for diet plans."	--	0

volume very random indeed

chapter random stuff that pops up

table of silly randoms
silliness
"Two people discuss the logistics of visiting every sector of Fourdiopolis before they die."
"Someone grumbles to captive listeners about how New Warp City is cheating, shaped like a frustum to hold more population."
"A passer-by asks if you're willing to hear a one-minute lecture on how society represses you. You decline, even, or especially, after they say they've condensed it with practice."
"An older man tries to skip across the street despite a pedestrian warning, but the flash-cameras catch him blocking traffic. A younger kid who started earlier makes it."
"Even pedestrians babble about gas prices these days. Surely they didn't always, when there was only one type of gas, not ten."
"You try to focus on the less annoying of two conversations about voting for the lesser of two evils."
"Two activists get into a fight over whether the city should continually pump in instrumental music or heavy metal music on the streets."
"A kid shows off his trophy for three-dimensional bowling."
"Some kids can't believe their team with the now-extinct mascot lost to the expansion team with the long-extinct mascot."
"A malcontent grumbles that OF COURSE h and the other transporter directions should go 180 degrees the opposite of how they do."
"You see a police siren flash by, but you can't hear anything. Must be at a high pitch only teens can hear. You remember the last time you could. You miss it."
"Someone is ticketed for a broken Reality-Enhancing helmet. Those things are dangerous if they get too inaccurate."
"A smart-alecky kid remarks how people who can't visualize a hypercube don't deserve to use the transporters."
"An intense political argument! But both sides make up and agree that they're at least more interesting than the people they're fighting for. Oops. For whom they're fighting."
"Two gothy looking kids compare their nonconformist permits and wonder how more normal kids scored more flexible ones."
"A cop warns a kid about transporter joyriding in an HIJK loop. Because kids who say they'll try just one wind up going for all 24 possible combinations. Needless taxpayer costs!"
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
"Someone argues that AAA may be a better central hub than 000. You need at most 16 blocks or teleports to get anywhere, instead of 17."
"Someone hands out a flier for the party of the YEAR at [unreachable]."
"You stumble onto some sort of geocaching competition clue that tells you to look around [unreachable] next. But that seems a bit too far away."
"You encounter an old friend who encourages you to visit them in [unreachable] when you get the time."
"You hear mumbles of a secret prison--I mean, detaining area--in [unreachable]."
"You overhear that real estate prices in [unreachable] are all over the place."
"A police officer stops and accosts you and claims to remember a 'suspicious incident' from a bit ago in [unreachable]. You're pretty sure you haven't been there."
"An idealistic youngun tries to plot how many trips it'd take to visit all of Fourdiopolis's main blocks. He uses up so much scratch paper, he's warned and shooed by a Waste Police droid."
"A fellow pedestrian is fined for having a cracked phone-screen. He is apparently a repeat offender who hasn't gotten it cleared for a whole month."
"[if score < 2]You wonder how many moves it takes to get from one far corner of the city to the other, and back, and if they're the same[else]In a sudden rush of insight, you realize it will take 31 moves to get from one corner of Fourdiopolis to the other, then 24 to get back[end if]."
"A robo-dog zips between your legs with quantum-calculated precision. You hate them! If one stands by you too long, you get a weird embarrassing tingling. Apparently organic pets are worse. But you haven't seen many."
"Someone claiming to have been to Spaceneedleston says sure, it's posh, but it's not PRACTICAL or full of REAL PROGRESS like Fourdiopolis."
"People ahead of you discuss the politics of urban versus rural gerrymandering and qualifications for moving from half an effective vote to three-quarters, or even a full vote."
"A cop allows a kid reading an approved book to sit and loiter--if they don't block foot-traffic TOO much."
"An argument erupts between members of the Nerd and Jock political parties, and when someone tries to mediate, he's panned for pretending he has and knows it all."
"You walk past a cheery pizza vendor droid. Well, it's cheery until someone tries for a prank order. Or even a weird subversive one like half Canadian bacon with pineapple, half artichoke with pesto, and light on the cheese--there are algorithms to check that and alert police."
"Gang leaders argue whether a disobedient underling should be smacked up or down."
"A political debate over whether payoffs to gangs or governments works better ensues."
"One kid tries to impress others with a story of a poor sap who got teleported into rock, another with a story of someone teleported five hundred feet above solid ground, and another tries to impress them with proof it'd never happen."
"You hear the swishing of sewage flow overhead."
"Some conspiracy theory nut goes on about how the transport tubes and/or teleporters destroyed his bike."

chapter random unreachable location

to say unreachable: [this picks something that can only be gotten in 11 moves and throws it to the player]
	say "sector ";
	let got-yet be false; [there are 418 such locations. 63 pairs of 6 a,b,c and 13 of 3 a,b,c ]
	while got-yet is false:
		choose a random row in table of elevensies;
		now got-yet is true;
		if x entry is y entry and x entry is z entry: [888 may be disproportionately represented without this. Not that 1/77 vs 1/418 is a huge deal, but... just to hit em all evenly...]
			if a random chance of 5 in 6 succeeds:
				now got-yet is false;
		else if x entry is y entry or y entry is z entry: [again probability is 1/231 for AAB without this, 1/418 with it]
			if a random chance of 1 in 2 succeeds:
				now got-yet is false;
	let W be a list of numbers;
	add x entry to W;
	add y entry to W;
	add z entry to W;
	sort W in random order;
	say "[sec of entry 1 of W][sec of entry 2 of W][sec of entry 3 of W]";

table of elevensies [this is compacted a bit so that we don't have a lot of annoying repeats: A B C covers all permutations of ABC & unreachable above sorts it]
x	y	z
-1	-7	9 [wndhhhiiiji]
-1	-8	9 [eshhhjjkkkk]
-1	-9	7 [enuhhiiijij]
-1	-9	8 [sdhhhjjkkkk]
-1	6	9 [wnuuhhhhjij]
-1	7	7 [enuhhhhjkjk]
-1	7	8 [wdhhhhhijij]
-1	8	9 [ndhhhhjkjkh]
-2	-9	9 [wnnuhhiiiji]
-2	5	9 [enddhhhhjkj]
-2	6	9 [shhhhhjijij]
-2	7	8 [ennhhhhkjkj]
-2	8	8 [wwhhhhijijh]
-3	3	9 [esdhhhhjjkj]
-3	4	9 [enhhhhijijj]
-3	5	7 [wndhhhhjkjk]
-3	5	8 [euhhhhijijj]
-3	6	8 [nndhhhhkjkj]
-3	7	7 [wnuhhhhijij]
-4	3	9 [wnhhhhjkjkj]
-4	5	7 [suhhhhijijj]
-4	5	9 [enhhhhjkjkj]
-4	6	7 [wwnhhhhijij]
-4	6	8 [eehhhhjkjkj]
-4	8	8 [hhhhijijijh]
-5	2	9 [eendhhhjjkj]
-5	3	7 [enuhhhiijjj]
-5	3	8 [wdhhhhjkjkj]
-5	4	7 [wshhhhijijj]
-5	4	9 [ndhhhhjkjkj]
-5	5	6 [wnnuhhhiijj]
-5	5	8 [edhhhhjkjkj]
-5	6	6 [ehhhhijijij]
-6	-9	-9 [wwsijkjkidk]
-6	1	9 [wwnuhhhijjj]
-6	2	9 [shhhhjjkjkj]
-6	3	8 [nnuhhhiijjj]
-6	4	7 [eenhhhjjkjk]
-6	4	8 [wwhhhhijijj]
-6	5	5 [enddhhhjjkk]
-6	5	6 [dhhhhiijijj]
-6	6	7 [nhhhhjkjkjk]
-7	-7	-9 [esiijkjkjid]
-7	-8	-9 [wwiikjkjkwd]
-7	0	9 [enhhhiijjjj]
-7	1	7 [wndhhhjjkjk]
-7	1	8 [euhhhiijjjj]
-7	2	8 [nndhhhjkjkj]
-7	3	5 [wsuhhhiijjj]
-7	3	7 [endhhhjjkjk]
-7	4	5 [enhhhiijijj]
-7	4	6 [eedhhhjjkjk]
-7	6	6 [dhhhhjkjkjk]
-8	-8	-8 [ddiijkjkidd]
-8	1	7 [eshhhjjjkjk]
-8	1	9 [nuhhhiijjjj]
-8	2	7 [nddhhhjjkjk]
-8	2	8 [eehhhjjkjkj]
-8	3	5 [ndhhhiiijjj]
-8	3	6 [eddhhhjjkjk]
-8	4	6 [nnhhhiijijj]
-8	4	8 [hhhhjkjkjkj]
-8	5	5 [nuhhhiijijj]
-9	0	7 [sdhhhjjjkjk]
-9	0	9 [wnhhhiijjjj]
-9	1	6 [enndhhjjkjk]
-9	1	8 [wuhhhiijjjj]
-9	2	5 [eendhhjjjkk]
-9	2	6 [ehhhiijijjj]
-9	3	3 [enuhhjjjkkk]
-9	3	4 [wdhhhiiijjj]
-9	4	5 [ndhhhjjkjkk]
0	7	9 [eshhhhhjkjk]
0	9	9 [enhhhhjkjkh]
1	7	9 [wndhhhhhkjk]
1	8	9 [euhhhhijijh]
2	9	9 [wwnuhhhhijh]

volume misc table stubs

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
