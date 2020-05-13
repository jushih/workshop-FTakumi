--[[
	--- This is Wilson's speech file for Don't Starve Together ---
	Write your character's lines here.
	If you want to use another speech file as a base, or use a more up-to-date version, get them from data\scripts\
	
	If you want to use quotation marks in a quote, put a \ before it.
	Example:
	"Like \"this\"."
]]
return {
	ACTIONFAIL =
	{
		SHAVE =
		{
			AWAKEBEEFALO = "I'm not going to try that while he's awake.",
			GENERIC = "I can't shave that!",
			NOBITS = "There's nothing left to shave!",
		},
		STORE =
		{
			GENERIC = "It's full.",
			NOTALLOWED = "That can't go in there.",
			INUSE = "Hurry up already.",
		},
		RUMMAGE =
		{	
			GENERIC = "I can't do that.",
			INUSE = "Hurry up already.",	
		},
        COOK =
        {
            GENERIC = "I can't do that.",
            INUSE = "Are you done yet?",
            TOOFAR = "It's too far away!",
        },
        GIVE =
        {
            DEAD = "They won't need it anymore.",
            SLEEPING = "Out cold. Fine, I'll wait.",
            BUSY = "Guess they don't care.",
        },
        GIVETOPLAYER = 
        {
        	FULL = "Empty your pockets first!",
            DEAD = "They won't need it anymore.",
            SLEEPING = "Out cold. Fine, I'll wait.",
            BUSY = "Guess they don't care.",
    	},
    	GIVEALLTOPLAYER = 
        {
        	FULL = "Empty your pockets first!",
            DEAD = "They won't need it anymore.",
            SLEEPING = "Out cold. Fine, I'll wait.",
            BUSY = "Guess they don't care.",
    	},
        WRITE =
        {
            GENERIC = "I can't do that.",
            INUSE = "There's only room for one scribbler.",
        },
        CHANGEIN =
        {
            GENERIC = "I can't do that.",
            BURNING = "It's too dangerous right now!",
            INUSE = "It can only handle one style change at a time.",
        },
        ATTUNE =
        {
            NOHEALTH = "I don't feel well.",
        },
	},
	ACTIONFAIL_GENERIC = "I can't do that.",
	ANNOUNCE_ADVENTUREFAIL = "That was a disaster.",
	ANNOUNCE_BEES = "Not bees ugh!!!!",
	ANNOUNCE_BOOMERANG = "Ow! Catch it next time!",
	ANNOUNCE_CHARLIE = "What was that?!",
	ANNOUNCE_CHARLIE_ATTACK = "What bit me?!",
	ANNOUNCE_COLD = "It's freezing!",
	ANNOUNCE_HOT = "Need... ice... or... shade!",
	ANNOUNCE_CRAFTING_FAIL = "I'm missing ingredients.",
	ANNOUNCE_DEERCLOPS = "Something's coming...!",
	ANNOUNCE_DUSK = "It's getting dark.",
	ANNOUNCE_EAT =
	{
		GENERIC = "Not bad.",
		PAINFUL = "I shouldn't have eaten that.",
		SPOILED = "Disgusting.",
		STALE = "Ugh. If I have to.",
		INVALID = "I can't eat anymore!",
		YUCKY = "Don't even think about it.",
	},
	ANNOUNCE_ENTER_DARK = "It's so dark.",
	ANNOUNCE_ENTER_LIGHT = "Finally I can see.",
	ANNOUNCE_FREEDOM = "Thank gods that's over with.",
	ANNOUNCE_HIGHRESEARCH = "This was nothing.", 
	ANNOUNCE_HOUNDS = "Did you hear that?",
	ANNOUNCE_WORMS = "Did you feel that?",
	ANNOUNCE_HUNGRY = "I could use some miso soup.",
	ANNOUNCE_HUNT_BEAST_NEARBY = "I'm on the right trail.",
	ANNOUNCE_HUNT_LOST_TRAIL = "Dang I lost it!",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "It's too wet to hold a footprint.",
	ANNOUNCE_INV_FULL = "I can't carry anything else!",
	ANNOUNCE_KNOCKEDOUT = "Ugh, my head!",
	ANNOUNCE_LOWRESEARCH = "That was a waste of time.",
	ANNOUNCE_MOSQUITOS = "Get away from me!",
    ANNOUNCE_NOWARDROBEONFIRE = "It's too dangerous right now!",
    ANNOUNCE_NODANGERGIFT = "It's too dangerous right now!",
	ANNOUNCE_NODANGERSLEEP = "It's too dangerous right now!",
	ANNOUNCE_NODAYSLEEP = "It's too bright out.",
	ANNOUNCE_NODAYSLEEP_CAVE = "I can still keep going!",
	ANNOUNCE_NOHUNGERSLEEP = "I can't sleep on this empty stomach.",
	ANNOUNCE_NOSLEEPONFIRE = "How can anyone sleep there?!",
	ANNOUNCE_NODANGERSIESTA = "I can't relax right now!",
	ANNOUNCE_NONIGHTSIESTA = "Night is for sleeping, not taking siestas.",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "I'm not going to be able to relax down here.",
	ANNOUNCE_NOHUNGERSIESTA = "I'm too hungry for a siesta!",
	ANNOUNCE_NODANGERAFK = "I'm not running away!",
	ANNOUNCE_NO_TRAP = "Well, that was easy.",
	ANNOUNCE_PECKED = "I'll shoot you down!",
	ANNOUNCE_QUAKE = "That doesn't sound good.",
	ANNOUNCE_RESEARCH = "That was interesting.",
	ANNOUNCE_SHELTER = "It's dry here, I'll stay here for a bit.",
	ANNOUNCE_THORNS = "Ow!",
	ANNOUNCE_BURNT = "Yikes! That was hot!",
	ANNOUNCE_TORCH_OUT = "My light!",
	ANNOUNCE_FAN_OUT = "The fan's stopped.",
    ANNOUNCE_COMPASS_OUT = "This compass doesn't point anymore.",
	ANNOUNCE_TRAP_WENT_OFF = "My bad.",
	ANNOUNCE_UNIMPLEMENTED = "OW! I don't think it's ready yet.",
	ANNOUNCE_WORMHOLE = "Never again.",
	ANNOUNCE_CANFIX = "\nI think I can fix this!",
	ANNOUNCE_ACCOMPLISHMENT = "I feel so accomplished!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "If only my siblings could see me now...",	
	ANNOUNCE_INSUFFICIENTFERTILIZER = "Not enough fertilzer.",
	ANNOUNCE_TOOL_SLIP = "Wow that tool is slippery!",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "That was close, almost got hit by lightning.",

	ANNOUNCE_DAMP = "I'm getting wet.",
	ANNOUNCE_WET = "Ugh, I need a change of clothes.",
	ANNOUNCE_WETTER = "I need to dry off",
	ANNOUNCE_SOAKED = "I can't take it anymore!",
	
	ANNOUNCE_BECOMEGHOST = "This isn't over...",
	ANNOUNCE_GHOSTDRAIN = "WHEN DID THAT GET HERE?! GET IT AWAY!",

	DESCRIBE_SAMECHARACTER = "Imposter!",
	
	BATTLECRY =
	{
		GENERIC = "I'll shoot you down!",
		PIG = "Target practice.",
		PREY = "Die already!",
		SPIDER = "I'll shoot you down!",
		SPIDER_WARRIOR = "Just a bigger target!",
	},
	COMBAT_QUIT =
	{
		GENERIC = "I sure showed him!",
		PIG = "I'll let him go. This time.",
		PREY = "He's too fast!",
		SPIDER = "This isn't over!",
		SPIDER_WARRIOR = "I'll kill you next time!",
	},
	DESCRIBE =
	{

		BERNIE_INACTIVE =
		{
			BROKEN = "It finally fell apart.",
			GENERIC = "It's all scorched.",
		},
		BERNIE_ACTIVE = "Did that bear just move?!",
		

        PLAYER =
        {
            GENERIC = "It's %s!",
            ATTACKER = "That %s looks shifty...",
            MURDERER = "Traitor! You'll pay for your betrayal!!",
            REVIVER = "Thanks... but I didn't ask for your help.",
            GHOST = "%s could use a heart.",
        },
		WILSON = 
		{
			GENERIC = "It's Wilson!",
			ATTACKER = "That Wilson looks shifty...",
			MURDERER = "Traitor! You'll pay for your betrayal!!",
			REVIVER = "Thanks... but I didn't ask for your help.",
			GHOST = "Wilson could use a heart.",
		},
		WOLFGANG = 
		{
			GENERIC = "It's Wolfgang!",
			ATTACKER = "That Wolfgang looks shifty...",
			MURDERER = "Traitor! You'll pay for your betrayal!!",
			REVIVER = "Thanks... but I didn't ask for your help.",
			GHOST = "Wolfgang could use a heart.",
		},
		WAXWELL = 
		{
			GENERIC = "It's Maxwell!",
			ATTACKER = "That Maxwell looks shifty...",
			MURDERER = "Traitor! You'll pay for your betrayal!!",
			REVIVER = "Thanks... but I didn't ask for your help.",
			GHOST = "Maxwell could use a heart.",
		},
		WX78 = 
		{
			GENERIC = "It's WX-78!",
			ATTACKER = "That WX-78 looks shifty...",
			MURDERER = "Traitor! You'll pay for your betrayal!!",
			REVIVER = "Thanks... but I didn't ask for your help.",
			GHOST = "WX-78 could use a heart.",
		},
		WILLOW = 
		{
			GENERIC = "It's Willow!",
			ATTACKER = "That Willow looks shifty...",
			MURDERER = "Traitor! You'll pay for your betrayal!!",
			REVIVER = "Thanks... but I didn't ask for your help.",
			GHOST = "Willow could use a heart.",
		},
		WENDY = 
		{
			GENERIC = "It's Wendy!",
			ATTACKER = "That Wendy looks shifty...",
			MURDERER = "Traitor! You'll pay for your betrayal!!",
			REVIVER = "Thanks... but I didn't ask for your help.",
			GHOST = "Wendy could use a heart.",
		},
		WOODIE = 
		{
			GENERIC = "It's Woodie!",
			ATTACKER = "That Woodie looks shifty...",
			MURDERER = "Traitor! You'll pay for your betrayal!!",
			REVIVER = "Thanks... but I didn't ask for your help.",
			GHOST = "Woodie could use a heart.",
		},
		WICKERBOTTOM = 
		{
			GENERIC = "It's Wickerbottom!",
			ATTACKER = "That Wickerbottom looks shifty...",
			MURDERER = "Traitor! You'll pay for your betrayal!!",
			REVIVER = "Thanks... but I didn't ask for your help.",
			GHOST = "Wickerbottom could use a heart.",
		},
		WES = 
		{
			GENERIC = "It's Wes!",
			ATTACKER = "That Wes looks shifty...",
			MURDERER = "Traitor! You'll pay for your betrayal!!",
			REVIVER = "Thanks... but I didn't ask for your help.",
			GHOST = "Wes could use a heart.",
		},
		MULTIPLAYER_PORTAL = "It's falling apart, will it hold up?",
        MIGRATION_PORTAL = {
            GENERIC = "This could take me home.",
            OPEN = "If I step through, will I still be me?",
            FULL = "Let me in!",
        },
		GLOMMER = "It looks suspicious.",
		GLOMMERFLOWER = 
		{
			GENERIC = "The petals shimmer in the light.",
			DEAD = "The petals droop and shimmer in the light.",
		},
		GLOMMERWINGS = "What do I do with this?",
		GLOMMERFUEL = "Disgusting.",
		BELL = "A bell.",
		STATUEGLOMMER = 
		{	
			GENERIC = "I'm not sure what that's supposed to be.",
			EMPTY = "Not my fault.",
		},

		WEBBERSKULL = "Poor little guy. He deserves a proper funeral.",
		WORMLIGHT = "Seems edible.",
		WORMLIGHT_LESSER = "Kinda wrinkled.",
		WORM =
		{
		    PLANT = "Seems safe to me.",
		    DIRT = "Just looks like a pile of dirt.",
		    WORM = "It's a worm!",
		},
        WORMLIGHT_PLANT = "Seems safe to me.",
		MOLE =
		{
			HELD = "Got you.",
			UNDERGROUND = "Something's under there, searching for minerals.",
			ABOVEGROUND = "Just a mole.",
		},
		MOLEHILL = "A molehill.",
		MOLEHAT = "Do I have to wear this?",

		EEL = "This will make a delicious meal.",
		EEL_COOKED = "Smells great!",
		UNAGI = "I cooked it myself!",
		EYETURRET = "I hope it doesn't turn on me.",
		EYETURRET_ITEM = "I think it's sleeping.",
		MINOTAURHORN = "Spoils from my hunt.",
		MINOTAURCHEST = "Who knows what's inside.",
		THULECITE_PIECES = "It's some smaller chunks of Thulecite.",
		POND_ALGAE = "Some algae by a pond.",
		GREENSTAFF = "This will come in handy.",
		POTTEDFERN = "A fern in a pot.",

		THULECITE = "I wonder where this is from?",
		ARMORRUINS = "It's oddly light.",
		RUINS_BAT = "It has quite a heft to it.",
		RUINSHAT = "Fit for a king. Not that I'll ever be one.",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "All is well.",
            WARN = "Getting pretty magical around here.",
            WAXING = "I think it's becoming more concentrated!",
            STEADY = "It seems to be staying steady.",
            WANING = "Feels like it's receding.",
            DAWN = "The nightmare is almost gone!",
            NOMAGIC = "There's no magic around here.",
		},
		BISHOP_NIGHTMARE = "It's falling apart!",
		ROOK_NIGHTMARE = "Terrifying!",
		KNIGHT_NIGHTMARE = "It's a knightmare!",
		MINOTAUR = "That thing doesn't look happy.",
		SPIDER_DROPPER = "Note to self: Don't look up.",
		NIGHTMARELIGHT = "I wonder what function this served.",
		NIGHTSTICK = "It's electric!",
		GREENGEM = "It's a green gem.",
		RELIC = "Ancient household goods.",
		RUINS_RUBBLE = "This can be fixed.",
		MULTITOOL_AXE_PICKAXE = "It's brilliant!",
		ORANGESTAFF = "This beats walking.",
		YELLOWAMULET = "Warm to the touch.",
		GREENAMULET = "Just when I thought I couldn't get any better.",
		SLURPERPELT = "Doesn't look much different dead.",	

		SLURPER = "It's so hairy!",
		SLURPER_PELT = "Doesn't look much different dead.",
		ARMORSLURPER = "A soggy, sustaining, succulent suit.",
		ORANGEAMULET = "Teleportation can be so useful.",
		YELLOWSTAFF = "I put a gem on a stick.",
		YELLOWGEM = "This gem is yellow.",
		ORANGEGEM = "It's an orange gem.",
		TELEBASE = 
		{
			VALID = "It's ready to go.",
			GEMS = "It needs more purple gems.",
		},
		GEMSOCKET = 
		{
			VALID = "Looks ready.",
			GEMS = "It needs a gem.",
		},
		STAFFLIGHT = "That seems really dangerous.",
	
        ANCIENT_ALTAR = "An ancient and mysterious structure.",

        ANCIENT_ALTAR_BROKEN = "This seems to be broken.",

        ANCIENT_STATUE = "It seems to throb out of tune with the world.",

        LICHEN = "Only a cyanobacteria could grow in this light.",
		CUTLICHEN = "Nutritious, but it won't last long.",

		CAVE_BANANA = "It's mushy.",
		CAVE_BANANA_COOKED = "Yum!",
		CAVE_BANANA_TREE = "How does it grow down here?",
		ROCKY = "It's claws are sharp.",
		
		COMPASS =
		{
			GENERIC="Which way am I facing?",
			N = "North",
			S = "South",
			E = "East",
			W = "West",
			NE = "Northeast",
			SE = "Southeast",
			NW = "Northwest",
			SW = "Southwest",
		},

		NIGHTMARE_TIMEPIECE =	-- Duplicated
		{
			WAXING = "I think it's becoming more concentrated!",
			STEADY = "It seems to be staying steady.",
			WANING = "Feels like it's receding.",
			DAWN = "The nightmare is almost gone!",
			WARN = "Getting pretty magical around here.",
			CALM = "All is well.",
			NOMAGIC = "There's no magic around here.",
		},

		HOUNDSTOOTH="It's sharp.",
		ARMORSNURTLESHELL="It sticks to my back.",
		BAT="I'll shoot you down!",
		BATBAT = "I still prefer my bow.", 
		BATWING="I hate these things, even when they're dead.",
		BATWING_COOKED="At least it's not coming back.",
        BATCAVE = "I don't want to wake them.",
		BEDROLL_FURRY="It's so warm and comfy.",
		BUNNYMAN="I am filled with an irresitable urge to cook...rabbit.",
		FLOWER_CAVE="A glowing flower.",
		FLOWER_CAVE_DOUBLE="A glowing flower.",
		FLOWER_CAVE_TRIPLE="A glowing flower.",
		GUANO="Another flavour of poop.",
		LANTERN="A more civilized light.",
		LIGHTBULB="It's strangely tasty looking.",
		MANRABBIT_TAIL="What does thhis do?",
		MUSHTREE_TALL = {
            GENERIC = "That mushroom got too big for its own good.",
            BLOOM = "You can't tell by looking, but it's smelly.",
        },
		MUSHTREE_MEDIUM = {
            GENERIC = "There aren't any plants like this at home.",
            BLOOM = "I'm mildly offended by this.",
        },
		MUSHTREE_SMALL = {
            GENERIC = "A magic mushroom?",
            BLOOM = "It's trying to reproduce.",
        },
        MUSHTREE_TALL_WEBBED = "The spiders thought this one was important.",
        SPORE_TALL = "It's just drifting around.",
        SPORE_MEDIUM = "It's just drifting around.",
        SPORE_SMALL = "It's just drifting around.",
        SPORE_TALL_INV = "I'll keep a little light in my pocket.",
        SPORE_MEDIUM_INV = "I'll keep a little light in my pocket.",
        SPORE_SMALL_INV = "I'll keep a little light in my pocket.",
		RABBITHOUSE=
		{
			GENERIC = "That's not a real carrot.",
			BURNT = "That's not a real roasted carrot.",
		},
		SLURTLE="Ew. Just ew.",
		SLURTLE_SHELLPIECES="A puzzle with no solution.",
		SLURTLEHAT="I hope it doesn't mess up my hair.",
		SLURTLEHOLE="A den of 'ew'.",
		SLURTLESLIME="If it wasn't useful, I wouldn't touch it.",
		SNURTLE="He's less gross, but still gross.",
		SPIDER_HIDER="Gah! More spiders!",
		SPIDER_SPITTER="I hate spiders!",
		SPIDERHOLE="It's encrusted with old webbing.",
		STALAGMITE="Looks like a rock to me.",
		STALAGMITE_FULL="Looks like a rock to me.",
		STALAGMITE_LOW="Looks like a rock to me.",
		STALAGMITE_MED="Looks like a rock to me.",
		STALAGMITE_TALL="Rocks, rocks, rocks, rocks...",
		STALAGMITE_TALL_FULL="Rocks, rocks, rocks, rocks...",
		STALAGMITE_TALL_LOW="Rocks, rocks, rocks, rocks...",
		STALAGMITE_TALL_MED="Rocks, rocks, rocks, rocks...",

		TURF_CARPETFLOOR = "Yet another ground type.",
		TURF_CHECKERFLOOR = "Yet another ground type.",
		TURF_DIRT = "Yet another ground type.",
		TURF_FOREST = "Yet another ground type.",
		TURF_GRASS = "Yet another ground type.",
		TURF_MARSH = "Yet another ground type.",
		TURF_ROAD = "Yet another ground type.",
		TURF_ROCKY = "Yet another ground type.",
		TURF_SAVANNA = "Yet another ground type.",
		TURF_WOODFLOOR = "Yet another ground type.",

		TURF_CAVE="Yet another ground type.",
		TURF_FUNGUS="Yet another ground type.",
		TURF_SINKHOLE="Yet another ground type.",
		TURF_UNDERROCK="Yet another ground type.",
		TURF_MUD="Yet another ground type.",

		TURF_DECIDUOUS = "Yet another ground type.",
		TURF_SANDY = "Yet another ground type.",
		TURF_BADLANDS = "Yet another ground type.",

		POWCAKE = "I don't know if I'm hungry enough.",
        CAVE_ENTRANCE = "I wonder if I could move that rock.",
        CAVE_ENTRANCE_RUINS = "It's probably hiding something.",
        CAVE_ENTRANCE_OPEN = {
            GENERIC = "The earth itself rejects me!",
            OPEN = "I bet there's all sorts of things to discover down there.",
            FULL = "I'll have to wait until someone leaves.",
        },
        CAVE_EXIT = {
            GENERIC = "I'll just stay down here, I suppose.",
            OPEN = "I've had enough discovery for now.",
            FULL = "The surface is too crowded!",
        },
		MAXWELLPHONOGRAPH = "So that's where the music was coming from.",
		BOOMERANG = "I still prefer my bow.",
		PIGGUARD = "He doesn't look as friendly as the others.",
		ABIGAIL = "What is that?!",
		ADVENTURE_PORTAL = "I'm not sure I want to fall for that a second time.",
		AMULET = "I feel calmer when I'm wearing it.",
		ANIMAL_TRACK = "Tracks left by an animal.",
		ARMORGRASS = "I hope there are no bugs in this.",
		ARMORMARBLE = "This looks really heavy.",
		ARMORWOOD = "I can take a few hits with this.",
		ARMOR_SANITY = "Wearing this makes me feel calm.",
		ASH =
		{
			GENERIC = "All that's left after fire has done its job.",
			REMAINS_GLOMMERFLOWER = "The flower burned up when I teleported!",
			REMAINS_EYE_BONE = "The eyebone burned up when I teleported!",
			REMAINS_THINGIE = "This was once some thing before it got burned...",
		},
		AXE = "I'm more used to the bow",
		BABYBEEFALO = "...They're kinda cute.",
		BACKPACK = "It's for me to put my stuff in.",
		BACONEGGS = "I cooked it myself.",
		BANDAGE = "Seems sterile enough.",
		BASALT = "That's too strong to break through!",
		BATBAT = "I bet I could fly if I held two of these.",	-- Duplicated
		BEARDHAIR = "A beard.",
		BEARGER = "I found a big game.",
		BEARGERVEST = "The hunt's on!",
		ICEPACK = "The fur keeps the temperature inside stable.",
		BEARGER_FUR = "A mat of thick fur.",
		BEDROLL_STRAW = "It smells.",
		BEE =
		{
			GENERIC = "Bees.",
			HELD = "Careful!",
		},
		BEEBOX =
		{
			READY = "It's full of honey.",
			FULLHONEY = "It's full of honey.",
			GENERIC = "Bees.",
			NOHONEY = "It's empty.",
			SOMEHONEY = "I should wait a bit.",
			BURNT = "How did it get burned?!!",
		},
		BEEFALO =
		{
			FOLLOWER = "He's coming along peacefully.",
			GENERIC = "It's a beefalo.",
			NAKED = "Sorry buddy.",
			SLEEPING = "Thank gods they're heavy sleepers.",
		},
		BEEFALOHAT = "It's warm.",
		BEEFALOWOOL = "Beefalo wool.",
		BEEHAT = "This should keep me protected.",
		BEEHIVE = "It's buzzing with activity.",
		BEEMINE = "It buzzes when I shake it.",
		BEEMINE_MAXWELL = "I wouldn't want to get caught in it.",
		BERRIES = "Red berries taste the best.",
		BERRIES_COOKED = "I don't think heat improved them.",
		BERRYBUSH =
		{
			BARREN = "I think it needs to be fertilized.",
			WITHERED = "Nothing will grow in this heat.",
			GENERIC = "Red berries taste the best.",
			PICKED = "Maybe they'll grow back?",
		},
		BIGFOOT = "That is one biiig foot.",
		BIRDCAGE =
		{
			GENERIC = "I should put a bird in it.",
			OCCUPIED = "It's got a bird in it.",
			SLEEPING = "He's asleep.",
			HUNGRY = "He's looking a bit peckish.",
			STARVING = "Did I forget to feed you?",
			DEAD = "He passed away.",
			SKELETON = "That bird is long gone.",
		},
		BIRDTRAP = "Traps are essential for hunting",
		BIRD_EGG = "A small, normal egg.",
		BIRD_EGG_COOKED = "Sunny side up.",
		BISHOP = "Back off!",
		BLOWDART_FIRE = "This seems fundamentally unsafe.",
		BLOWDART_SLEEP = "Just don't breathe in.",
		BLOWDART_PIPE = "I prefer the bow.",
		BLUEAMULET = "Cool to the touch.",
		BLUEGEM = "It sparkles with cold energy.",
		BLUEPRINT = "Blueprints for something.",
		BELL_BLUEPRINT = "Blueprints for a bell.",
		BLUE_CAP = "It's weird and gooey.",
		BLUE_CAP_COOKED = "It's different now...",
		BLUE_MUSHROOM =
		{
			GENERIC = "It's a mushroom.",
			INGROUND = "I can't pick it like this.",
			PICKED = "I wonder if it will grow back?",
		},
		BOARDS = "Boards.",
		BOAT = "Is that how I got here?",
		BONESHARD = "Bits of bone.",
		BONESTEW = "I cooked it myself!",
		BUGNET = "For catching bugs.",
		BUSHHAT = "It's kind of scratchy.",
		BUTTER = "Need something to go with it",
		BUTTERFLY =
		{
			GENERIC = "A butterfly.",
			HELD = "Now I have you!",
		},
		BUTTERFLYMUFFIN = "I cooked it myself!",
		BUTTERFLYWINGS = "Wings from a butterfly.",
		BUZZARD = "More target practice!",
		CACTUS = 
		{
			GENERIC = "Sharp but delicious.", 
			PICKED = "Deflated, but still spiny.",
		},
		CACTUS_MEAT_COOKED = "Grilled fruit of the desert.",
		CACTUS_MEAT = "I'll get hurt if I harvest this.",
		CACTUS_FLOWER = "A pretty flower from a prickly plant.",

		COLDFIRE =
		{
			EMBERS = "I should fuel the fire.",
			GENERIC = "I'm not afriad of the dark, I just prefer the light.",
			HIGH = "That fire is getting out of hand!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "It went out.",
		},
		CAMPFIRE =
		{
			EMBERS = "I should fuel the fire.",
			GENERIC = "I'm not afriad of the dark, I just prefer the light.",
			HIGH = "That fire is getting out of hand!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "It went out.",
		},
		CANE = "I already have the Fujin Yumi.",
		CATCOON = "An easy target.",
		CATCOONDEN = 
		{
			GENERIC = "It's a den in a stump.",
			EMPTY = "Its owner ran out of lives.",
		},
		CATCOONHAT = "It's warm at least...",
		COONTAIL = "I think it's still swishing.",
		CARROT = "Would be better cooked.",
		CARROT_COOKED = "Not bad.",
		CARROT_PLANTED = "Fresh vegtables.",
		CARROT_SEEDS = "It's a seed.",
		WATERMELON_SEEDS = "It's a seed.",
		CAVE_FERN = "It's a fern.",
		CHARCOAL = "It's small, dark and smells like burnt wood.",
        CHESSJUNK1 = "Nohrian junk.",
        CHESSJUNK2 = "More Nohrian junk.",
        CHESSJUNK3 = "Even more Nohrian junk.",
		CHESTER = "Creepy, but useful.",
		CHESTER_EYEBONE =
		{
			GENERIC = "It's looking at me.",
			WAITING = "It went to sleep.",
		},
		COOKEDMANDRAKE = "Poor little guy.",
		COOKEDMEAT = "Cooked just right.",
		COOKEDMONSTERMEAT = "That's only somewhat more appetizing than when it was raw.",
		COOKEDSMALLMEAT = "I'll get bigger game next time!",
		COOKPOT =
		{
			COOKING_LONG = "This is going to take a while.",
			COOKING_SHORT = "It's almost done!",
			DONE = "It's ready to eat!",
			EMPTY = "It makes me hungry just looking at it.",
			BURNT = "The pot got cooked.",
		},
		CORN = "Corn.",
		CORN_COOKED = "It's less filling now.",
		CORN_SEEDS = "It's a seed.",
		CROW =
		{
			GENERIC = "Creepy!",
			HELD = "He's not very happy in there.",
		},
		CUTGRASS = "Cut grass, ready for arts and crafts.",
		CUTREEDS = "Cut reeds, ready for crafting and hobbying.",
		CUTSTONE = "I've made them smooth.",
		DEADLYFEAST = "A dangerous dish.",
		DEERCLOPS = "It's enormous!!",
		DEERCLOPS_EYEBALL = "This is really gross.",
		EYEBRELLAHAT =	"It will watch over me.",
		DEPLETED_GRASS =
		{
			GENERIC = "It's probably a tuft of grass.",
		},
		DEVTOOL = "It smells of bacon!",
		DEVTOOL_NODEV = "I'm not strong enough to wield it.",
		DIRTPILE = "It's a pile of dirt... or IS it?",
		DIVININGROD =
		{
			COLD = "The signal is very faint.",
			GENERIC = "It's some kind of homing device.",
			HOT = "This thing's going crazy!",
			WARM = "I'm headed in the right direction.",
			WARMER = "I must be getting pretty close.",
		},
		DIVININGRODBASE =
		{
			GENERIC = "I wonder what it does.",
			READY = "It looks like it needs a large key.",
			UNLOCKED = "Now my machine can work!",
		},
		DIVININGRODSTART = "That rod looks useful!",
		DRAGONFLY = "That's one fly dragon!",
		ARMORDRAGONFLY = "Hot mail!",
		DRAGON_SCALES = "They're still warm.",
		DRAGONFLYCHEST = "Next best thing to a lockbox!",
		LAVASPIT = 
		{
			HOT = "Hot spit!",
			COOL = "I like to call it 'Basaliva'.",
		},

		LAVAE = "Too hot to handle.",
		LAVAE_PET = 
		{
			STARVING = "Poor thing must be starving.",
			HUNGRY = "I hear a tiny stomach grumbling.",
			CONTENT = "It seems happy.",
			GENERIC = "Aww. Who's a good monster?",
		},
		LAVAE_EGG = 
		{
			GENERIC = "I can feel a faint warmth coming from inside.",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "I don't think that egg is warm enough.",
			COMFY = "I never thought I would see a happy egg.",
		},
		LAVAE_TOOTH = "It's an egg tooth!",

		DRAGONFRUIT = "What a weird fruit.",
		DRAGONFRUIT_COOKED = "Still weird.",
		DRAGONFRUIT_SEEDS = "It's a seed.",
		DRAGONPIE = "I cooked it myself.",
		DRUMSTICK = "I should gobble it.",
		DRUMSTICK_COOKED = "Now it's even tastier.",
		DUG_BERRYBUSH = "I should plant this.",
		DUG_GRASS = "I should plant this.",
		DUG_MARSH_BUSH = "I should plant this.",
		DUG_SAPLING = "I should plant this.",
		DURIAN = "It smells!",
		DURIAN_COOKED = "Now it smells even worse!",
		DURIAN_SEEDS = "It's a seed.",
		EARMUFFSHAT = "At least my ears won't get cold...",
		EGGPLANT = "Eggplant.",
		EGGPLANT_COOKED = "Cooked eggplant.",
		EGGPLANT_SEEDS = "It's a seed.",
		DECIDUOUSTREE = 
		{
			BURNING = "I shouldn't get too close.",
			BURNT = "Burnt to the ground.",
			CHOPPED = "I needed the wood.",
			POISON = "It looks unhappy about me stealing those Birchnuts!",
			GENERIC = "These woods are unsettling.",
		},
		ACORN = "There's definitely something inside there.",
        ACORN_SAPLING = "It's still growing.",
		ACORN_COOKED = "Cooked just right.",
		BIRCHNUTDRAKE = "A mad little nut.",
		EVERGREEN =
		{
			BURNING = "I shouldn't get too close.",
			BURNT = "Burnt to the ground.",
			CHOPPED = "I needed the wood.",
			GENERIC = "These woods are unsettling.",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "I shouldn't get too close.",
			BURNT = "Burnt to the ground.",
			CHOPPED = "I needed the wood.",
			GENERIC = "These woods are unsettling.",
		},
		EYEPLANT = "I think I'm being watched.",
		FARMPLOT =
		{
			GENERIC = "Nothing's growing here.",
			GROWING = "It's still growing.",
			NEEDSFERTILIZER = "I think it needs to be fertilized.",
			BURNT = "I don't think anything will grow in a pile of ash.",
		},
		FEATHERHAT = "A decorative hat.",
		FEATHER_CROW = "A crow feather.",
		FEATHER_ROBIN = "A redbird feather.",
		FEATHER_ROBIN_WINTER = "A snowbird feather.",
		FEM_PUPPET = "She's trapped!",
		FIREFLIES =
		{
			GENERIC = "If only I could catch them!",
			HELD = "They light up in my hand.",
		},
		FIREHOUND = "That one glows.",
		FIREPIT =
		{
			EMBERS = "I should put something on the fire before it goes out.",
			GENERIC = "I'm not afriad of the dark, I just prefer the light.",
			HIGH = "Good thing it's contained!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "At least I can start it up again.",
		},
		COLDFIREPIT =
		{
			EMBERS = "I should put something on the fire before it goes out.",
			GENERIC = "I'm not afriad of the dark, I just prefer the light.",
			HIGH = "Good thing it's contained!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "At least I can start it up again.",
		},
		FIRESTAFF = "I don't want to set the world on fire.",
		FIRESUPPRESSOR = 
		{	
			ON = "It's on.",
			OFF = "It's off.",
			LOWFUEL = "The fuel tank is getting a bit low.",
		},

		FISH = "Now I shall eat for a day.",
		FISHINGROD = "Hook, line and stick!",
		FISHSTICKS = "I cooked it myself!",
		FISHTACOS = "I cooked it myself!",
		FISH_COOKED = "Cooked just right.",
		FLINT = "It's a very sharp rock.",
		FLOWER = "It's pretty but it smells like a common labourer.",
        FLOWER_WITHERED = "I don't think it got enough sun.",
		FLOWERHAT = "It smells like prettiness.",
		FLOWER_EVIL = "Something is off about those flowers",
		FOLIAGE = "Some leafy greens.",
		FOOTBALLHAT = "I don't like sports.",
		FROG =
		{
			DEAD = "He's croaked.",
			GENERIC = "The croaking gets on my nerves.",
			SLEEPING = "It's asleep.",
		},
		FROGGLEBUNWICH = "I cooked it myself!",
		FROGLEGS = "I've heard it's a delicacy.",
		FROGLEGS_COOKED = "Tastes like chicken.",
		FRUITMEDLEY = "I cooked it myself!",
		FURTUFT = "Black and white fur.", 
		GEARS = "A pile of mechanical parts.",
		GHOST = "AHHHHHHHH A GHOST!",
		GOLDENAXE = "That's one fancy axe.",
		GOLDENPICKAXE = "Hey, isn't gold really soft?",
		GOLDENPITCHFORK = "Why did I even make a pitchfork this fancy?",
		GOLDENSHOVEL = "I can't wait to dig holes.",
		GOLDNUGGET = "I can't eat it, but it sure is shiny.",
		GRASS =
		{
			BARREN = "It needs fertilizer.",
			WITHERED = "It's not going to grow back while it's so hot.",
			BURNING = "That's burning fast!",
			GENERIC = "It's a tuft of grass.",
			PICKED = "Nothing's left to harvest.",
		},
		GREEN_CAP = "It seems pretty normal.",
		GREEN_CAP_COOKED = "It's different now...",
		GREEN_MUSHROOM =
		{
			GENERIC = "It's a mushroom.",
			INGROUND = "It's sleeping.",
			PICKED = "I wonder if it will come back?",
		},
		GUNPOWDER = "It looks like pepper.",
		HAMBAT = "This seems unsanitary.",
		HAMMER = "I can use it to deconstruct things.",
		HEALINGSALVE = "The stinging means that it's working.",
		HEATROCK =
		{
			FROZEN = "It's colder than ice.",
			COLD = "That's a cold stone.",
			GENERIC = "I could manipulate its temperature.",
			WARM = "It's quite warm and cuddly... for a rock!",
			HOT = "Nice and toasty hot!",
		},
		HOME = "Someone must live here.",
		HOMESIGN =
		{
			GENERIC = "It says 'You are here'.",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "It says 'Thataway'.",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "It says 'Thataway'.",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		HONEY = "Looks delicious!",
		HONEYCOMB = "Bees used to live in this.",
		HONEYHAM = "I cooked it myself!",
		HONEYNUGGETS = "I cooked it myself!",
		HORN = "It sounds like a beefalo field in there.",
		HOUND = "Your finished beasts!",
		HOUNDBONE = "Creepy.",
		HOUNDMOUND = "Spawns hounds.",
		ICEBOX = "I have harnessed the power of cold!",
		ICEHAT = "Stay cool.",
		ICEHOUND = "Are there hounds for every season?",
		INSANITYROCK =
		{
			ACTIVE = "TAKE THAT!",
			INACTIVE = "It's more of a pyramid than an obelisk.",
		},
		JAMMYPRESERVES = "I cooked it myself!",
		KABOBS = "I cooked it myself!",
		KILLERBEE =
		{
			GENERIC = "It's a killer bee!",
			HELD = "This seems dangerous.",
		},
		KNIGHT = "Check it out!",
		KOALEFANT_SUMMER = "Adorably delicious.",
		KOALEFANT_WINTER = "It looks warm and full of meat.",
		KRAMPUS = "He's going after my stuff!",
		KRAMPUS_SACK = "Ew. It has Krampus slime all over it.",
		LEIF = "He's huge!",
		LEIF_SPARSE = "He's huge!",
		LIGHTNING_ROD =
		{
			CHARGED = "The power is mine!",
			GENERIC = "I can harness the heavens!",
		},
		LIGHTNINGGOAT = 
		{
			GENERIC = "'Baaaah' yourself!",
			CHARGED = "I don't think it liked being struck by lightning.",
		},
		LIGHTNINGGOATHORN = "It's like a miniature lightning rod.",
		GOATMILK = "It's buzzing with tastiness!",
		LITTLE_WALRUS = "He won't be cute and cuddly forever.",
		LIVINGLOG = "It looks worried.",
		LOG =
		{
			BURNING = "That's some hot wood!",
			GENERIC = "It's big, it's heavy, and it's wood.",
		},
		LUREPLANT = "It's so alluring.",
		LUREPLANTBULB = "Now I can start my very own meat farm.",
		MALE_PUPPET = "He's trapped!",

		MANDRAKE_ACTIVE = "Stop following me!",
		MANDRAKE_PLANTED = "I've heard strange things about those plants.",
		MANDRAKE = "A mandrake root has strange powers.",

		MANDRAKESOUP = "I cooked it myself!",
		MANDRAKE_COOKED = "It doesn't seem so strange anymore.",
		MARBLE = "Fancy!",
		MARBLEPILLAR = "I think I could use that.",
		MARBLETREE = "I don't think an axe will cut it.",
		MARSH_BUSH =
		{
			BURNING = "That's burning fast!",
			GENERIC = "It looks thorny.",
			PICKED = "That hurt.",
		},
		BURNT_MARSH_BUSH = "It's all burnt up.",
		MARSH_PLANT = "It's a plant.",
		MARSH_TREE =
		{
			BURNING = "Spikes and fire!",
			BURNT = "Now it's burnt and spiky.",
			CHOPPED = "Not so spiky now!",
			GENERIC = "Those spikes look sharp!",
		},
		MAXWELL = "Is he Nohrian?",
		MAXWELLHEAD = "I can see into his pores.",
		MAXWELLLIGHT = "I wonder how they work.",
		MAXWELLLOCK = "Looks almost like a key hole.",
		MAXWELLTHRONE = "That doesn't look very comfortable.",
		MEAT = "It's a bit gamey, but it'll do.",
		MEATBALLS = "I cooked it myself!",
		MEATRACK =
		{
			DONE = "Jerky time!",
			DRYING = "Meat takes a while to dry.",
			DRYINGINRAIN = "Meat takes even longer to dry in rain.",
			GENERIC = "I should dry some meats.",
			BURNT = "The rack got dried.",
		},
		MEAT_DRIED = "Just jerky enough.",
		MERM = "Smells fishy!",
		MERMHEAD = 
		{
			GENERIC = "The stinkiest thing I'll smell all day.",
			BURNT = "Burnt merm flesh somehow smells even worse.",
		},
		MERMHOUSE = 
		{
			GENERIC = "Who would live here?",
			BURNT = "Nothing to live in, now.",
		},
		MINERHAT = "This will keep my hands free.",
		MONKEY = "Curious little guy.",
		MONKEYBARREL = "Did that just move?",
		MONSTERLASAGNA = "This looks disgusting.", 
		FLOWERSALAD = "A bowl of foliage.",
        ICECREAM = "I scream for ice cream!",
        WATERMELONICLE = "Is this suppose to be food?",
        TRAILMIX = "A healthy, natural snack.",
        HOTCHILI = "Hot!",
        GUACAMOLE = "Not bad.",
		MONSTERMEAT = "Ugh. I don't think I should eat that.",
		MONSTERMEAT_DRIED = "Strange-smelling jerky.",
		MOOSE = "I don't exactly know what that thing is.",
		MOOSEEGG = "Why does it conduct lightning?",
		MOSSLING = "Your going down!",
		FEATHERFAN = "I can use this to bring my temperature down.",
        MINIFAN = "The breeze feels nice.",
		GOOSE_FEATHER = "Fluffy!",
		STAFF_TORNADO = "A tornado.",
		MOSQUITO =
		{
			GENERIC = "Disgusting bloodsucker.",
			HELD = "Hey, is that my blood?",
		},
		MOSQUITOSACK = "It's probably not someone else's blood...",
		MOUND =
		{
			DUG = "I should probably feel bad about that.",
			GENERIC = "I bet there's all sorts of good stuff down there!",
		},
		NIGHTLIGHT = "It gives off a creepy light.",
		NIGHTMAREFUEL = "Is this safe?",
		NIGHTSWORD = "Is this safe to use?",
		NITRE = "I'm not a geologist.",
		ONEMANBAND = "I should have added a beefalo bell.",
		PANDORASCHEST = "It may contain something fantastic! Or horrible.",
		PANFLUTE = "I can serenade the animals.",
		PAPYRUS = "Some sheets of paper.",
		PENGUIN = "Must be breeding season.",
		PERD = "Stupid bird! Stay away from my berries!",
		PEROGIES = "I cooked it myself!",
		PETALS = "I showed those flowers who's boss!",
		PETALS_EVIL = "BETRAYAL...wait what?",
		PHLEGM = "It's thick and pliable. And salty.",
		PICKAXE = "Iconic, isn't it?",
		PIGGYBACK = "I feel kinda bad for that.",
		PIGHEAD = 
		{	
			GENERIC = "Looks like an offering to the beast.",
			BURNT = "Crispy.",
		},
		PIGHOUSE =
		{
			FULL = "I can see a snout pressed up against the window.",
			GENERIC = "These pigs have pretty fancy houses.",
			LIGHTSOUT = "Come ON! I know you're home!",
			BURNT = "Not so fancy now, pig!",
		},
		PIGKING = "Ewwww, he smells!",
		PIGMAN =
		{
			DEAD = "Someone should tell his family.",
			FOLLOWER = "He's part of my entourage.",
			GENERIC = "They kind of creep me out.",
			GUARD = "He looks serious.",
			WEREPIG = "He's not friendly!",
		},
		PIGSKIN = "It still has the tail on it.",
		PIGTENT = "Smells like bacon.",
		PIGTORCH = "Sure looks cozy.",
		PINECONE = "I can hear a tiny tree inside it, trying to get out.",
        PINECONE_SAPLING = "It'll be a tree soon!",
        LUMPY_SAPLING = "How did this tree even reproduce?",
		PITCHFORK = "Maxwell might be looking for this.",
		PLANTMEAT = "That doesn't look very appealing.",
		PLANTMEAT_COOKED = "At least it's warm now.",
		PLANT_NORMAL =
		{
			GENERIC = "Leafy!",
			GROWING = "Guh! It's growing so slowly!",
			READY = "Mmmm. Ready to harvest.",
			WITHERED = "The heat killed it.",
		},
		POMEGRANATE = "Pretty common in Hoshido.",
		POMEGRANATE_COOKED = "Not bad!",
		POMEGRANATE_SEEDS = "It's a seed.",
		POND = "I can't see the bottom!",
		POOP = "I should fill my pockets!",
		FERTILIZER = "That is definitely a bucket full of poop.",
		PUMPKIN = "It's as big as my head.",
		PUMPKINCOOKIE = "I cooked it myself!",
		PUMPKIN_COOKED = "How did it not turn into a pie?",
		PUMPKIN_LANTERN = "Spooky!",
		PUMPKIN_SEEDS = "It's a seed.",
		PURPLEAMULET = "It's whispering to me.",
		PURPLEGEM = "It's mysterious.",
		RABBIT =
		{
			GENERIC = "He's looking for carrots.",
			HELD = "Its still alive.",
		},
		RABBITHOLE = 
		{
			GENERIC = "A perfect place for a trap.",
			SPRING = "No rabbits this season.",
		},
		RAINOMETER = 
		{	
			GENERIC = "It measures cloudiness.",
			BURNT = "The measuring parts went up in a cloud of smoke.",
		},
		RAINCOAT = "Keeps the rain where it ought to be. Outside my body.",
		RAINHAT = "It'll mess up my hair, but I'll stay nice and dry.",
		RATATOUILLE = "I cooked it myself!",
		RAZOR = "A sharpened rock tied to a stick.",
		REDGEM = "It sparkles with inner warmth.",
		RED_CAP = "It smells funny.",
		RED_CAP_COOKED = "It's different now...",
		RED_MUSHROOM =
		{
			GENERIC = "It's a mushroom.",
			INGROUND = "It's sleeping.",
			PICKED = "I wonder if it will come back?",
		},
		REEDS =
		{
			BURNING = "That's really burning!",
			GENERIC = "It's a clump of reeds.",
			PICKED = "I picked all the useful reeds.",
		},
        RELIC = 
        {
            GENERIC = "Ancient household goods.",
            BROKEN = "Nothing to work with here.",
        },
        RUINS_RUBBLE = "This can be fixed.",
        RUBBLE = "Just bits and pieces of rock.",
		RESEARCHLAB = 
		{	
			GENERIC = "It breaks down objects into their scientific components.",
			BURNT = "It won't be doing much science now.",
		},
		RESEARCHLAB2 = 
		{
			GENERIC = "More science.",
			BURNT = "The extra science didn't keep it alive.",
		},
		RESEARCHLAB3 = 
		{
			GENERIC = "What have I created?",
			BURNT = "Whatever it was, it's burnt now.",
		},
		RESEARCHLAB4 = 
		{
			GENERIC = "Who would name something that?",
			BURNT = "Fire doesn't really solve naming issues...",
		},
		RESURRECTIONSTATUE = 
		{
			GENERIC = "Doesn't look like me at all.",
			BURNT = "Not much use anymore.",
		},		RESURRECTIONSTONE = "Such a touching stone.",
		ROBIN =
		{
			GENERIC = "Does that mean winter is gone?",
			HELD = "He likes my pocket.",
		},
		ROBIN_WINTER =
		{
			GENERIC = "Life in the frozen wastes.",
			HELD = "It's so soft.",
		},
		ROBOT_PUPPET = "It's trapped!",
		ROCK_LIGHT =
		{
			GENERIC = "A crusted over lava pit.",
			OUT = "Looks fragile.",
			LOW = "The lava's crusting over.",
			NORMAL = "Nice and comfy.",
		},
		ROCK = "It wouldn't fit in my pocket.",
		ROCK_ICE = 
		{
			GENERIC = "A very isolated glacier.",
			MELTED = "Nothing useful until it freezes again.",
		},
		ROCK_ICE_MELTED = "Nothing useful until it freezes again.",
		ICE = "Ice to meet you.",
		ROCKS = "I can make stuff with these.",
        ROOK = "Something from a Nohrian game.",
		ROPE = "Some short lengths of rope.",
		ROTTENEGG = "Disgusting!",
		SANITYROCK =
		{
			ACTIVE = "That's a CRAZY looking rock!",
			INACTIVE = "Where did the rest of it go?",
		},
		SAPLING =
		{
			BURNING = "That's burning fast!",
			WITHERED = "It might be okay if it was cooler.",
			GENERIC = "A sapling tree.",
			PICKED = "That'll teach him.",
		},
		SEEDS = "Each one is a tiny mystery.",
		SEEDS_COOKED = "It's cooked.",
		SEWING_KIT = "I'm not good with sewing.",
		SHOVEL = "There's a lot going on underground.",
		SILK = "Silk from a spider.",
		SKELETON = "Someone was unlucky.",
		SCORCHED_SKELETON = "Spooky.",
		SKULLCHEST = "I'm not sure if I want to open it.",
		SMALLBIRD =
		{
			GENERIC = "That's a rather small bird.",
			HUNGRY = "It looks hungry.",
			STARVING = "It must be starving.",
		},
		SMALLMEAT = "A tiny chunk of dead animal.",
		SMALLMEAT_DRIED = "A little jerky.",
		SPAT = "That's not a sheep!",
		SPEAR = "Be careful where you point that thing.",
		SPIDER =
		{
			DEAD = "It deserved it.",
			GENERIC = "I hate spiders.",
			SLEEPING = "I'm getting out of here before he wakes up.",
		},
		SPIDERDEN = "Sticky!",
		SPIDEREGGSACK = "I hope these don't hatch in my pocket.",
		SPIDERGLAND = "It has a tangy, antiseptic smell.",
		SPIDERHAT = "I hope I got all of the spider goo out of it.",
		SPIDERQUEEN = "AHHHHHHHH! That spider is huge!",
		SPIDER_WARRIOR =
		{
			DEAD = "Good riddance!",
			GENERIC = "Looks even meaner than usual.",
			SLEEPING = "I should keep my distance.",
		},
		SPOILED_FOOD = "It's rotten! I'm not putting that in my mouth.",
		STATUEHARP = "What has happened to the head?",
		STATUEMAXWELL = "I don't know who he is, but I don't like him.",
		STEELWOOL = "Scratchy metal fibers.",
		STINGER = "It's sharp.",
		STRAWHAT = "What a nice hat.",
		STUFFEDEGGPLANT = "I cooked it myself!",
		SUNKBOAT = "It's no use to me out there!",
		SWEATERVEST = "This vest is dapper as all get-out.",
		REFLECTIVEVEST = "Keep off, evil sun!",
		HAWAIIANSHIRT = "It's not lab-safe!",
		TAFFY = "I cooked it myself!",
		TALLBIRD = "That's a tall bird!",
		TALLBIRDEGG = "Will it hatch?",
		TALLBIRDEGG_COOKED = "Delicious and nutritional.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "It looks like its freezing.",
			GENERIC = "Looks like it's hatching.",
			HOT = "Looks like its overheating.",
			LONG = "I have a feeling this is going to take a while...",
			SHORT = "It should hatch any time now.",
		},
		TALLBIRDNEST =
		{
			GENERIC = "That's quite an egg!",
			PICKED = "The nest is empty.",
		},
		TEENBIRD =
		{
			GENERIC = "Not a very tall bird.",
			HUNGRY = "I'd better find it some food.",
			STARVING = "It has a dangerous look in it's eye.",
		},
		TELEBASE =	-- Duplicated
		{
			VALID = "It's ready to go.",
			GEMS = "It needs more purple gems.",
		},
		GEMSOCKET = -- Duplicated
		{
			VALID = "Looks ready.",
			GEMS = "It needs a gem.",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "With this I can surely pass through space and time!",
			GENERIC = "This appears to be a nexus to another world!",
			LOCKED = "There's still something missing.",
			PARTIAL = "Soon, my invention will be complete!",
		},
		TELEPORTATO_BOX = "This may control the polarity of the whole universe.",
		TELEPORTATO_CRANK = "Tough enough to handle the most intense experiments.",
		TELEPORTATO_POTATO = "This metal potato contains great and fearful power...",
		TELEPORTATO_RING = "A ring that could focus dimensional energies.",
		TELESTAFF = "It can show me the world.",
		TENT = 
		{
			GENERIC = "I get crazy when I don't sleep.",
			BURNT = "Nothing left to sleep in.",
		},
		SIESTAHUT = 
		{
			GENERIC = "A nice place for an afternoon rest out of the heat.",
			BURNT = "It won't provide much shade now.",
		},
		TENTACLE = "That looks dangerous.",
		TENTACLESPIKE = "It's pointy and slimy.",
		TENTACLESPOTS = "I think these were its genitalia.",
		TENTACLE_PILLAR = "A slimy pole.",
        TENTACLE_PILLAR_HOLE = "Seems stinky, but worth exploring.",
		TENTACLE_PILLAR_ARM = "Little slippery arms.",
		TENTACLE_GARDEN = "Yet another slimy pole.",
		TOPHAT = "What a nice hat.",
		TORCH = "Something to hold back the night.",
		TRANSISTOR = "It's whirring with electricity.",
		TRAP = "I wove it real tight.",
		TRAP_TEETH = "This is a nasty surprise.",
		TRAP_TEETH_MAXWELL = "I'll want to avoid stepping on that!",
		TREASURECHEST = 
		{
			GENERIC = "It's my tickle trunk!",
			BURNT = "That trunk was truncated.",
		},
		TREASURECHEST_TRAP = "How convenient!",
		TREECLUMP = "It's almost like someone is trying to prevent me from going somewhere.",
		
		TRINKET_1 = "They are all melted together.", --Melty Marbles
		TRINKET_2 = "It's just a cheap replica.", --Fake Kazoo
		TRINKET_3 = "The knot is stuck. Forever.", --Gord's Knot
		TRINKET_4 = "It must be some kind of religious artifact.", --Gnome
		TRINKET_5 = "Sadly, it's too small for me to escape on.", --Tiny Rocketship
		TRINKET_6 = "Their electricity carrying days are over.", --Frazzled Wires
		TRINKET_7 = "I have no time for fun and games!", --Ball and Cup
		TRINKET_8 = "Great. All of my tub stopping needs are met.", --Hardened Rubber Bung
		TRINKET_9 = "I'm more of a zipper person, myself.", --Mismatched Buttons
		TRINKET_10 = "I hope I get out of here before I need these.", --Second-hand Dentures
		TRINKET_11 = "He whispers beautiful lies to me.", --Lying Robot
		TRINKET_12 = "I'm not sure what I should do with a dessicated tentacle.", --Dessicated Tentacle
		TRINKET_13 = "It must be some kind of religious artifact.", --Gnomette
		TRINKET_14 = "Now if I only had some tea...", -- Leaky Teacup
		TRINKET_15 = "Shogi is better.", -- White Bishop
		TRINKET_16 = "Shogi is better.", -- Black Bishop
		TRINKET_17 = "An ice cream fork!", -- Bent Spork
		TRINKET_18 = "I wonder what it's hiding?", -- Toy Trojan Horse
		TRINKET_19 = "It doesn't spin very well.", -- Unbalanced Top
		TRINKET_20 = "Now I can scratch my back; all my problems are solved!", -- Back Scratcher
		TRINKET_21 = "This egg beater is all bent out of shape.", -- Beaten Beater
		TRINKET_22 = "Sadly, it's not strong enough to be useful for anything.", -- Frayed Yarn
		TRINKET_23 = "I can put my shoes on without help, thanks.", -- Shoe Horn
		TRINKET_24 = "Is it really lucky?", -- Lucky Cat Jar
		TRINKET_25 = "It smells kind of stale.", -- Air Unfreshener
		TRINKET_26 = "Food and a cup! The ultimate survival container.", -- Potato Cup
		TRINKET_27 = "Good, I can hang my clothes up if I ever find a hook.", -- Wire Hanger
		
		TRUNKVEST_SUMMER = "Wilderness casual.",
		TRUNKVEST_WINTER = "Winter survival gear.",
		TRUNK_COOKED = "Somehow even more nasal than before.",
		TRUNK_SUMMER = "A light breezy trunk.",
		TRUNK_WINTER = "A thick, hairy trunk.",
		TUMBLEWEED = "Who knows what that tumbleweed has picked up.",
		TURF_CARPETFLOOR = "It's surprisingly scratchy.",	-- Duplicated
		TURF_CHECKERFLOOR = "These are pretty snazzy.",	-- Duplicated
		TURF_DIRT = "A chunk of ground.",	-- Duplicated
		TURF_FOREST = "A chunk of ground.",	-- Duplicated
		TURF_GRASS = "A chunk of ground.",	-- Duplicated
		TURF_MARSH = "A chunk of ground.",	-- Duplicated
		TURF_ROAD = "Hastily cobbled stones.",	-- Duplicated
		TURF_ROCKY = "A chunk of ground.",	-- Duplicated
		TURF_SAVANNA = "A chunk of ground.",	-- Duplicated
		TURF_WOODFLOOR = "These are floorboards.",	-- Duplicated
		TURKEYDINNER = "Mmmm.",
		TWIGS = "It's a bunch of small twigs.",
		UMBRELLA = "This will keep my hair dry, at least.",
		GRASS_UMBRELLA = "This will keep my hair moderately dry, at least.",
		UNIMPLEMENTED = "It doesn't look finished! It could be dangerous.",
		WAFFLES = "I cooked it myself!",
		WALL_HAY = 
		{	
			GENERIC = "Hmmmm. I guess that'll have to do.",
			BURNT = "That won't do at all.",
		},
		WALL_HAY_ITEM = "This seems like a bad idea.",
		WALL_STONE = "That's a nice wall.",
		WALL_STONE_ITEM = "They make me feel so safe.",
		WALL_RUINS = "An ancient piece of wall.",
		WALL_RUINS_ITEM = "A solid piece of history.",
		WALL_WOOD = 
		{
			GENERIC = "Sharp!",
			BURNT = "Burnt!",
		},
		WALL_WOOD_ITEM = "Pickets!",
		WALL_MOONROCK = "Spacey and smooth!",
		WALL_MOONROCK_ITEM = "Very light but surprisingly tough.",
		WALRUS = "Walruses are natural predators.",
		WALRUSHAT = "It's covered with walrus hairs.",
		WALRUS_CAMP =
		{
			EMPTY = "Looks like somebody was camping here.",
			GENERIC = "It looks warm and cozy inside.",
		},
		WALRUS_TUSK = "I'm sure I'll find a use for it eventually.",
		WARDROBE = 
		{
			GENERIC = "How do I look?",
            BURNING = "Put it out!",
			BURNT = "I didn't need it anyway.",
		},
		WARG = "What kind of wolf is that?",
		WASPHIVE = "I think those bees are mad.",
		WATERMELON = "Reminds me of summer in Hoshido.",
		WATERMELON_COOKED = "Juicy and warm.",
		WATERMELONHAT = "Let the juice run down your face.",
		WETGOOP = "I cooked it myself!",
		WINTERHAT = "It'll be good for when winter comes.",
		WINTEROMETER = 
		{
			GENERIC = "I am one heck of a scientist.",
			BURNT = "Its measuring days are over.",
		},
		WORMHOLE =
		{
			GENERIC = "Soft and undulating.",
			OPEN = "Science compels me to jump in.",
		},
		WORMHOLE_LIMITED = "Guh, that thing looks worse off than usual.",
		ACCOMPLISHMENT_SHRINE = "I want to use it, and I want the world to know what I did.",        
		LIVINGTREE = "Is it watching me?",
		ICESTAFF = "It's cold to the touch.",
		REVIVER = "The beating of this hideous heart will bring a ghost back to life!",
		LIFEINJECTOR = "Boost!",
		SKELETON_PLAYER =
		{
			MALE = "%s must've died performing an important experiment with %s.",
			FEMALE = "%s must've died performing an important experiment with %s.",
			ROBOT = "%s must've died performing an important experiment with %s.",
			DEFAULT = "%s must've died performing an important experiment with %s.",
		},
		HUMANMEAT = "Flesh is flesh. Where do I draw the line?",
		HUMANMEAT_COOKED = "Cooked nice and pink, but still morally gray.",
		HUMANMEAT_DRIED = "Letting it dry makes it not come from a human, right?",
		MOONROCKNUGGET = "That rock came from the moon.",
	},
	DESCRIBE_GENERIC = "It's a... thing.",
	DESCRIBE_TOODARK = "It's too dark to see!",
	DESCRIBE_SMOLDERING = "That thing is about to catch fire.",
	EAT_FOOD =
	{
		TALLBIRDEGG_CRACKED = "Finally it's hatching.",
	},
}
