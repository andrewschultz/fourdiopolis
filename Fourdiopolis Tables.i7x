Version 1/230821 of Fourdiopolis Tables by Andrew Schultz begins here.

"This lays out the major tables for Fourdiopolis for easy indexing and searching, as well as any rules related to the tables. The main scenario tables come first, then the scenery tables. There are also table-specific stubs in here."

volume main scenario tables

chapter friends (scenario 1)

table of friends
tally (text)	cityloc	hash1	hash2	hash3	descrip (text)	foundit (text)	what-drops	found
"dennis"	"A3C"	8361	90	0	"skipper or jumper too"	"He begins telling you about his wonderful friend Jonathan and Jonathan's lovely future wife Elizabeth before getting serious and scared and asking if Christopher has been by yet. Eh, better than some creep describing a system for manipulating girls."	front door	0 [dennis hopper?]
"eddie"	"B4D"	4793	3	0	"crazy friend"	"He stashes some absurdly low-priced appliances into a closet before running out."	front door	0
"enid"	"A3C"	4208	0	0	"friend of five"	"Enid listens as she makes proofreading marks on a book with a bunch of kids running around on the cover."	front door	0
"heidi"	"B7C"	9774	8	0	"Alpine friend"	"Thankfully, you hear no yodeling as the door opens."	front door	0
"ike"	"D10"	1081	0	0	"cross, iron friend"	"'I'm ready to take down the sprawling military-industrial complex,' Ike says."	front door	0
"ines"	"B3B"	10804	0	0	"Spanish friend"	"Ines almost seems to be expecting you. She [says-hi]."	front door	0
"isis"	"F4D"	10980	0	0	"friend from Egypt"	"Isis walks over, removes her bangles and [says-hi]."	front door	0
"jed"	"2AC"	1128	0	0	"friend"	"Jed nods, then [says-hi]."	front door	0
"jenni"	"21D"	12354	8	0	"friend who says why not"	"Jenni sighs. 'No, this is 867-5349.' She then looks up from her phone, and [says-hi]."	front door	0 [because it's an i and not a y]
"jessie"	"B2D"	12366	91	0	"has desirable girl/guy"	"[either-gender]."	front door	0
"jud"	"2BB"	1150	0	0	"hey, a friend, almost"	"Jud is ready to go. [says-hi]."	front door	0
"jude"	"2AB"	12653	0	0	"hey, a friend"	"He says 'Oh, I was trying to make a sad song better, but never mind.'"	front door	0
"judi"	"00D"	12658	0	0	"hey, a friend's female twin"	"It's Judi! 'Oh, why not?'[paragraph break]She [says-hi]."	front door	0
"june"	"3AA"	12598	0	0	"fair-weather friend"	"She springs into action on hearing why you're here."	front door	0
"ken"	"AA2"	1244	0	0	"solves number puzzles halfway"	"Ken crumples his latest puzzle (paper, so wasteful) then [says-hi]."	front door	0
"kiki"	"H00"	14396	0	0	"friend who can deliver us"	"She gives a bit too sugary speech on how you can do anything you can put your mind to, but it's better than the opposite."	front door	0
"nikki"	"G00"	2419	8	0	"loud friend 6"	"It's Nikki! She [says-hi]."	front door	0
"sid"	"C2C"	336	0	0	"not a vicious seizer"	"'In, Sid? [']E IS!' he roars."	front door	0
"susie"	"D3A"	3297	3	0	"friend with weird boyfriend"	"'No, they DON'T need a transmogrifier!' Susie booms to someone you can't see. 'Not even one that works!'"	front door	0
"winnie"	"B4D"	6304	91	0	"doesn't miss Ke*in"	"Talking with Winnie you feel nostalgia and remember some growing pains."	front door	0

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
tally (text)	cityloc	hash1	hash2	hash3	descrip (text)	foundit (text)	what-drops	found
"hijinks"	"B2B"	10392	233	0	"a full loop of political subversions"	"You learn tricks to make political rallies and flash mobs work with a minimum of arrests."	edutainment storefront	0
"hikes"	"C32"	10398	2	0	"back to almost nature"	"You get a brief virtual reality sample of the unlivable wilds beyond the cities."	edutainment storefront	0
"issues"	"E3A"	10917	35	0	"detailed wonkery"	"You learn not only the important issues but the details--and even how to skewer people who go too far into details."	edutainment storefront	0
"keen"	"A02"	13707	0	0	"motivation"	"You can never have too much motivation. Unless you spend too much time motivating yourself, you forget to do anything."	edutainment storefront	0
"kind"	"C0A"	14295	0	0	"decency"	"You learn not only how to be nice but how to fool people into thinking you're nice enough they better like you and if they're doubting that, they feel guilty. You'll only use the second in an emergency. You hope."	edutainment storefront	0
"kinesis"	"G3B"	14292	332	0	"mobility"	"You learn how to sneak around authorities even if you're not naturally nimble."	edutainment storefront	0
"nein"	"03B"	1783	0	0	"foreign languages, or not"	"You learn useful things to say in different languages: yes, no, please, and Dude, Whatever."	edutainment storefront	0
"sensei"	"C4B"	3038	41	0	"Eastern wisdom"	"You put up with perhaps a bit more mumbo-jumbo terminology than you want, but the break from extreme capitalism, while heretical, is surprisingly soothing."	edutainment storefront	0
"sines"	"C3B"	3644	2	0	"advanced math lesson"	"You endure a very useful trigonometry lesson, you think. You remember which is sine and which is cosine, but now you've knocked out secant and cosecant."	tiny schoolhouse	0
"sinews"	"C2B"	3644	46	0	"proper physical health"	"You get a quick work-course in physiology, necessary for protestors and operatives who need stamina."	edutainment storefront	0
"sins"	"C2B"	3643	0	0	"what authorities do wrong"	"You get a lecture on things you didn't even know were wrong with Fourdiopolis. It's short on charisma, but that's somewhere else."	edutainment storefront	0
"sinus"	"C2A"	3646	2	0	"breathing techniques"	"You ace the course on breathing techniques and get a 10% off coupon for snoring surgery. Wait, you know you missed that one question...are you being suckered, here? Surgery's expensive!"	edutainment storefront	0
"skew"	"CB2"	3909	0	0	"emphasizing the right parts of the truth"	"You learn several ways to embarrass people into a corner even when you don't need to. Because if you don't first, they will."	edutainment storefront	0
"skies"	"F10"	3963	2	0	"how to look up"	"Ah! The sky! You don't get to see much of it. Only 1/19 of Fourdiopolis residents do. Well, less, because the people at the top have big sprawling mansions. Still, it's a source of inspiration."	edutainment storefront	0
"uhhuh"	"668"	7584	7	0	"intuition and persuasivity"	"You learn about tone of voice and gestures, and how different words that sound the same aren't."	edutainment storefront	0
"undenied"	"04C"	6845	2338	0	"never giving up"	"You're stuck watching heroic dramatic clips from ancient sports like American football (too violent) and un-American football (too scoreless). They're more inspiring than you'd have guessed!"	edutainment storefront	0
"whenwewin"	"230"	6205	5739	1	"planning for post-victory"	"You learn the optimum amount of planning in advance so you're actually confident, but not overconfident. You're confident you understand, but not too confident."	edutainment storefront	0
"whine"	"140"	6260	3	0	"learning to complain right"	"You learn the best subtleties in voice inflection when working on, err, with individuals, small crowds, or large crowds. It seems so obvious now!"	edutainment storefront	0
"wise"	"C2B"	6317	0	0	"general smartitude"	"You learn not only generalities to make you feel clever but generalities to make you seem clever to others! Oh boy!"	edutainment storefront	0
"wushu"	"114"	5958	5	0	"martial arts"	"You hear some blather about martial arts, not a sport, or some game that requires no mental commitment."	edutainment storefront	0

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
tally (text)	cityloc	hash1	hash2	hash3	descrip (text)	foundit (text)	what-drops	found
"desks"	"DA1"	8381	2	0	"boring office stuff"	"Well, we all need desks. Desks just aren't exciting. Maybe they can fold up, or have weird shapes, or even have cool drawers. But they're never exciting. At least they're ergonomic and space-efficient these days."	dusty warehouse	0
"dishes"	"B5A"	8983	35	0	"something to eat on"	"Wow! All kinds of dishes! They're all biodegradable, too. They're a bit ugly, but you can't have everything. In a pinch, they can also be broken and thrown as weapons. Not very good weapons, but better than nothing."	beaten-up store	0
"disused"	"D3C"	8981	281	0	"abandoned place to hide and plot"	"Shadow groups can always use a good disused place. Until it gets too dis-dis-used."	abandoned shed	0
"hens"	"232"	9693	0	0	"egg farms"	"Well, organic farms are always good. You'll need lots of food. Eggs have always been good and cheap."	fake barn	0
"hides"	"A5A"	10354	2	0	"warm weather clothing"	"Actually, most weather is warmer than it was years ago, but humans['] bodies adapted to be faster and leaner, so they need warm clothes well above freezing now."	upscale store	0
"juju"	"4DB"	12688	0	0	"occult help (or can't-hurt)"	"Juju may not be effective, but it brings people together, and it feels fun. Especially because you get to slap a drum around a bit, and stab a doll representing the Mayor-Overlord."	dusty warehouse	0
"junk"	"1D1"	12605	0	0	"not their treasure"	"You find all kinds of cool junk here. Some was being saved for the right customer--someone who could make anything out of junk. Like people back at headquarters."	beaten-up store	0
"kiwis"	"G1B"	14330	2	0	"fruit"	"Oh, hey! It's the genetically modified kind where you don't have to pit the ends out! With edible stickers! Well, everything has edible stickers, but you're a sticker connoiseur."	grocery store	0
"nines"	"A3B"	2313	2	0	"super swank clothes"	"Of course, none of the rebels would own any of this for themselves. But it's still fun to have the chance to wear stuff like this, once. You notice a tag: please shower immediately before and after wearing."	upscale store	0
"nukes"	"BA3"	2049	2	0	"only if we're desperate or MAD"	"Fortunately, you can't just trip over a nuke and set it off. But unfortunately, every good subversive organization has to have one, even the nonviolent ones. Especially the nonviolents!"	abandoned shed	0
"sheds"	"031"	3548	2	0	"storage"	"A fellow named Arthur makes a purchase ahead of you and gets far too excited he has three now, so people can stop laughing at him."	abandoned shed	0
"skein"	"D10"	3913	1	0	"more yarn than we'll ever need"	"All types and colors of yarn here--synthetic, real, thick, thin."	upscale store	0
"skunks"	"ED5"	3928	112	0	"stink bomb raw materials"	"Organic chemists have still not found anything as offensive yet harmless as a skunk scent. Someone proved the near-impossibility of that back in 2150, but people still try."	fake barn	0
"swine"	"B2B"	3235	3	0	"porcine stuff"	"It doesn't smell too good in here, and you've never been able to reconcile that with just how good bacon smells. Or you remember bacon smells. Which is even better than bacon bits!"	fake barn	0
"undies"	"B3B"	6850	35	0	"unseeable wearables"	"All sizes of underwear! All clean! The underwear is recycled from holey socks, and the holey underwear will be recycled back into socks. The circle of life!"	beaten-up store	0
"unhewn"	"423"	6856	45	0	"rock to carve"	"You're not sure how the big dolmen or menhir or whatever i's going to be teleported back to headquarters--there's still a weight limit, though it's higher than it needs to be--or why it's here. But, you're in execution, not planning."	dusty warehouse	0
"unis"	"B2A"	6866	0	0	"clothes to have pride in"	"Man! These uniforms look spiffy. You're a bit worried they'd kind of expose the revolution, but--they're reversible into plain and boring! Woo!"	dusty warehouse	0
"win"	"A1B"	573	0	0	"stupid pro-government buttons for cover"	"'So! Ready to whip inflation now?' The--the guy seems serious. You look horrified. 'Ah, good, just a test. If that didn't upset you, you might be one of the bad guys.'"	dusty warehouse	0
"wines"	"B2B"	6306	2	0	"alcoholic beverages"	"Oh man! Not just the freeze-dried stuff, but the really bubbly stuff!"	beaten-up store	0
"wishes"	"B40"	6321	35	0	"stuff to look forward to"	"You look down at your list. 'Yes,' you think to yourself. '[if score > 18]Celebrating with the people hidden inside[else]A few of these[end if] will be more fun to go through than this one.'"	surprisingly churchy looking place	0

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
tally (text)	cityloc	hash1	hash2	hash3	descrip (text)	foundit (text)	what-drops	found
"denied"	"A4D"	8368	39	0	"folks rejected by society or health plans"	"There are always disgruntled people to bring to a cause."	hovel	0
"disses"	"E3C"	8978	35	0	"comedy insult club"	"Many people here applaud you for getting them to join the fight to freely insult the powerful as well as the poor -- even if you might not be able to formulate an insult yourself."	neon	0
"djinn"	"20E"	9164	1	0	"bottled up powerful ally"	"You--you don't really believe in magic. But still, that smoky looking bottle has got to help someone. You just hope whoever uses it is up on their wishing theory and doesn't get rooked."	warehouse	0
"dukes"	"CA2"	8704	2	0	"right neighborly fellers from Kentucky"	"Hoo-wee! You learn some good lessons about loving your oppressive neighbors, knowing it could be worse, but not fearing what could be worse. You aren't so big on owning an orange vehicle, or that flag on the side of it, though."	fake barn	0
"hunks"	"005"	9943	2	0	"guys unnecessarily muscular"	"If you're muscular and don't have a physical job and aren't in the army, Fourdiopolis frowns on that. Sure, it's not illegal...but...it's even worse if you keep your body AND mind in shape just for your own sake."	gymnasium	0
"huns"	"223"	9935	0	0	"allegedly barbarous, but we can't all be gentle"	"You need some people who have, sadly, been pigeonholed for their ancestry. They know others have it worse, but still..." 	hovel	0
"hussies"	"C51"	9946	1003	0	"unfairly labeled women"	"Oh, sure, men get boxed in for talking back. It just still seems to happen more frequently to women. And these women would like to change that."	hovel	0
"indies"	"D5E"	10843	35	0	"non-mainstream art"	"You persuade the people here that their art will get more exposure with the Fourdiopolis power structure down. But don't worry, you won't become totally mainstream!"	hovel	0
"inked"	"C1A"	10882	6	0	"tattooed tough guys"	"Tattoos are illegal now unless they're government-enforced. Okay, if you manage to hide them certain places...but some people have had enough."	warehouse	0
"jedi"	"01E"	12416	0	0	"star wars fans"	"You learn some cool mind tricks, like melding concentration and intuition, and some awesome classic movie trivia. It's sad that people can't enjoy their own favorite movies."	movie house	0
"jejune"	"5BC"	12446	14	0	"political pranksters"	"You run into people who want to commit political pranks in support of being able to commit more political pranks. It's sure better than power for power's sake."	hovel	0
"jeune"	"30A"	12398	3	0	"young idealistic foreigners"	"Kids from another land talk about all the stuff they don't have to beg for. You almost feel guilty wanting it, too."	tiny schoolhouse	0
"junkies"	"BAA"	12605	1003	0	"people hooked on caffeine NOT from overpriced coffee"	"Apparently there is a whole repository of places to get caffeine. All kinds of rainbow colored pop! And worse, Well, that certainly seems worth fighting for."	hovel	0
"kids"	"E0A"	14346	0	0	"useful idealists"	"Some kids aren't 'practical' enough to accept the reality of life in Fourdiopolis. Their views are refreshing. They remind you of questions you had and thought you, or society, answered or dismissed. And if not all the questions are worth asking, there are a lot of really big ones."	tiny schoolhouse	0
"kink"	"EB2"	14299	0	0	"illicit pleasure joint"	"Oh dear! You're not sure what's going on here. You're not sure you want to look. But these people are pro-freedom, for sure. You gain a few recruits."	warehouse	0
"ninnies"	"B5D"	2311	1003	0	"disparaged as stupid"	"Wow! You're impressed. Some people make a bad first impression because they don't seem as smart as they should...[italic type]but they have spent more time becoming smart than looking smart[r]. Wow!"	hovel	0
"sheikhs"	"B54"	3550	1289	0	"foreign aid"	"The geopolitical blah blah has people from foreign countries under the thumb of city-states like Fourdiopolis. They have power in their own country--but they're concerned emigrants to Fourdiopolis have been treated poorly."	hovel	0
"sike"	"E10"	3743	0	0	"purveyors of annoying slang"	"All annoying slang eventually becomes cool again. And besides, it might annoy the right people, done right. You learn a bit from them."	hovel	0
"snide"	"B3C"	2877	3	0	"beyond confidence"	"These people aren't arrested for being snide but for being snide about the wrong things. No--no, they're being snide about the right things, right? You're pretty convinced by this. They're less obnoxious than government propaganda, and sometimes it's not enough to say 'It's not fair.'"	hovel	0
"swiss"	"E1B"	3236	2	0	"people totally not neutral any more"	"Fourdiopolis officials have played the game of 'oh, even neutral people can see we're right...' but here are some neutral people who feel differently!"	hovel	0

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
tally (text)	cityloc	hash1	hash2	hash3	descrip (text)	foundit (text)	what-drops	found
"dunks"	"BB2"	8612	2	0	"basketball show #1"	"Oh man! The old ten-foot rims are cheating a bit, but it's still fun to watch. You forget when dunking was outlawed on national television, or why, or when Basketball Drones overtook Basketball Jones."	gymnasium	0
"dusk"	"CB2"	8623	0	0	"a beautiful sunset, or a close enough rendition"	"Oh wow! That's beautiful! You catch yourself thinking what range of RGB colors is in the sunset, before realizing you're missing the point."	climate-controlled building	0
"hisses"	"C50"	10309	35	0	"snake exhibit"	"Well, not all snakes are poisonous, though the ones outside of cities are. Still, it's neat to see. For free. I mean, there are zoos and private forest preserves, but it'd be neat to have this."	fake barn	0
"huskies"	"D33"	9954	1003	0	"cool dogs"	"Pet ownership isn't really a thing any more. The planet is eating up resources fast enough!"	fake barn	0
"husks"	"B05"	9954	2	0	"corn and its uses"	"So many recipes and things to do with corn are secret now. Or you are arrested if the government catches you without paying a recycling tax. You've seen a lot before, but it's good to see people doing so almost out in the open."	fake barn	0
"inn"	"02B"	980	0	0	"old fashioned hospitality"	"There are plenty of cheap places to eat if you finish your food within five minutes, but you enjoy just sitting and...oops, other people are waiting. It's been a half-hour."	cozy place with a neon sign	0
"kisses"	"G10"	14302	35	0	"love for all"	"You don't have time for this, but it's nice to see people not being charged for a cuddle or whatever."	cozy place with a neon sign	0
"newsdesk"	"CA1"	1740	8381	0	"old propaganda center"	"It's fun to laugh at the old stuff. Even though, really, the new stuff is just the old stuff packaged up better. It's hard to remember, though, with how flashy it is."	museum	0
"sheesh"	"264"	3545	29	0	"silliness"	"Even nonsense has been formulated as optionally enjoyable these days. And it's hard to break from that formula, or break from the formula to break from the formula. You just let it all out here. And you feel you helped others do so, too, somehow."	cozy place with a neon sign	0
"shininess"	"C7B"	3598	10804	2	"pretty and bright"	"Life is dingy, except for commercials. It's nice to see something shiny that doesn't make you feel indebted."	museum	0
"skinks"	"GB2"	3961	112	0	"cool odd animals"	"Apparently there are going to be new species in the wild by 2400. You don't have that long, even with increased life expectancy. Fortunately, enough weird ones are still left."	fake barn	0
"skis"	"F00"	3962	0	0	"fake snow, no fake fun"	"You spend fifteen minutes in a weird tumbling machine with little white flakes coming down on you. They'll be back in ten years, people say, once the anti-global warming measures come back. But some skeptics worry the temperature will keep dropping, and that's not good."	climate-controlled building	0
"sunk"	"BB3"	3288	0	0	"replica of the Titanic"	"Such splendor, despite a song playing in the background that makes you cringe."	museum	0
"sunshine"	"051"	3280	10299	0	"general cheeriness"	"There are lucky places on the sides and edges of Fourdiopolis where you can get sun. Maybe you can sneak back to the center from a teleport, or teleport out to get there. But it's risky! Here, well, the miracles of optics let you get real sunlight without the UV rays."	climate-controlled building	0
"swish"	"B30"	3236	7	0	"basketball show #2"	"Here, unathletic people drain twenty three-pointers in a row, or a hundred free-throws, and laugh about how their favorite players can't to the same."	gymnasium	0
"unwind"	"01B"	6828	17	0	"where and how to relax"	"Oh my goodness! A chair that leans back? And it's comfy and ergonomic? And just anyone can sit in it? And they don't have to do hard thinking work? Why? Just because? Well, okay..."	cozy place with a neon sign	0
"weekend"	"A01"	5730	380	0	"(former) time of rest"	"You imagine having two whole days of getting paid without doing anything--per week! Not that you have two whole days, now. You only remember being fined for not taking vacation because maybe you were trying to guilt trip your employers. But it seems a bit less awful now."	cozy place with a neon sign	0
"whee"	"232"	6207	0	0	"fun fun fun"	"Hyperspace technology allows roller coasters to fit in a very small space indeed."	cozy place with a neon sign	0
"whinnies"	"A6B"	6260	2334	0	"horsies"	"The horses look a bit sad, as if they'd like somewhere to run. But they nuzzle you and all that. What if there were places they could walk around more? Places everyone could still see them?"	fake barn	0
"winks"	"DA0"	6313	2	0	"flirty place"	"Of course there are mating rituals, but there's a certain amount of rigor in them. You get looekd at funny if you break too many rules. But here, a wink needs no excuses. It's not just about romantic stuff, either."	cozy place with a neon sign	0

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
tally (text)	cityloc	hash1	hash2	hash3	descrip (text)	foundit (text)	what-drops	found
"dejesus"	"00B"	8451	299	0	"Spanish"	--	suspiciously ordinary door	0
"deneke"	"A11"	8363	113	0	"German"	--	suspiciously ordinary door	0
"dinh"	"14A"	8972	0	0	"Vietnamese"	--	suspiciously ordinary door	0
"dinwiddie"	"E6I"	8969	11448	3	"Scottish"	--	suspiciously ordinary door	0
"dudek"	"BA1"	8660	10	0	"Polish"	--	suspiciously ordinary door	0
"eddins"	"B3D"	4793	13	0	"None"	--	suspiciously ordinary door	0
"ennis"	"A3B"	4133	2	0	"Not their 1st name"	--	suspiciously ordinary door	0
"eskew"	"CA2"	4348	4	0	"None"	--	suspiciously ordinary door	0
"heineken"	"052"	9769	5237	0	"Boozy Dutch type"	"You leave a note about how they're so bad at legislating, they might be worse sober."	suspiciously ordinary door	0
"henke"	"124"	9701	3	0	"None"	--	suspiciously ordinary door	0
"hess"	"032"	9704	0	0	"German"	"'You'd better believe you made a heck of a mess,' you write, among other things."	suspiciously ordinary door	0
"hines"	"050"	10299	2	0	"Only 57% voted for"	--	suspiciously ordinary door	0
"hsieh"	"172"	9650	7	0	"Chinese"	--	suspiciously ordinary door	0
"hsu"	"123"	874	0	0	"Chinese"	--	suspiciously ordinary door	0
"huish"	"163"	10012	7	0	"Welsh"	--	suspiciously ordinary door	0
"hussein"	"A51"	9946	452	0	"Arabic"	"You get very good mileage indeed writing up a screed with ten different ways to say 'at least you aren't as bad as...' You're worried how easy it is."	suspiciously ordinary door	0
"ishii"	"E8D"	10975	8	0	"Japanese"	"With no idea how true it is, you mention that this politician is even more 'I, I, I' than most."	suspiciously ordinary door	0
"jenkins"	"AAB"	12363	981	0	"Disruptor"	"As you write up some absurd threat, you can't help but sign your name LEEROY, though you aren't silly enough to try to bust in."	suspiciously ordinary door	0
"jensen"	"30B"	12355	34	0	"Swedish"	--	suspiciously ordinary door	0
"keese"	"C12"	13708	3	0	"None"	"Oh, wait, look. There's a weird pixelated bird on the door! As you make your mark, you reflect on the people keeping Fourdiopolis in the past under the guise of sticking with basics."	suspiciously ordinary door	0
"knudsen"	"AA2"	13492	276	0	"Danish"	--	suspiciously ordinary door	0
"kuhn"	"105"	13993	0	0	"German"	--	suspiciously ordinary door	0
"neeskens"	"B12"	1729	13686	0	"Dutch"	"You feel an urge to mock this person's athletic ability and deride them as constantly second-best."	suspiciously ordinary door	0
"nhek"	"114"	2221	0	0	"Cambodian"	--	suspiciously ordinary door	0
"niesen"	"A4B"	2334	34	0	"Scandinavian"	--	suspiciously ordinary door	0
"nijinski"	"E2F"	2406	1691	0	"Polish/Russian"	"You write something about how this person is particularly good at dancing around issues, until they aren't. Booyah!"	suspiciously ordinary door	0
"nweke"	"AA2"	1858	3	0	"Nigerian"	"You write something about how things fall apart in simple, powerful, no-nonsense language."	suspiciously ordinary door	0
"sheen"	"242"	3545	1	0	"WINNING"	"As much as you distrust politicians who talk about winning, the alternative is...worse? This guy was particularly outrageous, you remember now. Entertaining, but outrageous."	suspiciously ordinary door	0
"sisk"	"F00"	3662	0	0	"None"	--	suspiciously ordinary door	0
"sundin"	"A2B"	3284	89	0	"Swedish"	--	suspiciously ordinary door	0
"suskind"	"E00"	3299	985	0	"German"	--	suspiciously ordinary door	0
"ueki"	"D11"	7136	0	0	"Japanese, unique"	--	suspiciously ordinary door	0
"weeks"	"CA2"	5730	2	0	"takes their time"	--	suspiciously ordinary door	0
"weiss"	"D2B"	5777	2	0	"German"	--	suspiciously ordinary door	0
"whidden"	"14B"	6265	760	0	"almost too close"	--	suspiciously ordinary door	0
"wisniewski"	"I3D"	6315	11057	118	"Polish"	"As you make your mark, you feel a shudder of Loathing at Wisniewski also being The Man."	suspiciously ordinary door	0

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
	say "[almosts of cur-scen].";
	repeat through almosts of cur-scen:
		say "[tally entry] [walk-short-1] [hash1 entry] [walk-short-2] [hash2 entry] [walk-short-3] [hash3 entry].";
		if walk-short-1 is hash1 entry and walk-short-2 is hash2 entry and walk-short-3 is hash3 entry:
			unless found-yet of mult entry:
				now found entry is 1;

to decide whether found-yet of (x - indexed text):
	repeat through your-table:
		if x is "[tally entry]":
			if found entry is 1, decide yes;
			if found entry is 0, decide no;
	decide no;

this is the plural-almost rule:
	repeat through almosts of cur-scen:
		if found entry is 1:
			if found-yet of mult entry:
				now found entry is 2;
			else:
				say "On your way back to the center, you wonder if you could've gone [if missage entry is 1]a bit farther[else if missage entry is 2]a small way along[else if missage entry is 3]a good bit ahead[else]down a small detour[end if] to find something. Or things. You felt like you were close.[paragraph break]";
				now found entry is 0;
			break;
	the rule succeeds;

table of friend nearlies
tally	hash1	hash2	hash3	mult	found	missage
"jesse"	12366	3	0	"jessie"	0	4

table of education nearlies
tally	hash1	hash2	hash3	mult	found	missage
"hijink"	10392	21	0	"hijinks"	0	1
"hike"	10398	0	0	"hikes"	0	1
"issue"	10917	3	0	"issues"	0	1
"sine"	3644	0	0	"sines"	0	1
"sin"	331	0	0	"sins"	0	1

table of supplies nearlies
tally	hash1	hash2	hash3	mult	found	missage
"desk"	8381	0	0	"desks"	0	1
"dish"	8983	0	0	"dishes"	0	2
"hen"	881	0	0	"hens"	0	1
"kiwi"	14330	0	0	"kiwis"	0	1
"nuke"	2049	0	0	"nukes"	0	1
"shed"	3548	0	0	"sheds"	0	1
"skunk"	3928	10	0	"skunks"	0	1
"undie"	6850	3	0	"undies"	0	1
"wine"	6306	0	0	"wines"	0	1
"wish"	6321	0	0	"wishes"	0	2

table of people nearlies
tally	hash1	hash2	hash3	mult	found	missage
"dis"	816	0	0	"disses"	0	3
"duke"	8704	0	0	"dukes"	0	1
"hunk"	9943	0	0	"hunks"	0	1
"indie"	10843	3	0	"indies"	0	1
"junkie"	12605	91	0	"junkies"	0	1
"kid"	1304	0	0	"kids"	0	1
"sheikh"	3550	117	0	"sheikhs"	0	1

table of cool stuff nearlies
tally	hash1	hash2	hash3	mult	found	missage
"dunk"	8612	0	0	"dunks"	0	1
"hiss"	10309	0	0	"hisses"	0	2
"husk"	9954	0	0	"husks"	0	1
"husk"	9954	0	0	"huskies"	0	3
"kiss"	14302	0	0	"kisses"	0	2
"shine"	3598	3	0	"shininess"	0	4
"skink"	3961	10	0	"skinks"	0	1
"ski"	360	0	0	"skis"	0	1
"wink"	6313	0	0	"winks"	0	1

volume tables of scenery

[these are divided up by length to save processing time. When you've made X moves, you only check Table of Scenery X. This is all quite optional.]

table of scenery 3 [tosc]
tally (text)	hash1	hash2	hash3	descrip (text)	foundit (text)	what-drops	found
"die"	817	0	0	"sacrifice yourself"	"Assisted suicide is more rigorous than in Threediopolis. The Death Panels there (not the healthcare kind) give punditary views before you pegged out, concluding thoughts of profundity before the void. Here, you have surveys...questionnaires...what would you do better? What do you think authorities would do better? Now, now, answer, don't try to beg for the juice and cookies over there. They are not for you (really, you should've PLANNED something as important as a last meal, because there wsn't much TO plan) but for the people working hard here who will NEED the nourishment."	ominous door	0
"duh"	788	0	0	--	"Oh, man! You can't believe you missed THAT one. It's obvious now!"	--	0
"dui"	789	0	0	--	"A robot-police runs by and grabs a breath-sample from the air in front of you. 'Proceed,' it says. Hmm.'"	--	0
"eek"	406	0	0	--	"Someone tells a scary story for effect and, well, gets the effect they want."	--	0
"hhh"	931	0	0	"Triple H"	"Someone threatens to bodyslam another person for being utterly evil. Then--bam! You see they actually do! Someone whispers to you, don't worry, it's fake, just entertainment. What is the world coming to?"	--	0
"kkk"	1330	0	0	"bad bad people"	"Everyone around here just really, really sucks at life. What else can I say?"	--	0 [super extra double for this vs another k word but here there's an opportunity to laugh at people a bit I hope]

table of scenery 4 [tosc4]
tally (text)	hash1	hash2	hash3	descrip (text)	foundit (text)	what-drops	found
"deke"	8462	0	0	--	"You wonder if you faked yourself out going this way."	--	0
"didi"	9028	0	0	"Urkel"	"A fellow with oversized glasses and suspenders runs into you, shrugs his shoulders, denies any fault, snort-laughs and then runs away."	--	0
"dike"	9067	0	0	--	"In this blocked-off area, people talk about the city water supply."	--	0
"dink"	8975	0	0	--	"You're hit by a very very soft nerf ball that runs away. Hmm."	--	0
"ehhs"	4919	0	0	--	"People keep asking fellow conversers to repeat themselves, here."	--	0
"heed"	9719	0	0	--	"Some police give a particularly stern lecture to a citizen not fully obeying some minor law."	--	0
"hues"	9957	0	0	--	"The local color is particularly vibrant in this neighborhood."	--	0
"hush"	9951	0	0	--	"Unusually quiet here."	--	0
"ides"	11409	0	0	--	"An organized march nearby leaves you feeling wary."	--	0
"juke"	12697	0	0	--	"Someone walking towards you tries to get out of your way, and you do the same. But you both pick the same way to go, several times. Awkward!"	--	0
"keds"	13741	0	0	--	"[snee]."	--	0
"kwik"	13892	0	0	--	"You can just hear the bad spelling as people with more willpower than abstract knowledge exercise their authority."	--	0
"nike"	2412	0	0	--	"[snee]."	--	0
"seek"	3068	0	0	--	"You spy someone else with a sheet similar to yours. You don't acknowledge them, though. Can't be too careful."	--	0
"shun"	3565	0	0	--	"You feel very, very alone. People are more than just giving you your space."	--	0
"uhhs"	7581	0	0	--	"Conversation feels a bit slower and dumber than usual for Fourdiopolis, for a second here."	--	0
"uuid"	7354	0	0	--	"You are suddenly unable to get the hexadecimal number [b][uuid][r] out of your head!"	--	0
"whew"	6208	0	0	--	"You just barely escaped something, there! You don't know what, but it would've been pretty bad."	--	0
"wiki"	6410	0	0	--	"You suddenly have an urge to look up some term and follow a chain to all sorts of odd knowledge you may never use but it'll be fun."	--	0
"wind"	6309	0	0	--	"You're almost blown off your feet for a second. Air currents in Fourdiopolis are weird--there's no PROOF the government controls them, but..."	--	0

table of scenery 5 [tosc5]
tally (text)	hash1	hash2	hash3	descrip (text)	foundit (text)	what-drops	found
"ennui"	4130	8	0	--	"Yyyyyawn. What's the point?"	--	0
"iknew"	11872	4	0	--	"Someone covers for looking stupid by explaining they were just being really, really ironic."	--	0
"jesus"	12369	2	0	--	"Someone spouting an annoying proof that religions shouldn't exist then asks you to join the personality cult of a smart person dead for a hundred years, who wasn't nice, but they understood algorithms of how to make others nicer. You brush them away."	--	0
"knees"	13467	2	0	--	"You grab an old ache for a moment."	--	0
"nisei"	2324	8	0	--	"You walk past shops with Japanese signs."	--	0
"nuhuh"	2018	7	0	--	"A trivial argument nearby quickly turns emotional."	--	0
"nuked"	2049	6	0	--	"A surprisingly empty area. You look for biohazard signs but don't see any. Still, you feel disturbingly tingly."	--	0
"seine"	3114	3	0	--	"You feel a hackneyed flavor of, and longing for, Gay Paree."	--	0
"shins"	3598	2	0	--	"You grab an old ache for a moment."	--	0
"shush"	3566	7	0	--	"'Oh, sure, you can THINK that, just don't SAY it, you know?'"	--	0
"sides"	3699	2	0	--	"You feel cornered in here. You're not sure why."	--	0
"undid"	6850	6	0	--	"You feel regret for what you've done and regret for that regret. You waste a bit of time fretting over how you've wasted a bit of time no matter which feeling is right."	--	0
"whisk"	6261	10	0	--	"You trip on an odd cooking doohickey you forget the name of. People don't have time for making their own meals, with so much virtual reality to experience these days, and machines do it all well enough."	--	0

table of scenery 6 [tosc6]
tally (text)	hash1	hash2	hash3	descrip (text)	foundit (text)	what-drops	found
"dindin"	8971	89	0	--	"You feel hungry."	--	0
"heehee"	9720	36	0	--	"You think of a silly pun that feels funnier than it has a right to be."	--	0
"hehhuh"	9764	62	0	--	"[bnb]"	--	0
"henwen"	9695	34	0	"Prydain Chronicles"	"You thought you heard a talking pig just now."	--	0
"huhheh"	10006	40	0	--	"[bnb]"	--	0
"nissin"	2323	89	0	--	"You step on something. It looks like a chunk of dried noodles. You feel hungry for food you'll regret later."	--	0
"nudies"	2010	35	0	--	"You see, and quickly ignore, some disturbing fliers on the ground."	--	0
"shinju"	3598	104	0	--	"Hm, looks like a play, in the park. Not quite Romeo and Juliet, but seemes like it just ended the same way."	--	0
"shishe"	3599	80	0	--	"You smell evidence people are--gasp--SMOKING. You remember health warnings that a whiff of the good smelling stuff is worse than the bad smelling stuff, and vice versa."	--	0
"unkind"	6894	17	0	--	"You hear a name. It's a slur. It's probably old, and maybe people forget why, but the nastiness still remains. It's the sort of thing the ubiquitous video cameras can't catch and report."	--	0
"winded"	6309	39	0	--	"You take a break to catch your breath."	--	0

table of scenery 7 [tosc7]
tally (text)	hash1	hash2	hash3	descrip (text)	foundit (text)	what-drops	found
"dejeune"	8451	619	0	--	"You sure could use a lunch break right now!"	--	0
"kidniki"	14345	1086	0	--	"You temporarily feel on guard against the possibility of radical ninjas."	--	0
"kidskin"	14346	1299	0	--	"You walk by an exotic leather store."	--	0
"kuskunn"	13947	617	0	"Magic Candle"	"You see an image of a demon trapped in a bubble, by a candle slowly burning."	--	0
"sissies"	3654	1003	0	--	"Some self-made tough guys still feel a need to gang up on people weaker than they are. The pain's over sooner than if they went one at a time, amirite?"	--	0
"skidded"	3966	765	0	--	"A goverment utility vehicle swerves and almost hits someone about to jaywalk. Funny how one is always around, unless you jaywalk REALLY assertively."	--	0
"swedish"	3185	997	0	--	"An ethnic area full of oddly dotted vowels. You know them by their unicode numbers, but you have no clue how to pronounce them."	--	0
"weenies"	5721	1003	0	--	"An old long-abandoned hot dog hut lies between two places of Serious Business. Your grandparents constantly babbled about the misspelled version from THEIR youth being so tasty, and--well--maybe the misspelling did make things tastier."	--	0

table of scenery 8 [tosc8]
tally (text)	hash1	hash2	hash3	descrip (text)	foundit (text)	what-drops	found
"inkiness"	10887	1718	0	--	"Everything's a bit cloudy, here."	--	0
"unkissed"	6894	2943	0	--	"You hear a teen sob about their lack of romantic luck."	--	0
"unwished"	6828	3548	0	--	"Someone tries to hand you a flyer you really, really don't want."	--	0
"whiskies"	6261	14313	0	--	"Wow! People seem to be having a rip roaring time, here[whisky-wine]. You don't have time for such carousing at the moment, but it boosts your spirits."	--	0

table of scenery 9 [tosc9]
tally (text)	hash1	hash2	hash3	descrip (text)	foundit (text)	what-drops	found
"iseekkeen"	10926	14556	1	--	"[seek-track]."	--	-1
"iundidedu"	11270	11413	5	--	"[worry-undo of table of education]."	--	-1
"jeskiddin"	12374	11448	1	--	"Someone walks by and notifies you this is a Level 17 restricted area. You quickly hide your to-do list, before they point and laugh that they got you GOOD, and the grocery store's THAT way."	--	0
"seediness"	3064	10804	2	--	"This area doesn't feel too posh. You don't know why, but it doesn't."	--	0
"skunkweed"	3928	13830	6	--	"It smells bad here, like it should be illegal."	--	0
"whininess"	6260	10804	2	--	"You can zone out one complaint or two, but when it's all around, it's like it's contagious and you just won't put up with it! Really, some people! It's just not fair! You'd never...oops."	--	0
"wineskins"	6306	3961	2	--	"Everything retro is fashionable again, and drinking wine from animal skins was before when retro was a thing, so--that big rich people's gathering in the park is extra nice."	--	0

table of scenery 10 [tosc10]
tally (text)	hash1	hash2	hash3	descrip (text)	foundit (text)	what-drops	found
"iundidjunk"	11270	11478	21	--	"[worry-undo of table of supplies]."	--	-1
"iundidnews"	11270	11388	46	--	"[worry-undo of table of marginalized people]."	--	-1
"skinniness"	3961	2313	24	--	"You are momentarily bombarded with ads for diet plans."	--	0

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
