package classes.Scenes.Dungeons.D3 
{
	import classes.BaseContent;
	import classes.StatusAffects;
	
	
	/**
	 * ...
	 * @author Gedan
	 */
	public class SuccubusGardnerScenes extends BaseContent
	{
		
		public function SuccubusGardnerScenes() 
		{
			
		}
		
		public function surrenderToTheGardner(hpVictory:Boolean):void
		{
			// Male
			if (player.hasCock() && !player.hasVagina())
			{
				maleLoss(hpVictory);
			}
			
			// Genderless
			if (!player.hasCock() && !player.hasVagina())
			{
				femGenderlessLoss(hpVictory);
			}
			
			// Herms/fems
			if (player.hasVagina())
			{
				femGenderlessLoss(hpVictory);
			}			
		}
		
		private function femGenderlessLoss(hpVictory:Boolean):void
		{
			clearOutput();
			outputText("You drop to the ground, defeated and degraded");
			
			if (hpVictory) outputText(", not even able to push your bruised body up onto its [feet].");
			else outputText(", too turned on to try and stop your hands from diving into your needy crotch.");
			
			outputText("\n\n<i>\"Fallen already? Has the once mighty champion finally lost herself to the corruption of this land? Who would have thought that the one to");
			if (player.findStatusAffect(StatusAffects.FactoryOverload) >= 0) outputText(" destroy");
			else outputText(" shut down");
			outputText(" our factory would fall to a simple succubus and her lowly garden?\"</i> She strides over to you, hips wiggling in pleasure, and kneels alongside you, running her hand over your abdomen like a girl handling a new pet for the first time. <i>\"You're going to be so useful in my garden!\"</i>");
			
			outputText("\n\nHer garden?");
			if (!hpVictory) 
			{
				outputText(" You cast a furtive glance towards the writhing vines.");
				if (player.hasVagina()) outputText(" Your underthings were already swampy with need, but the sight of watching those eager vines squirm elicits fresh trickles of lube to course down your [legs].");
				else outputText(" You were already horny, but you find yourself wishing you had a pussy, just so you could take even more of them inside you.");
			}
			else outputText(" You cast a worried look towards the writhing vines. They seem so eager, yet they hold back for now, perhaps waiting for their mistress to finish. No... you can't go down like this!");
			
			outputText("\n\nGently removing your [armor] a piece at a time, the succubus coos, <i>\"Are you looking forward to it yet, [name]? Being wholly, totally embraced, every hole filled with pulsing, eager lengths?\"</i> She strokes your cheek in a gesture that you would mistake for affection from anyone but a demon.");
			if (player.hasVagina()) outputText(" Against your better judgement, you're starting to get wet from the promises of her words. You know you're being given to a neverending hell of sexual stimulation, but you can't stop your body's libido from responding to the idea.");
			outputText(" <i>\"Yeah, you want it, doncha?\"</i> Slim fingers deftly press at your");
			if (!player.hasVagina())
			{
				outputText(" bare crotch, sinking into a crease that didn't exist a moment before. Her skilled touches and dark powers mold your body like a sculptor's clay, crafting a magnificent cunt on your crotch while simultaneously bringing it to a dripping wet state.");
				player.createVagina();
			}
			else
			{
				if (player.wetness() <= 2) outputText(" moistening");
				else outputText(" soaked");
				outputText(" crease, and it's all you can not to cry out and thrust back against her.");
			}
			
			outputText("\n\nThe succubus idly toys with your [vagina], sometimes rubbing her thumb");
			if (player.balls > 0) outputText(" across your [sack],");
			else if (player.hasCock()) outputText(" across the underside of your [cock],");
			else outputText(" against your [clit],");
			outputText(" confiding aloud, <i>\"To be honest, I'm a little jealous of you.\"</i>");
			
			outputText("\n\nHer fingers dip deeply into your slickness, and you moan in answer.");
			
			outputText("\n\n<i>\"You're going to get to go to a place where there is no worry... no angst... just... pleasure.\"</i> The last part escapes her lips as a breathy whisper. <i>\"No worry or fear either. I've watched them take other slaves. It's like watching a master bard strum on his favorite lute. Instead of deft fingers across taut strings, it will be slippery tentacles coaxing every ounce of bliss from your nubile form.\"</i> She sighs. <i>\"Oh to be free of my obligations. I would join you in a heartbeat.\"</i>");
			
			outputText("\n\nA whimpering, <i>\"Yes,\"</i> squeezes past your lips as you arch back against her palm.");
			
			outputText("\n\nSmiling sadly, the succubus pulls her fingers away. A web of your own clear lubricant hangs suspended between her fingers and your moistened box for a moment, then snaps. <i>\"You're going to be a wonderful mother my for pets, I just know it.\"</i> She loops an arm under your shoulder and lifts you to your [feet]. <i>\"Now, lets get you what you want, dear.\"</i>");
			
			outputText("\n\nYou're led up to the very edge of the wall of vines. The writhe and twist against one another, in constant, aching motion, signalling their feverish want for you, but they hold back all the same. Their mistress has certainly trained them to act like gentlemen... for now at least.");
			
			outputText("\n\nSuddenly, the supportive arm vanishes, and you're pushed forward, falling straight into the mesh of vines....");
			
			menu();
			addButton(0, "Next", femGenderlessLossII);
		}
		
		private function femGenderlessLossII():void
		{
			clearOutput();
			outputText("Your fall doesn't take you very far. A cushion of interceding plants stops you long before any harm could befall you, holding you nearly horizontally above the rich, loamy earth. There's a bit of a salty-sweat scent in the air. You can't quite identify it, but then again, you don't really have time to. Bands of floral flesh are circling around your arms and [legs]. They aren't constrictive. As a matter of fact, they're kind of comforting - like being surrounded in a lovers arms. Of course, these arms conform perfectly to your flesh, pressing down on you from all sides.");
			
			outputText("\n\nIt grows dark as the tentacles adjust to your presence within their midst. Those not actively engaged in sliding across your [skinFurScales] are straightening once more, blocking the light and warmth of the sun out for what is perhaps the last time. Bands of slick, wet plant roll across your shoulders and [chest], enveloping them much like your limbs a moment before. A narrow band slides over your collarband and worms around your neck into an impromptu collar, tight enough that it's impossible to ignore but loose enough to allow you to breathe.");
			
			outputText("\n\nWetness drizzles your [vagina]");
			if (player.hasCock()) outputText(" and " + multiCockDescriptLight());
			outputText(" with foreign wetness. The vines' lubricant is surprisingly warm on your skin, and the feeling of rivulets of it running down the crack of your [butt] and over your [asshole] is surprisingly pleasant.");
			if (player.isBiped()) outputText(" Your [legs] are eased open, but who are you to stop them? You're as wet as anything, and if spreading wide is the next step towards scratching your itch, so be it.");
			outputText(" Your [clit] must look like a");
			if (player.clitLength > 6) outputText(" glistening, cum-soaked shaft");
			else if (player.clitLength > 3) outputText(" tiny, cum-soaked cock");
			else if (player.clitLength > 1) outputText(" swollen, lube-lacquered gumball");
			else outputText(" glistening, pink target");
			outputText(" by now. You roll your [hips] as much as your position will allow. Your passion inflamed pussy has thus far avoided the tentacles' affections, though it's the one part that wants them more than anything.");
			
			outputText("\n\nBands of verdant iron hook around your wiggling hips to steady them. These are not like the soft cushioning bands that bind you elsewhere. Where those are only modestly firm, these are unforgiving bondage. They immobilize rather than guide. Your crotch's squirming is stilled and your need unquenched. A cry of displeasure erupts from your mouth, but it too is stilled, this time by a thick, lip-stretching tendril that locks your jaw open. You can't talk. You can't even hump. All you can do is hang there and drip while your mouth slowly fills.");
			
			outputText("\n\nThe taste on your tongue, both of the stalk plugging you and its fluid, is just as salty and sweet as the scent coming from the ground. If you weren't thinking with the achingly empty hole you call a cunt, you might have realized just how cum-soaked the soil is here, but instead, you're swallowing a mouthful of tainted tentacle juice and dripping. The more you swallow, the more your [vagina] drips, and the less capable of rational thought you become. You're a font of girlcum, a drippy, wet sponge of a girl who is going to spill her juices until her fragrant sex enticing someone to give her the filling she clearly needs.");
			
			outputText("\n\nYour [vagina] erupts in a long overdue gout of pleasure, squirting juices into the air as something thick and warm slams past its welcoming gates deep into its cum-starved channel.");
			player.cuntChange(player.vaginalCapacity() * 1.25, true, true, false);
			outputText(" The change from complete emptiness to total fullness rocks the very foundations of you world. There's something so very right about stuffed with cock, crammed full of dick, that you can't imagine existing any other way. Throat bobbing while you swallow, you happily gurgle and relax. Muscles that were coiled tighter than steel springs go slack. There's no need to take action; your gushing hole is finally filled, and the whole of your body is cradled by your inhuman lover's seemingly infinite arms.");
			
			outputText("\n\nYour [pc.vagina] clinges tightly to the girthy intruder. The size of the glistening, girlspunk-stained stalk seems perfectly suited to keeping your lips your comfortably stretched. Perhaps it's all the aphrodisiac-laced spooge you're guzzling, but you don't feel an ounce of pain. Your pussy is incandescent with ecstasy. Letting your eyes drift closed, you voluntarily abandon you other senses in order to focus on the rhythmic strumming of your vaginal nerves. The pleasure is so right... so perfect, that you feel compelled to play your tongue along the tentacle in your mouth and work forgotten, vaginal muscles, trying to say thank you in the only way you're capable of.");
			
			//Dicks
			if (player.hasCock())
			{
				outputText("\n\n[EachCock], long ignored and pulsing ribbons of off-white lust, is snapped up by what feels like a custom-made sleeve. You can hear the noisy slurp of it vacuuming up your length");
				if (player.cocks.length > 1) outputText("s"); 
				outputText(" over the lurid squishing sounds coming from your cunt, and the two sensations combine into a riot of overwhelming sensory data. You're fucking and being fucked to two different, incongruent tempos and unable to make sense of it in the slightest.");
			}
			
			//Back to normal.
			outputText("\n\nMore cum splatters across the exterior of your womanhood a moment before an enclosure envelops your [clit].");
			if (player.clitLength > 6) outputText(" It stretches some around the cock-sized button");
			else if (player.clitLength > 3) outputText(" It has no trouble handling your plus-sized button");
			else outputText(" Your tiny button seems dwarfed by the tube enveloping it");
			outputText(", but that doesn't make it feel heavenly. It gently pulsates around your buzzer, rippling and squeezing, rhythmically whipping electric lashes of sensation into your fuck-crazed body one after another.");
			
			outputText("\n\nThe fleshy spear ravaging your honeypot quivers and slows, then thrusts hard enough to rock your body");
			if (player.biggestTitSize() > 2) outputText(" and jiggle your tits");
			outputText(", pressing itself flat against your cervix before finally exploding, creaming your insides with a thick layer of molten-hot seed. You would groan or whimper if your throat wasn't crammed so full of plantcock. Instead, your eyes roll back under their fluttering lids, revealing a narrow band of white as you lose all control. Your body shakes like a seizure victim's, all except for the muscles down south. They're too busy clenching and squeezing the lengthy intrudor, wringing every drop of lust-imbued cum");
			if (player.isPregnant) outputText(" to splatter against your occupied womb.");
			else outputText(" to fill your womb, to make it round with life so that others can feel what you're feeling.");
			
			outputText("\n\nYour girlhoney squirts, splattering over the ground.");
			if (player.wetness() < 4) outputText(" You may not normally be capable of such soaking orgasms, but that seems of little concern to you.");
			outputText(" You're a fountain of wetness now, fit only for cumming and taking cum in. The thought triggers a second orgasm on the back of the first while the spent tentacle exits.");
			
			outputText("\n\nAnother, larger tentacle takes its place, sealing most of the first's load inside. There's no waiting, only fucking and climbing to one orgasm after another. The space between climaxes narrows with each one until your world becomes a constant, irresistible tide of bliss.");
			outputText("\n\n<b>GAME OVER</b>");
			menu();
			goNext(9999);
		}
		
		private function maleLoss(hpVictory:Boolean):void
		{
			clearOutput();
			outputText("You drop to the ground, defeated and degraded");
			if (hpVictory) outputText(", not even able to push your bruised body up onto its [feet].");
			else outputText(", too turned on to try and stop your hands from rushing to your crotch. Why bother?");
			
			outputText("\n\n<i>\"Oooh, has the mighty champion finally fallen? To think, the one who wiped out our factory installation would fall prey to simple tentacle shrubs and a lowly succubus.\"</i> She strides over to you, her hips wiggling with pleasure. Her foot presses down on your crotch, rubbing your [cock] through your [armor], her eyes twinkling as you writhe at her touches. <i>\"Hmmm... would you rather be my little pet doggie? Following me around on a leash for walkies in the garden, or do you think that this-\"</i> She presses down harder on your crotch. <i>\"-would be a good source of protein for my other pets?\"</i> Gesturing at a nearby tendril's slobbering slit, she smiles. <i>\"Either is good for me.\"</i>");
			
			outputText("\n\nYou whine, the unwelcome lust obliterating any other considerations as she plays with you, not even bothering to use her hands or mouth. Both ideas have their own appeal. You're quite sure that any pet of hers is going to get to be allowed to breed quite frequently, but then again, being given to the tentacles to be bound and milked for the rest of your life would take your mind off your failure here. To be honest, here, under her heel, you have a hard time even remembering why you came here in the first place. You're just glad to feel her flawless skin rubbing you, dismissively or not.");
			
			outputText("\n\nThe succubus stops, looking at you questioningly. It's obvious that she's waiting on a reply. What do you choose?");
			
			// [Pet][Feeder]
			menu();
			addButton(0, "Pet", maleLossPet);
			addButton(1, "Feeder", maleLossFeeder);
		}
		
		private function maleLossPet():void
		{
			clearOutput();
			outputText("<i>\"I'll be your doggie,\"</i> you gasp with an accompanying needy arch of your back.");
			
			outputText("\n\nPressing down on your [cock] once more, the succubus giggles, <i>\"Oh, you've chosen wisely, my little pet. Oh... oh my, has pet got a bone?\"</i> She bends over, stripping your [armor] with effortless efficiency to expose the eagerly pulsating length.");
			if (player.biggestCockLength() >= 18) outputText(" <i>\"Oh, it's quite the big bone, isn't it? You're going to have an awful hard time dragging that around on all fours, [puppy]. Why, I bet the moment you see a bitch, you're going to be humping the ground, practically immobilized by it.");
			else if (player.biggestCockLength() >= 8)
			{
				outputText(" <i>\"Oh, that's quite the nice bone you've got there, isn't it? Why, everyone is going to see how big you are down there, even while you're walking on all fours. I suppose you'd be good for breeding the bitches");
				if (player.cocks[player.biggestCockIndex()].cockType != CockTypesEnum.DOG) outputText(", once you have an appropriately-shaped cock");
				outputText(".");
			}
			else
			{
				outputText(" Oh, that's quite the well-formed bone you've got there, isn't it? I could probably take you to shows, and the judges would comment on how well it matches your form. You'd like that, wouldn't you? Rolling over on your back and letting some official-looking demon measure your cock.");
			}
			outputText("\"</i>");
			
			outputText("\n\nA high-pitched whine of agreement automatically slips off your tongue - anything to get her to continue her ministrations on your crotch. You hold your hands up like paws and splay your [legs] for easier access, humping the 'v' between her big and index toes, rubbing yourself off on the bottom of her foot, knowing full well that's the best the demon is likely to give you.");
			
			outputText("\n\n<i>\"Goood " + pc.mf("boy", "girl") + ",\"</i> she coos, twisting her foot to rub her heel against your [sheath biggest]. <i>\"You're just so eager to cum that you'll do anything, won't you?\"</i>");
			
			outputText("\n\n<i>\"Yessss,\"</i> you hiss, forgetting your role in the heat of the moment.");
			
			outputText("\n\nStars erupt in your vision as you're kicked in the head, and you're not sure which is worse - the ache of her none-to-subtle reprimand or the void of sensation on your throbbing tool. The phantom memeory of her warm, soft toes cradling your veiny fuckstick teases you worse than anything she could say, and you look up at her, a hurtful look plain on your face.");
			
			outputText("\n\nHer visage is painted with displeasure, but hints of possessive affection as well. It would be easy to confirm it for a kind of motherly displeasure were it not for the glint of prideful ownership in her eyes. <i>\"Pets don't talk,\"</i> she explains. <i>\"I'll fix that later, but for right now, you can be my good little puppy, right?\"</i>");
			
			outputText("\n\nYou open your mouth, about to answer, when you remember what happened last time. Slowly, you shape your mouth to make a new sound. \"</i>...arf?\"</i>");
			
			outputText("\n\nThe succubus' heel rubs at your [sheath]");
			if (player.balls > 0) outputText(", just above your [balls],");
			outputText(" once more, cooing, <i>\"I knew you'd train well. Now, I'm going to lead you to your new home, and then you'll get to blow all that nasty, pent-up spunk all over my hand. But you have to be good until then, okay?\"</i>");
			
			outputText("\n\nYou... you're not sure you can! You're so hot and so close! Pearls of clear pre are oozing out of your " + multiCockDescriptLight() + " like water from a leaky faucet, and all you'd need to do is grab hold of her leg and just hump away.");
			
			outputText("\n\nPerhaps sensing this or simply because she intends to lead you away, she pulls away. <i>\"I suppose you can have a treat before you go.\"</i> The blue-hued demon turns to a depression in the ground and leans over, holding you down with her foot to keep you from mischief. After all, you haven't been properly trained. Her tremendous breasts hang down in elongated teardrops, only sagging slightly in spite of their huge size. When her fingers grab her pebbly, hardened nipples and begin to tug, a ripple passes back the creamy skin of her teats, and a torrent of amber-white sap erupts.");
			
			outputText("\n\nThe first flows splatter on impact. You're lucky enough to have a few flecks land on your lips, and you tentative test them with your tongue. They're delicious! You lick and lap at every stray drop");
			if (!player.hasMuzzle()) outputText(", heedless of the fact that you seem to be able to reach a little farther with every one you consume");
			outputText(", slobbering some in your vigor to get more. All the while, the depression fills higher. The sound of gushing fluid tapers down to pitter-patters of the last droplets impacting the impromptu bowl, accompanied by a moan from the demon. She's clearly enjoyed preparing your little treat.");
			
			outputText("\n\n<i>\"Eat up, doggy.\"</i> Her foot disappears.");
			
			outputText("\n\nYou look down at your drooling rod");
			if (player.cocks.length > 1) outputText("s");
			outputText(", then at the puddle of sap-laced milk, then at your rod again, then finally back at the puddle before getting up onto all");
			if (player.isNaga()) outputText(" threes");
			else if (player.isTaur()) outputText(" your hooves");
			else outputText(" fours");
			outputText(".");
			if (!player.isTaur()) outputText(" You scrabble over, unusued to having to move in such a way,");
			else outputText(" You gallop over and drop down on your forelegs");
			outputText(" and plant your [face] right into the succubus' milk. It's a little thicker than milk normally is and stickier too, like honey, but it's also sweeter. The ambrosial fluid fills your mouth with scintillating, indescribable flavor that sets");
			if (player.tailType != 0)
			{
				outputText(" your tail");
				if (player.tailType == 13 && player.tailVenom > 1) outputText("s");
			}
			else outputText(" your stubby, new tail");
			outputText(" wagging.");
			if (player.tailType != 2) outputText(" Never mind that it gets longer and fuzzier with every gulp or that that your");
			else outputText(" Never mind that your");
			outputText(" tongue is swelling up, wide, flat, and perfect for panting, licking, and lapping up a drink.");
			player.tailType = 2;
			
			outputText("\n\nPerhaps best, and worst, of all, you aren't going soft in spite of the lack of attention to your bone. It merely hangs under your");
			if (player.isPregnant) outputText(" pregnant");
			outputText(" belly, dripping and drooling");
			if (player.hasVagina()) outputText(", lubricated with a sheen vaginal juices from your forgotten sex organ");
			outputText(", more ready for use than ever but obedient... waiting for someone, perhaps a mistress, to allow you to use it. Most of the milk is gone now, but your tongue is perfect for prizing the last of the honeyed amber from its muddy bowl. Having such a useful muscle allows you the perfect chance to look up at her while you drink.");
			
			outputText("\n\nWhy are her hands glowing? Coronas of amber energy are flicking around her hands. There's even flashes of the stuff at the corners of your eyes. Maybe it's just too bright. Whatever the case, she's smiling, so you must be doing well. You never thought a succubus could be this nice! The pain of the kick has already faded, and you're feeling very 'in the moment.' She's most definitely in a position of power over you. Perhaps owner is the right word. The corners of your mouth quirk up at how right that sounds. Yes, she's definitely your owner... your mistress.");
			
			outputText("\n\nThe glow emanating from her fingertips flashes and fades as you lick the last bits of mistress' gooey goodness out of the dirt. You lick at your chops, savoring every stray drop before picking yourself up and panting. You're so lucky that you gave yourself to her! You give a happy bark to tell her. If only you had a way to make her understand you.");
			
			outputText("\n\n<i>\"Good [boy],\"</i> she coos again, and you hear the tone more than the words, hear the praise layered into them, understand that you've made her happy. Your tail flails back and forth in excitement, and your obedient cock");
			if (player.cocks.length > 1) outputText("s thrum");
			else outputText(" thrums");
			outputText(" with ready excitement. A thin trail of pre-spooge rolls out of you, trailing on the ground behind you with each happy twitch of your bitch-");
			if (player.biggestCockLength() >= 12) outputText("breaker");
			else outputText("boner");
			outputText(". You hope she doesn't mind, but you have a hunch that she won't mind you being THAT kind of messy puppy.");
			
			outputText("\n\nThe succubus turns and whistles, patting her hip. <i>\"Come along now, I'm gonna show you your new home.\"</i>");

			outputText("\n\nYay! You plod along after her, low to the ground and sniffing at the air. Mistress has a very unique aroma, now that you take a chance to appreciate it, like earth and berries and sex all mixed up into one scent. You've never sample its ilk before. Other aromas bring themselves to your attention, some wafting from side passages and other mere traces on the ground, but you're aware of them all, intrigued by them all and wishing that you could run off to see what every single one was. Maybe after you discover your new home, she'll let you go for a run.");

			//Taurs
			if (player.isTaur() || player.isDrider())
			{
				outputText("\n\nThe longer you follow, the more you bow over, submissively, and at some point, you even start putting your hands on the path, moving your weight onto them. Elsewhere, your middle is raising up, and your body is changing, you're sure of that. The change slows you at first, but soon enough you're plodding along just fine, the");
				if (player.isDrider()) outputText(" clip-clop of your hooves");
				else outputText(" sharp clacks of your spidery claws");
				outputText(" fading into the near silent pats of padded paws. Your hands are changing too: the fingers are shortening, but your nails are growing. Fur grows out over them, and your spine shifts, all so that you can follow on all fours that much easier.");
			}
			else
			{
			//Nontaurs
				outputText("\n\nThe longer you follow, the easier it gets to stay on her heels.");
				if (player.isGoo()) outputText(" Your gooey undercarriage easily divides into two hind legs, slapping wetly with regularity as you plod along.");
				else if (player.isNaga()) outputText(" Your slithering tail twitches, stopping you for a second, but then it splits into two limbs, each firmer and more canine than the snake-like appendage you once had. They wobble unsteadily for a second before jumping into action.");
				else outputText(" Your [legs] shorten as you plod along, slowing you momentarily as they change. You lift your knees up so that you can stand on your [feet] once more, only they're soft, padded paws now, tipped with short nails.");
				outputText(" Your hands follow suit. First, pads form on your palms, making it easier to support your weight. Then, your fingers shorten. It's not entirely an unpleasant sensation, as it makes moving towards your home that much easier.");
				outputText("\n\nBy the time you pass into a structure, you're prancing along quite spryly on your four legs. Several other demons and creatures are around now. Many point at you and speak, but the words are beyond you. The tones in their voices imply derision or jealousy of Mistress, but a smile from her stills your worries. She's pleased! Your tail, which had gone flat a moment ago, begins slapping back and forth again, dumbly smacking into the wall as you follow.");
			}

			//[Next]
			menu();
			addButton(0, "Next", maleLossPetII);
		}

		private function maleLossPetII():void
		{
			clearOutput();
			outputText("Your kennel is amazing! It's the perfect size for you to crawl into, there's holes in it so that you don't get too hot while you wait to be let out. There's even one big enough for you to slip");
			if (player.cocks.length > 1) outputText(" a");
			else outputText(" your");
			outputText(" cock through. That hole is on the back wall. You can't see what's over there, but your nose can smell pussies - some of them bitch-pussies, and lots of spilled cum. Your old mind would've identified it as a glory-hole, but it's harder to focus on concepts like that now. ");

			outputText("\n\nThere's just too much physical sensation going on for you to focus on coherent thoughts. Every part of your body feels like it's screaming its awareness at you. Your tail is a little itchy, for instance. Your legs are a little tired, but it's that good kind of 'just went for walkies' tired. Your nose can smell soooo much. And best of all, your cock feels like it's three times as sensitive. It's so much easier to just think in emotions and images instead of abstract concepts like words.");

			outputText("\n\nMistress clasps a collar around your furry neck.");
			if (player.skinType != SKIN_TYPE_FUR) outputText(" Was that there before?");
			outputText(" It feels very right, and in your excitement, it's hard not to hump her leg. It must be obvious to her, because your dick");
			if (player.cocks.length > 1) outputText("s are");
			else outputText(" is");
			outputText(" bobbing beneath you, and she gestures for you to roll onto your back.");

			outputText("\n\n<i>\"You've listened so well today, doggie. Time for your treat.\"</i>");

			outputText("\n\nOhhhh, she sounds so happy! You roll over, panting in excitement, your pre oozing into your fur in reckless drops, and look up at her. She ruffles your belly, making you wiggle in happiness, before reach down to [oneCock] and wrapping her hand around it. Ohhh, it's so smooth and soft. You can feel every crease in her hand as it slides around you, and the wetness of your eagerness has you irrevocably lubricated. She doesn't stroke just yet, instead rubbing her thumb back and forth beneath your [cockhead biggest] while cradling your tool.");

			outputText("\n\nMistress asks, <i>\"Who's a good puppy?\"</i>");

			outputText("\n\nYou bark, and her other hand ruffles your [hair], playfully scratching behind your ears. She squeezes while stroking slowly and repeats the question.");

			outputText("\n\n<i>\"Who's a good puppy?\"</i>");

			outputText("\n\nYour bark comes quicker and easier this time. At the same time, Mistress' hand moves a little faster. The pleasure is overwhelming, like the entirety of your consciousness is down between your hindlegs and being playfully caressed by her beautiful, shapely fingers, spellbound and held between them so that they can eke ever-greater flows of pleasure from your pliant nerves. In this moment, you're happier than you ever remember being, euphoric even. This must be what true love feels like. You marvel at how love feels like being owned, your cock");
			if (player.cocks.length > 1) outputText("s");
			outputText(" trembling and spurting out ribbons of pre. Whining in the back of your throat, you look at her, hoping she can read the affection in your eyes, wanting her to see just how completely contented you are with this state of affairs.");

			outputText("\n\n<i>\"Who's a good doggie?\"</i>");

			outputText("\n\nYou bark and cum at the same time, shooting ropes all over your belly. Mistress is so nice; she keeps stroking while you shoot, encouraging her pet to shoot every drop of " + pc.mf("his","her") + " sperm out. You must have been really good! Lances of white goop splatter off your chest, still somewhat human in shape, and tag your chin.");
			if (player.cumQ() >= 2500) outputText(" A few thick ropes shoot past your head to cream the wall, eliciting a pleased giggle from your owner as she squeezes yet more from your length.");
			outputText(" You yip with glee as you cream for Mistress' fingers, but eventually, your climax trails off into a dribbly white mess, some of which clings to the demoness' nails like beads of ivory dew.");

			outputText("\n\nThe tentacle gardener holds her hand to your mouth for you to clean. You don't hesitate for a moment, licking the salty treat off her with gusto before being led into your kennel for a nap.");

			//[Next]
			menu();
			addButton(0, "Next", maleLossPetIII);
		}

		private function maleLossPetIII():void
		{
			clearOutput();
			outputText("The champion, more canine than [man], became little more than one mutt among many that the demons had tamed, used for everything from breeding to hunting escaped slaves, and " + pc.mf("he","she") + " loved it, delighted in it even. Eventually, " + pc.mf("his","her") + " owner bred her numerous times, creating a bloodline of strong, loyal servants that eventually helped keep all of Mareth under the demon's heels.");

			outputText("\n\n<b>GAME OVER!</b>");
			menu();
			goNext(9999);
		}
		
		private function maleLossFeeder():void
		{
			clearOutput();
			outputText("<i>\"I'll... I'll play with the tentacles,\"</i> you gasp out, as much to yourself as the succubus, finally coming to terms with your shameful predicament. Somehow, being forced to endlessly climax seems subtly more dignified than crawling around on a leash. You tell yourself that you'll simply bide your time - wait for a chance to slip free of the vines' ceaseless squirming. You resolve not to give up even though you've lost this battle.");

			outputText("\n\nThe succubus's lips curl cruelly. <i>\"Oh. You still think you'll get a chance to escape, don't you?\"</i> She throws her head back and laughs. <i>\"How wrong you are, Champion. How wrong you are...\"</i> Turning to the botanical wall, the enchanting gardener at you, giving you quite the view of her well-formed backside.");

			outputText("\n\nSomething slick and smooth wraps around your [leg], moving slowly and patiently but with great strength. You can feel the firmness of its grip tightening while a second latches on. The twinned tentacles circle up your body in alternating corkscrew patterns, gliding across your [skinFurScales] with self-lubricated ease. You try to scrabble away, but the tendrils merely lift you aloft like a child would a toy. Meanwhile, the succubus merely flicks");
			if (pc.cocks.length > 1) outputText(" [oneCock].");
			else outputText(" your dick.");

			outputText("\n\n<i>\"It's funny that you seem to think you'll have any agency over your life at this point.\"</i> She laughs. <i>\"This next part will go easier if you relax.\"</i>");

			outputText("\n\nThe appearance of a green-hued vine answers your question before you can ask it. It's so close that you have to cross your eyes to focus on it, and the slightly bulbous, rounded tip is but curled towards your lips. Syrupy wetness covers the whole of its tip, dripping down its length. There's no visible opening that you can see; perhaps it secrets the sweet-smelling sap? Before you can consider the implications of such a thing, it presses into your mouth with enough force to force your jaw open. It certainly doesn't help that you were totally unprepared for its thrust.");

			outputText("\n\nThe taste... oh gods, the taste! It isn't what expected at all! The flavor is sweeter than a lover's kiss, more flavorful than the finest chocolate. Your mouth is awash in ambrosial bliss, and you suckle from the bulbous intruder immediately, sucking down as much of the honeyed goo as possible. Your tongue affectionately lashes the underside of the tendril, and on cue, it produces more. It feels like there is a place that opens up to release more of the delicious goo after all. With every slurping suckle, more squirts onto your palate.");

			outputText("\n\nThe succubus strokes her fingertips down your neck and jawline, softly explaining, <i>\"The fluids you're enjoying so much? It goes without saying that they're corruptive... but would you really want to go without them now, after tasting them?\"</i> She playfully strokes the tentacle, earning you a nice, thick spurt of goo. <i>\"Could you really stop sucking on this?\"</i>");

			outputText("\n\nYou... you're not sure. You noisily gulp down the proffered, delectable goo to buy time to think. It doesn't just taste good; it feels good in your belly as well. It fills you up in ways that food never could. Trickles of that delight radiate out from your slowly-filling gut. They make your [skin] seem to fizzle with raw energy, particularly in your crotch. It's impossible to ignore the way that [eachCock] is swelling or how wonderful the currents of moist air against it feel. ");

			outputText("\n\nRunning her finger down");
			if (player.cocks.length == 1) outputText(" its");
			else outputText(" one's");
			outputText(" twitching length, the succubus giggles. <i>\"Can you feel it? Can you feel your body just welling up with cum? I suppose I should have mentioned that, huh?\"</i> She runs her finger back the other way, and your muscles clench, squeezing out a big, fat drop of pre from your cock, dripping down to hit");
			if (player.biggestTitSize() >= 3) outputText(" the underside of your breasts");
			else outputText(" your chin");
			outputText(". You whimper with need. It's impossible not to. Hell, your " + multiCockDescriptLight());
			if (player.cocks.length == 1) outputText(" is");
			else outputText(" are");
			outputText(" flexing, and if you had anything to brace off of, you'd be thrusting into the first orifice you could find.");

			outputText("\n\nYou look at up at the gorgeous woman pleadingly, bound and dripping, helpless and aroused beyond measure. More tentacles wrap your arms tightly to your sides while she considers your situation. Her hands withdraw from your length, but the tentacle in your mouth is starting to pump in and out, squirting ropes of heavenly sap down your throat. There's something so indescribably erotic about the situation - you hanging there, suspended and helpless, pumped full of corruptive, cock-engorging chemicals that make every part of you so wonderfully sensitive.");

			outputText("\n\nA breeze caresses your [leg] as the succubus casually removes your [armor]. It feels like oiled fingertips sliding over your flesh. Your [nipples] are like live wires, and your " + multiCockDescriptLight() + ".... Well, you're leaking pre in thick, solid ropes now, an act that feels like halfway between a good tonguing and orgasm itself. Your lips are slick with the tentacle's fluid and tingling like sex-organs of their own. Sealing them tight, you moan, gurgle, and swallow. Attempts to beg for more have fallen away. This is enough, and if it keeps up, you're going to cum, touches or no.");

			//Prostate swelling
			if (player.balls == 0)
			{
				outputText("\n\nThe familiar tightness in your core is there, but rather than climaxing immediately, the sensation intensifies. It grows like an itch you can't scratch, driving you to distraction. Your body tightens like a watchspring being cranked before eventually snapping, sending your muscles into uncontrollable convulsions, squeezing and grinding against something swelling up inside you. Clenching down against it feels unconscionably good and earns you a thicker drizzle of pre. You twist in your bindings while the flow thickens and your spasms turn into a steady fluttering. It's clear that your prostate is getting bigger, but it feels too good to worry about.");
			}
			//Ball filling
			else
			{
				outputText("\n\nThe tightness in your [balls] is there, your [sack] drawing close against your crotch, but rather than climaxing immediately, the sensation intensifies. The feeling of tautness relaxes after a moment, but in its place comes an unfamiliar weightiness, one that only serves to remind you of the payload building inside them. As a matter of fact, you swear you can feel a certain liquid churning there, like every beat of your heart is somehow pumping more and more cum into your [balls]. Your mind knows it impossible, but the incredibly fullness of your swelling sack argues otherwise.");
				if (player.ballSize > 15) outputText(" Thankfully, a few tentacles loop under the gigantic orbs to help support them.");
			}

			outputText("\n\nYou happily gurgle into the tentacle in your mouth and arch your back, blowing the first huge rope of your enhanced load");
			// 9999 - Check muh
			if (player.biggestTitSize() >= 3) outputText(" all over your body");
			else outputText(" directly onto the soil below");
			outputText(". It isn't enough! You're so full, and you need to cum so much. The next spurt is more like a firehose of seed, but it isn't enough either. Yes, you're orgasming, but it isn't satisfying you. You need to cum more! Harder! Each successive blast of creamy spunk makes a bigger mess, yet there always seems to be more inside you waiting to come out. Looking more like a waterfall of sperm than a hero, you gurgle for more once more.");

			outputText("\n\nThe tentacle in your mouth pulls out, though not before you manage one last slurp. You're not even aware of how obscenely the sap has bloated your belly - your attention is far too firmly focused elsewhere. One thing you are aware of is the gasping, plaintive sound of your own voice, and you put it to work, gibbering for more.");

			outputText("\n\nThe succubus laughs, cupping a hand under your fountaining length");
			if (player.cocks.length > 1) outputText("s");
			outputText(". <i>\"Oh, you'll have more soon enough: more pleasure... more sap... and more orgasms than you'll know what to do with. You're going to make fine fertilizer for my pets. Lethice will be pleased.\"</i> She laps at the alabaster treat and sighs. <i>\"Pleased indeed. It is more rich than I thought.\"</i> She pauses as if considering something, then shakes her head. <i>\"Perhaps I will use you later. For now, I think you are eager for my pets' attentions. Why don't you get acquainted?\"</i>");
			//[Next]
			menu();
			addButton(0, "Next", maleLossFeederII);
		}

		private function maleLossFeederII():void
		{
			clearOutput();
			outputText("Trapped in a hellish loop of constant yet unsatisfied orgasm, you're pulled into the sea of tentacles. Your eyes have rolled back too far to see the grinning demoness or her confidently swaggering derriere, but if they could, they'd grow wide with worry once the twisting, dripping vines blocked her out. Hunger and thirst soon compete with pleasure for your attention. The swelling of your belly has already receeded, the fluid inside long side converted to ivory jets of release.");

			outputText("\n\nA stalk as thick as your leg rises up, its tip nearly divided by a gash big enough to swallow a man whole, and");
			if (player.biggestCockLength() < 6)
			{
				outputText(" swiftly engulfs your meager offering");
				if (player.cocks.length > 1) outputText("s");
			}
			else if (player.biggestCockLength() < 12)
			{
				outputText(" rapidly devours your plus-sized length");
				if (player.cocks.length > 1) outputText("s");
			}
			else if (player.buggestCockLength() < 24)
			{
				outputText(" devours your immense offering");
				if (player.cocks.length > 1) outputText("s");
				outputText(" with steady determination");
			}
			else
			{
				outputText(" slowly encircles your cum-spouting length");
				if (player.cocks.length > 1) outputText("s");
				outputText(" with inhuman elasticity");
			}
			outputText(". The interior is covered with tiny, wiggling nubs that wiggle into action on contact with your trembling member");
			if (player.cocks.length > 1) outputText("s");
			outputText(". It's like every single nerve has its own skilled masseuse giving it a rubdown, coaxing more pleasure from every square inch of skin than you thought it capable of producing. You cry out, totally overwhelmed, only to be silenced by a familiar presense in your mouth.");

			outputText("\n\nThis new tentacle is already cumming, though. Using its own sappy spooge for lube, it slithers past your unresisting tonsils to provide its life-giving moisture directly. It can't quite compete with the huge, stalk-distending blobs of jism you're pouring out, at least not alone. A second tendril winds its way");
			if (player.tailType != 0) outputText(" past your tail to slither");
			outputText(" between your cheeks.");
			if (player.ass.analLooseness == 0) outputText(" The virginal tightness of your pucker holds the tentacle at bay at first. Still, it's no match for the combination of slippery plant fluid and constant pressure.");
			else if (player.ass.analLooseness <= 3) outputText(" The tentacle has little problem slipping through your tight backdoor, slick as it is with fluid and backed by constant pressure.");
			else outputText(" The tentacle has little difficulty squeezing into your well-loosened ass. Even without its constant, firm pressure and slippery fluid, it could enter with ease.");
			outputText(" You gasp at the odd, room-temperature feel of an intruder squirming through your rearmost passage. It's entirely unexpected, but once its mass slithers across your prostate, squeezing even bigger blobs of cum from your rapt, attentive body, you forgive its intrusion.");

			outputText("\n\nTimed perfectly with the tentacle in your mouth, the one in your ass unleashes its own sappy payload. This, of course, only pushes your pleasure to new heights, all while providing you with what you need to keep churning out fresh,");
			if (player.balls == 0) outputText(" prostate");
			else outputText(" ball");
			outputText("-draining spurts of plant-food. The cradling vines squirm over your touch-heightened skin, grinding the whole of your body. It's like your entire being is being fucked");
			if (player.hasVagina()) outputText(", and once a thick, cock-shaped plant slides inside your [vagina], you truly are");
			outputText(".");

			//Fuckable nipples
			if (player.hasFuckableNipples())
			{
				outputText("\n\nThe vines rubbing against your [nipples] soon discover their leaking, capacitive secrets and burrow in. If your mouth wasn't completely stuffed, you'd scream your love for this wonderful creature to the heavens. Instead, you merely whimper and cum against, a tiny boobgasm riding atop an ocean of squirting need. Your chest is taken for a ride by tentacle after tentacles. Sometimes one will withdraw to allow another entrance. Sometimes two will fuck your tits at once, sliding against each other inside of you. But you are never left empty for more than a second, your nipples like toys for the insatiable abominations.");
			}
			else if (player.isLactating())
			{
				outputText("\n\nA pair of suckers descend on your [nipples] once your milk lets down and set to tugging. Their insides are soft and squishy, kind of like little mouths, which serves to set you squirting even harder, feeding them heavy flows of lactic excitement. Unfortunately, your teats aren't effected by the tentacles' juices and eventually go dry. That doesn't stop them from trying to suckle though, and in time, your jugs become properly accustomed to their new duties.");
			}

			outputText("\n\nThoughts of escape float away on the tides of pleasure washing over you. Your other thoughts and worries aren't far behind either. The corruptive elements and ceaseless orgasms see to it that you don't bother trying to think or worry ever again. Luckily, the human brain is an adaptive thing, and parts that once handled things like math or reading restructure to handle the additional input from your nervous system. The longer you stay there, the better it feels.");

			outputText("\n\nYou never want to leave. In fact, you never want again.");

			outputText("\n\n<b>GAME OVER</b>");
			menu();
			goNext(9999);
		}
		
		public function fightTheGardner():void
		{
			
		}
		
	}

}