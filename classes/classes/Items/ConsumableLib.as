/**
 * Created by aimozg on 10.01.14.
 */
package classes.Items
{
	import classes.BaseContent;
	import classes.CoC;
	import classes.GlobalFlags.kGAMECLASS;
	import classes.Items.Consumables.*;
	import classes.Player;

	public final class ConsumableLib extends BaseContent
	{
		//public var consumableItems:Array = [];
		
		public static const DEFAULT_VALUE:Number = 6;

		//DEMONIC POTIONS
		//Tainted
		public const INCUBID:SimpleConsumable = mk("IncubiD","IncubiD", "an Incubi draft", curry(m.incubiDraft, true), "The cork-topped flask swishes with a slimy looking off-white fluid, purported to give incubi-like powers.  A stylized picture of a humanoid with a huge penis is etched into the glass.");
		public const S_DREAM:Consumable = new SuccubisDream();
		public const SDELITE:SimpleConsumable = mk("SDelite","S.Delite", "a bottle of 'Succubi's Delight'", curry(m.succubisDelight, true),"This precious fluid is often given to men a succubus intends to play with for a long time.");
		public const SUCMILK:SimpleConsumable = mk("SucMilk","SucMilk", "a bottle of Succubi milk", curry(m.succubiMilk, true), "This milk-bottle is filled to the brim with a creamy white milk of dubious origin.  A pink label proudly labels it as \"<i>Succubi Milk</i>\".  In small text at the bottom of the label it reads: \"<i>To bring out the succubus in YOU!</i>\"");
		//Untainted
		public const P_DRAFT:SimpleConsumable = mk("P.Draft","P.Draft", "an untainted Incubi draft", curry(m.incubiDraft, false), "The cork-topped flask swishes with a slimy looking off-white fluid, purported to give incubi-like powers.  A stylized picture of a humanoid with a huge penis is etched into the glass. Rathazul has purified this to prevent corruption upon use.", 20);
		public const P_S_MLK:SimpleConsumable = mk("P.S.Mlk","P.S.Mlk", "an untainted bottle of Succubi milk", curry(m.succubiMilk, false), "This milk-bottle is filled to the brim with a creamy white milk of dubious origin.  A pink label proudly labels it as \"<i>Succubi Milk</i>\".  In small text at the bottom of the label it reads: \"<i>To bring out the succubus in YOU!</i>\"  Purified by Rathazul to prevent corruption.", 20);
		public const PSDELIT:SimpleConsumable = mk("PSDelit","PSDelit", "an untainted bottle of \"Succubi's Delight\"", curry(m.succubisDelight, false),  "This precious fluid is often given to men a succubus intends to play with for a long time.  It has been partially purified by Rathazul to prevent corruption.", 20);
		
		//DYES
		public const AUBURND:HairDye = new HairDye("AuburnD", "Auburn");
		public const BLACK_D:HairDye = new HairDye("Black D", "Black");
		public const BLOND_D:HairDye = new HairDye("Blond D", "Blond");
		public const BLUEDYE:HairDye = new HairDye("BlueDye", "Blue");
		public const BROWN_D:HairDye = new HairDye("Brown D", "Brown");
		public const GRAYDYE:HairDye = new HairDye("GrayDye", "Gray");
		public const GREEN_D:HairDye = new HairDye("Green D", "Green");
		public const ORANGDY:HairDye = new HairDye("OrangDy", "Orange");
		public const PINKDYE:HairDye = new HairDye("PinkDye", "Pink");
		public const PURPDYE:HairDye = new HairDye("PurpDye", "Purple");
		public const RAINDYE:HairDye = new HairDye("RainDye", "Rainbow");
		public const RED_DYE:HairDye = new HairDye("Red Dye", "Red");
		public const WHITEDY:HairDye = new HairDye("WhiteDy", "White");
		public const YELLODY:HairDye = new HairDye("YelloDy", "Yellow");
		
		//SKIN OILS & BODY LOTIONS
		public const DARK_OL:SkinOil = new SkinOil("DarkOil", "Dark");
		public const EBONYOL:SkinOil = new SkinOil("EbonyOl", "Ebony");
		public const FAIR_OL:SkinOil = new SkinOil("FairOil", "Fair");
		public const LIGHTOL:SkinOil = new SkinOil("LightOl", "Light");
		public const MAHOGOL:SkinOil = new SkinOil("MahogOl", "Mahogany");
		public const OLIVEOL:SkinOil = new SkinOil("OliveOl", "Olive");
		public const RUSS_OL:SkinOil = new SkinOil("RussOil", "Russet");
		public const RED__OL:SkinOil = new SkinOil("Red Oil", "Red");
		public const ORANGOL:SkinOil = new SkinOil("OranOil", "Orange");
		public const YELLOOL:SkinOil = new SkinOil("YeloOil", "Yellow");
		public const GREENOL:SkinOil = new SkinOil("GrenOil", "Green");
		public const WHITEOL:SkinOil = new SkinOil("WhitOil", "White");
		public const BLUE_OL:SkinOil = new SkinOil("BlueOil", "Blue");
		public const BLACKOL:SkinOil = new SkinOil("BlakOil", "Black");
		public const PURPLOL:SkinOil = new SkinOil("PurpOil", "Purple");
		public const SILVROL:SkinOil = new SkinOil("SlvrOil", "Silver");
		public const YELGROL:SkinOil = new SkinOil("YlGrOil", "Yellow Green");
		public const SPRGROL:SkinOil = new SkinOil("SpGrOil", "Spring Green");
		public const CYAN_OL:SkinOil = new SkinOil("CyanOil", "Cyan");
		public const OCBLUOL:SkinOil = new SkinOil("OBluOil", "Ocean Blue");
		public const ELVIOOL:SkinOil = new SkinOil("EVioOil", "Electric Violet");
		public const MAGENOL:SkinOil = new SkinOil("MagenOl", "Magenta");
		public const DPPNKOL:SkinOil = new SkinOil("DPnkOil", "Deep Pink");
		public const PINK_OL:SkinOil = new SkinOil("PinkOil", "Pink");
		
		public const CLEARLN:BodyLotion = new BodyLotion("ClearLn", "Clear", "smooth thick creamy liquid");
		public const ROUGHLN:BodyLotion = new BodyLotion("RoughLn", "Rough", "thick abrasive cream");
		public const SEXY_LN:BodyLotion = new BodyLotion("SexyLtn", "Sexy", "pretty cream like substance");
		public const SMTH_LN:BodyLotion = new BodyLotion("SmthLtn", "Smooth", "smooth thick creamy liquid");
		
		//EGGS
		//Small
		public const BLACKEG:SimpleConsumable = mk("BlackEg","BlackEg", "a rubbery black egg", curry(m.blackRubberEgg, false), "This is an oblong egg, not much different from a chicken egg in appearance (save for the color).  Something tells you it's more than just food.");
		public const BLUEEGG:SimpleConsumable = mk("BlueEgg","BlueEgg", "a blue and white mottled egg", curry(m.blueEgg, false), "This is an oblong egg, not much different from a chicken egg in appearance (save for the color).  Something tells you it's more than just food.");
		public const BROWNEG:SimpleConsumable = mk("BrownEg","BrownEg", "a brown and white mottled egg", curry(m.brownEgg, false), "This is an oblong egg, not much different from a chicken egg in appearance (save for the color).  Something tells you it's more than just food.");
		public const PINKEGG:SimpleConsumable = mk("PinkEgg","PinkEgg", "a pink and white mottled egg", curry(m.pinkEgg, false),"This is an oblong egg, not much different from a chicken egg in appearance (save for the color).  Something tells you it's more than just food.");
		public const PURPLEG:SimpleConsumable = mk("PurplEg","PurplEg", "a purple and white mottled egg", curry(m.purpleEgg, false),"This is an oblong egg, not much different from a chicken egg in appearance (save for the color).  Something tells you it's more than just food.");
		public const WHITEEG:SimpleConsumable = mk("WhiteEg", "WhiteEg", "a milky-white egg", curry(m.whiteEgg, false), "This is an oblong egg, not much different from a chicken egg in appearance.  Something tells you it's more than just food.");
		//Large
		public const L_BLKEG:SimpleConsumable = mk("L.BlkEg","L.BlkEg", "a large rubbery black egg", curry(m.blackRubberEgg, true), "This is an oblong egg, not much different from an ostrich egg in appearance (save for the color).  Something tells you it's more than just food.  For all you know, it could turn you into rubber!");
		public const L_BLUEG:SimpleConsumable = mk("L.BluEg","L.BluEg", "a large blue and white mottled egg", curry(m.blueEgg, true),"This is an oblong egg, not much different from an ostrich egg in appearance (save for the color).  Something tells you it's more than just food.");
		public const L_BRNEG:SimpleConsumable = mk("L.BrnEg","L.BrnEg", "a large brown and white mottled egg", curry(m.brownEgg, true),"This is an oblong egg, not much different from an ostrich egg in appearance (save for the color).  Something tells you it's more than just food.");
		public const L_PNKEG:SimpleConsumable = mk("L.PnkEg","L.PnkEg", "a large pink and white mottled egg", curry(m.pinkEgg, true),"This is an oblong egg, not much different from an ostrich egg in appearance (save for the color).  Something tells you it's more than just food.");
		public const L_PRPEG:SimpleConsumable = mk("L.PrpEg","L.PrpEg", "a large purple and white mottled egg", curry(m.purpleEgg, true),"This is an oblong egg, not much different from an ostrich egg in appearance (save for the color).  Something tells you it's more than just food.");
		public const L_WHTEG:SimpleConsumable = mk("L.WhtEg","L.WhtEg", "a large white egg", curry(m.whiteEgg, true), "This is an oblong egg, not much different from an ostrich egg in appearance.  Something tells you it's more than just food.");
		//Others
		public const DRGNEGG:Consumable = new EmberEgg();
		public const NPNKEGG:SimpleConsumable = mk("NPnkEgg","NPnkEgg", "a neon pink egg", curry(m.neonPinkEgg,false), "This is an oblong egg with an unnatural neon pink coloration.  It tingles in your hand with odd energies that make you feel as if you could jump straight into the sky.");

		//FOOD & BEVERAGES
		public const BC_BEER:SimpleConsumable = mk("BC Beer", "BC Beer", "a mug of Black Cat Beer", function(player:Player):void { getGame().telAdre.niamh.blackCatBeerEffects(player) }, "A capped mug containing an alcoholic drink secreted from the breasts of Niamh.  It smells tasty.", 1);
		public const BHMTCUM:Consumable = new BehemothCum();
		public const BIMBOCH:SimpleConsumable = mk("BimboCh","BimboCh", "a bottle of bimbo champagne", curry(function(player:Player):void{getGame().telAdre.niamh.bimboChampagne(player,true,true)}), "A bottle of bimbo champagne. Drinking this might incur temporary bimbofication.", 1);
		public const C_BREAD:CumBread         = new CumBread();
		public const CCUPCAK:Consumable = new GiantChocolateCupcake();
		public const FISHFIL:Consumable = new FishFillet();
		public const FR_BEER:Consumable = new FrothyBeer();
		public const GODMEAD:Consumable = new GodMead();
		public const H_BISCU:Consumable = new HardBiscuits();
		public const IZYMILK:Consumable = new IsabellaMilk();
		public const M__MILK:Consumable = new MarbleMilk();
		public const MINOCUM:SimpleConsumable = mk("MinoCum", "MinoCum", "a sealed bottle of minotaur cum", curry(m.minotaurCum, false), "This bottle of minotaur cum looks thick and viscous.  You know it has narcotic properties, but aside from that its effects are relatively unknown.", 60);
		public const P_BREAD:SimpleConsumable = mk("P.Bread", "P.Bread", "a stale loaf of prison bread", m.prisonBread, "An impossibly hard loaf of stale bread.  Despite its age, still quite nutritious.");
		public const P_M_CUM:SimpleConsumable = mk("P.M.Cum","P.MinoCum", "a sealed bottle of purified minotaur cum", curry(m.minotaurCum, true), "This bottle of minotaur cum looks thick and viscous.  You know it has narcotic properties, but aside from that its effects are relatively unknown.  This bottle of cum has been purified to prevent corruption and addiction.", 80);
		public const P_WHSKY:PhoukaWhiskey    = new PhoukaWhiskey();
		public const PROMEAD:Consumable = new ProMead();
		public const PURPEAC:SimpleConsumable = mk("PurPeac", "PurPeac", "a pure peach", m.purityPeach, "This is a peach from Minerva's spring, yellowy-orange with red stripes all over it.", 10);
		public const SHEEPMK:Consumable = new SheepMilk();
		public const S_WATER:Consumable = new SpringWater();
		public const TRAILMX:Consumable = new TrailMix();
		public const URTACUM:SimpleConsumable = mk("UrtaCum", "UrtaCum", "a sealed bottle of Urta's cum", m.urtaCum, "This bottle of Urta's cum looks thick and viscous.  It's quite delicious.", 15);
		public const W_PDDNG:SimpleConsumable = mk("W.Pddng","W.Pudding", "a slice of winter pudding", m.winterPudding,"A slice of delicious Winter Pudding.  It smells delicious. \n\nNote: Eating this might cause antlers to grow from your head.", 35);
 
		//GROWERS/SHRINKERS
		public const REDUCTO:Consumable = new Reducto();
		public const GROPLUS:Consumable = new GroPlus();
		
		//MAGIC BOOKS
		public const B__BOOK:Consumable = new BlackSpellBook();
		public const W__BOOK:Consumable = new WhiteSpellBook();
		
		//RARE ITEMS (Permanent effects, gives perks on consumption.)
		public const BIMBOLQ:BimboLiqueur = new BimboLiqueur();
		public const BROBREW:Consumable = new BroBrew();
		public const HUMMUS2:Consumable = new SuperHummus();
		public const P_PEARL:Consumable = new PurePearl();
		
		//NON-TRANSFORMATIVE ITEMS
		public const AKBALSL:Consumable = new AkbalSaliva();
		public const C__MINT:Consumable = new Mint();
		public const CERUL_P:Consumable = new CeruleanPotion();
		public const CLOVERS:Consumable = new Clovis();
		public const COAL___:Consumable = new Coal();
		public const DEBIMBO:DeBimbo = new DeBimbo();
		public const EXTSERM:HairExtensionSerum = new HairExtensionSerum();
		public const F_DRAFT:SimpleConsumable = mk("F.Draft","FuckDraft", "a vial of roiling red fluid labeled \"Fuck Draft\"", curry(m.lustDraft, true), "This vial of red fluid bubbles constantly inside the glass, as if eager to escape.  It smells very strongly, though its odor is difficult to identify.  The word \"Fuck\" is inscribed on the side of the vial.");
		public const H_PILL:Consumable = new HealPill();
		public const HRBCNT:SimpleConsumable  = mk("HrblCnt", "HrblCnt", "a bundle of verdant green leaves", m.herbalContraceptive, "A small bundle of verdant green leaves.");
		public const ICICLE_:Consumable = new IceShard();
		public const KITGIFT:KitsuneGift		= new KitsuneGift();
		public const L_DRAFT:SimpleConsumable = mk("L.Draft","LustDraft", "a vial of roiling bubble-gum pink fluid", curry(m.lustDraft,false), "This vial of bright pink fluid bubbles constantly inside the glass, as if eager to escape.  It smells very sweet, and has \"Lust\" inscribed on the side of the vial.", 20);
		public const LACTAID:Consumable = new Lactaid();
		public const LUSTSTK:LustStick        = new LustStick();
		public const MILKPTN:Consumable = new MilkPotion();
		public const NUMBOIL:Consumable = new NumbingOil();
		public const NUMBROX:Consumable = new NumbRocks();
		public const OVIELIX:OvipositionElixir = new OvipositionElixir();
		public const OVI_MAX:OvipositionMax = new OvipositionMax();
		public const PEPPWHT:SimpleConsumable = mk("PeppWht","PeppWht", "a vial of peppermint white", function(player:Player):void{getGame().xmas.xmasMisc.peppermintWhite(player)}, "This tightly corked glass bottle gives of a pepperminty smell and reminds you of the winter holidays.  How odd.", 120);
		public const PPHILTR:Consumable = new PurityPhilter();
		public const PRNPKR :SimpleConsumable  = mk("PrnsPkr", "P.Pucker", "a vial of pinkish fluid", m.princessPucker, "A vial filled with a viscous pink liquid. A label reads \"Princess Pucker\".");
		public const SENSDRF:Consumable = new SensitivityDraft();
		public const SMART_T:Consumable = new ScholarsTea();
		public const VITAL_T:Consumable = new VitalityTincture();
		public const W_STICK:WingStick = new WingStick();
		
		//TRANSFORMATIVE ITEMS
		public const B_GOSSR:SimpleConsumable = mk("B.Gossr","B.Gossr", "a bundle of black, gossamer webbing", curry(m.sweetGossamer, 1), "These strands of gooey black gossamer seem quite unlike the normal silk that driders produce.  It smells sweet and is clearly edible, but who knows what it might do to you?");
		public const BEEHONY:BeeHoney         = new BeeHoney(false, false);
		public const BLACKPP:SimpleConsumable = mk("BlackPp","BlackPp", "a solid black canine pepper", curry(m.caninePepper, 3), "This solid black canine pepper is smooth and shiny, but something about it doesn't seem quite right...", 10);
		public const BOARTRU:SimpleConsumable = mk("BoarTru", "BoarTruffle", "a boar truffle", curry(m.pigTruffle, true), "It’s clear where the pigtail truffle gets its name.  A small, curly sprig resembling a pig’s tail can be seen jutting out of it. Now that it’s been enhanced by Lumi, it’s larger and fuzzier than it was before, almost like a peach.");
		public const BULBYPP:SimpleConsumable = mk("BulbyPp","BulbyPp", "a bulbous pepper", curry(m.caninePepper, 5), "This bulbous pepper has a slightly different shape than the other canine peppers, with two large orb-like protrusions at the base.", 10);
		public const CANINEP:SimpleConsumable = mk("CanineP","CanineP", "a Canine pepper", curry(m.caninePepper,0), "The pepper is shiny and red, bulbous at the base but long and narrow at the tip.  It smells spicy.");
		public const DBLPEPP:SimpleConsumable = mk("DblPepp","DblPepp", "a double canine pepper", curry(m.caninePepper, 2), "This canine pepper is actually two that have grown together due to some freak coincidence.", 10);
		public const DRAKHRT:EmberTFs         = new EmberTFs(1);
		public const DRYTENT:Consumable = new ShriveledTentacle();
		public const ECTOPLS:Consumable = new Ectoplasm();
		public const EMBERBL:EmberTFs         = new EmberTFs();
		public const EQUINUM:Consumable = new Equinum();
		public const FOXBERY:SimpleConsumable = mk("FoxBery","Fox Berry", "a fox berry", curry(m.foxTF,false), "This large orange berry is heavy in your hands.  It may have gotten its name from its bright orange coloration.  You're certain it is no mere fruit.");
		public const FRRTFRT:SimpleConsumable = mk("Frrtfrt","FerretFrt","a ferret fruit", m.ferretFruit, "This fruit is curved oddly, just like the tree it came from.  The skin is fuzzy and brown, like the skin of a peach.");
		public const FOXJEWL:SimpleConsumable = mk("FoxJewl", "Fox Jewel", "a fox jewel", curry(m.foxJewel, false), "A shining teardrop-shaped jewel.  An eerie blue flame dances beneath the surface.");
		public const GLDRIND:GoldenRind       = new GoldenRind();
		public const GLDSEED:SimpleConsumable = mk("GldSeed","GoldenSeed", "a golden seed", curry(m.goldenSeed,0),"This seed looks and smells absolutely delicious.  Though it has an unusual color, the harpies prize these nuts as delicious treats.  Eating one might induce some physical transformations.");
		public const GOB_ALE:Consumable = new GoblinAle();
		public const HUMMUS_:Consumable = new RegularHummus();
		public const IMPFOOD:Consumable = new ImpFood();
		public const KANGAFT:SimpleConsumable = mk("KangaFt","KangaFruit", "a piece of kanga fruit", curry(m.kangaFruit,0),"A yellow, fibrous, tubular pod.  A split in the end reveals many lumpy, small seeds inside.  The smell of mild fermentation wafts from them.");
		public const KNOTTYP:SimpleConsumable = mk("KnottyP","KnottyP", "a knotty canine pepper", curry(m.caninePepper, 4), "This knotted pepper is very swollen, with a massive, distended knot near the base.", 10);
		public const LABOVA_:SimpleConsumable = mk("LaBova ","La Bova", "a bottle containing a misty fluid labeled \"LaBova\"", curry(m.laBova,true,false), "A bottle containing a misty fluid with a grainy texture, it has a long neck and a ball-like base.  The label has a stylized picture of a well endowed cowgirl nursing two guys while they jerk themselves off.");
		public const LARGEPP:SimpleConsumable = mk("LargePp","LargePp", "an overly large canine pepper", curry(m.caninePepper, 1), "This large canine pepper is much bigger than any normal peppers you've seen.", 10);
		public const MAGSEED:SimpleConsumable = mk("MagSeed","MagSeed", "a magically-enhanced golden seed", curry(m.goldenSeed, 1),"This seed glows with power.  It's been enhanced by Lumi to unlock its full potential, allowing it to transform you more easily.");
		public const MGHTYVG:SimpleConsumable = mk("MghtyVg","MghtyVg", "a mightily enhanced piece of kanga fruit", curry(m.kangaFruit, 1),"A yellow, fibrous, tubular pod.  A split in the end reveals many lumpy, small seeds inside.  The smell of mild fermentation wafts from them.  It glows slightly from Lumi's enhancements.");
		public const MOUSECO:SimpleConsumable = mk("MouseCo","MouseCo", "a handful of mouse cocoa", m.mouseCocoa, "A handful of rare aromatic beans with sharp creases in the middle, making them look like small mouse ears.  Allegedly very popular and plentiful before the mice-folk were wiped out.");
		public const MINOBLO:SimpleConsumable = mk("MinoBlo","MinoBlo", "a vial of Minotaur blood", m.minotaurBlood, "You've got a scratched up looking vial full of bright red minotaur blood.  Any time you move it around it seems to froth up, as if eager to escape.");
		public const MYSTJWL:SimpleConsumable = mk("MystJwl","MystJwl", "a mystic jewel", curry(m.foxJewel, true), "The flames within this jewel glow brighter than before, and have taken on a sinister purple hue.  It has been enhanced to increase its potency, allowing it to transform you more easily, but may have odd side-effects...", 20);
		public const P_LBOVA:SimpleConsumable = mk("P.LBova", "P.LBova", "a bottle containing a white fluid labeled \"Pure LaBova\"", curry(m.laBova, false, false), "A bottle containing a misty fluid with a grainy texture; it has a long neck and a ball-like base.  The label has a stylized picture of a well-endowed cow-girl nursing two guys while they jerk themselves off. It has been purified by Rathazul.");
		public const PIGTRUF:SimpleConsumable = mk("PigTruf", "PigTruffle", "a pigtail truffle", curry(m.pigTruffle, false), "It’s clear where this fungus gets its name.  A small, curly sprig resembling a pig’s tail can be seen jutting out of it.");
		public const PRFRUIT:SimpleConsumable = mk("PrFruit","PrFruit", "a purple fruit", m.purpleFruitEssrayle, "This sweet-smelling produce looks like an eggplant, but feels almost squishy, and rubbery to the touch. Holding it to your ear, you think you can hear some fluid sloshing around inside.");
		public const PROBOVA:SimpleConsumable = mk("ProBova","ProBova", "a bottle containing a misty fluid labeled \"ProBova\"", curry(m.laBova, true, true), "This cloudy potion has been enhanced by the alchemist Lumi to imbue its drinker with cow-like attributes.");
		public const PURHONY:BeeHoney			= new BeeHoney(true, false);
		public const REPTLUM:Consumable = new Reptilum();
		public const RINGFIG:SimpleConsumable = mk("RingFig","RingFig","a ringtail fig", m.ringtailFig,"A dried fig with two lobes and thin dark rings just below its stem.  The skin is wrinkly and it looks vaguely like a bulging scrotum.");
		public const RIZZART:RizzaRoot			= new RizzaRoot();
		public const S_GOSSR:SimpleConsumable = mk("S.Gossr","S.Gossr", "a bundle of pink, gossamer webbing", curry(m.sweetGossamer,0), "These strands of gooey pink gossamer seem quite unlike the normal silk that spider-morphs produce.  It smells sweet and is clearly edible, but who knows what it might do to you?");
		public const SALAMFW:Consumable = new Salamanderfirewater();
		public const SATYR_W:SatyrWine        = new SatyrWine();
		public const SHARK_T:SimpleConsumable = mk("Shark.T","Shark.T", "a sharp shark tooth", curry(m.sharkTooth,0), "A glinting white tooth, very sharp and intimidating.");
		public const SNAKOIL:Consumable = new SnakeOil();
		public const SPHONEY:Consumable		  = new BeeHoney(false, true);
		public const TAURICO:SimpleConsumable = mk("Taurico","Taurinum", "a vial of Taurinum", m.taurinum, "This is a long flared vial with a small label that reads, \"<i>Taurinum</i>\".  It is likely this potion is tied to centaurs in some way.");
		public const TRAPOIL:SimpleConsumable = mk("TrapOil","TrapOil", "a vial of trap oil", m.trapOil, "A round, opaque glass vial filled with a clear, viscous fluid.  It has a symbol inscribed on it, a circle with a cross and arrow pointing out of it in opposite directions.  It looks and smells entirely innocuous.");
		public const TSCROLL:Consumable = new TatteredScroll();
		public const TSTOOTH:SimpleConsumable = mk("TSTooth","TSTooth", "a glowing tiger shark tooth", curry(m.sharkTooth, 1),"This looks like a normal shark tooth, though with an odd purple glow.");
		public const VIXVIGR:SimpleConsumable = mk("VixVigr","VixVigr", "a bottle labelled \"Vixen's Vigor\"", curry(m.foxTF, true), "This small medicine bottle contains something called \"Vixen's Vigor\", supposedly distilled from common fox-berries.  It is supposed to be a great deal more potent, and a small warning label warns of \"extra boobs\", whatever that means.", 30);
		public const W_FRUIT:Consumable = new WhiskerFruit();
		public const WETCLTH:Consumable = new WetCloth();
		public const WOLF_PP:Consumable = new WolfPepper();

		public const LARGE_EGGS:Array = [L_BLKEG,L_BLUEG,L_BRNEG,L_PNKEG,L_PRPEG,L_WHTEG];
		public const SMALL_EGGS:Array = [BLACKEG,BLUEEGG,BROWNEG,PINKEGG,PURPLEG,WHITEEG];
		private function get m():Mutations { return Mutations.init(); }

		/**
		 * A handy function to create SimpleConsumables (useable by any player, effect is a function accepting player:Player,
		 * shortName, longName, description and value are const)
		 * @param id id. Must be String 7 chars long
		 * @param shortName shortName, null to use id as shortName
		 * @param longName null to use shortName as longName
		 * @param effect function(player:Player) called to produce effect
		 * @param description null to use longName as description
		 */
		private static function mk(id:String, shortName:String, longName:String, effect:Function, description:String, value:Number = DEFAULT_VALUE):SimpleConsumable {
			return new SimpleConsumable(id, shortName, longName, effect, value, description);
		}
		public function ConsumableLib() {}
	}
}
