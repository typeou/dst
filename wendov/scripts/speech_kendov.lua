return {

	ACTIONFAIL =
	{
		REPAIR =
        {
            WRONGPIECE = "That's not the right one...",
        },
        BUILD =
        {
            MOUNTED = "My arms aren't long enough to do that from here...",
            HASPET = "I've got a pet already...",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "I'm not sure it'd appreciate that...",
			GENERIC = "Why would I do that?",
			NOBITS = "Already very bald...",
		},
		STORE =
		{
			GENERIC = "It's full...",
			NOTALLOWED = "Wrong place...",
			INUSE = "I'll just come back later...",
		},
		RUMMAGE =
		{	
			GENERIC = "Can't do that...",
			INUSE = "I'll just come back later...",	
		},
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "It doesn't fit...",
        	KLAUS = "A little busy right now...",
        },
        COOK =
        {
            GENERIC = "Can't do that...",
            INUSE = "Fire is solo only.",
            TOOFAR = "Too far...",
        },
        GIVE =
        {
			GENERIC = "I can't do that...",
            DEAD = "Corpses don't want gifts...",
            SLEEPING = "Don't want to wake them...",
            BUSY = "I- ...",
			ABIGAILHEART = "Well, that's heartbreaking...",
            GHOSTHEART = "Probably a bad idea...",
            NOTGEM = "That doesn't go there...",
            WRONGGEM = "That's the wrong one...",
            NOTSTAFF = "That's the wrong one...",
            MUSHROOMFARM_NEEDSSHROOM = "It could use a mushroom instead...",
            MUSHROOMFARM_NEEDSLOG = "It could use a living log instead...",
            SLOTFULL = "There's already something there...",
            DUPLICATE = "No need for duplicates...",
            NOTSCULPTABLE = "Not very mouldable...",
            NOTATRIUMKEY = "It doesn't fit...",
            CANTSHADOWREVIVE = "It's not working...",
            WRONGSHADOWFORM = "I don't think it's properly assembled...",
        },
        GIVETOPLAYER = 
        {
        	FULL = "No room...",
            DEAD = "Corpses don't want gifts...",
            SLEEPING = "Don't want to wake them...",
            BUSY = "I...",
    	},
    	GIVEALLTOPLAYER = 
        {
        	FULL = "No room...",
            DEAD = "Corpses don't want gifts...",
            SLEEPING = "Don't want to wake them...",
            BUSY = "I...",
    	},
        WRITE =
        {
            GENERIC = "Can't do that...",
            INUSE = "Don't bother the scribe...",
        },
		DRAW =
        {
            NOIMAGE = "I need a frame of reference...",
        },
        CHANGEIN =
        {
            GENERIC = "Can't do that...",
            BURNING = "I'd really rather not...",
            INUSE = "I'll just come back later...",
        },
        ATTUNE =
        {
            NOHEALTH = "Too weak...",
        },
		MOUNT =
        {
            TARGETINCOMBAT = "It seems a bit rowdy for that right now...",
            INUSE = "There's only space for one...",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "That's probably not the best idea right now...",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "I know that one already...",
            CANTLEARN = "I don't think I can learn that...",

            --MapRecorder/MapExplorer
            WRONGWORLD = "This map isn't from here...",
        },
        WRAPBUNDLE =
        {
            EMPTY = "I need something to put in it first...",
        },
		PICKUP =
        {
			RESTRICTION = "I'm not sure I know how to use that...",
        },
	},
	ACTIONFAIL_GENERIC = "Can't do that...",
	ANNOUNCE_DIG_DISEASE_WARNING = "That ought to help...",
	ANNOUNCE_PICK_DISEASE_WARNING = "That's not good...",
	ANNOUNCE_ADVENTUREFAIL = "That sucked.",
	ANNOUNCE_MOUNT_LOWHEALTH = "It seems hurt...",
	ANNOUNCE_BEES = "Bees?!",
	ANNOUNCE_BOOMERANG = "Ow.",
	ANNOUNCE_CHARLIE = "Who's there?",
	ANNOUNCE_CHARLIE_ATTACK = "Ow.",
	ANNOUNCE_COLD = "I can't tell if my toes are still there or not...",
	ANNOUNCE_HOT = "Too hot...",
	ANNOUNCE_CRAFTING_FAIL = "Don't have all the stuff...",
	ANNOUNCE_DEERCLOPS = "So loud...",
	ANNOUNCE_CAVEIN = "It's crashing down...",
	ANNOUNCE_ANTLION_SINKHOLE = 
	{
		"The floor is disintegrating...",
		"The world shakes...",
		"Not good...",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "A sacrifice.",
        "A tribute, for you.",
        "Hopefully this keeps it calm...",
	},
	ANNOUNCE_SACREDCHEST_YES = "Deemed worthy of loot...",
	ANNOUNCE_SACREDCHEST_NO = "It won't let me...",
	ANNOUNCE_DUSK = "Much better...",
	ANNOUNCE_EAT =
	{
		GENERIC = "",
		PAINFUL = "Groan.",
		SPOILED = "Disgusting...",
		STALE = "That was worse than usual...",
		INVALID = "No...",
		YUCKY = "No...",
	},
	ANNOUNCE_ENCUMBERED =
    {
        "Why can't I have... vampiric... super strength...?",
        "All this... agility training... doesn't help much...",
        "Come... on...",
        "Rrrgh...",
        "Whose idea... was this...?",
        "Almost... there... maybe...",
        "Aaahg...",
        "Nooo...",
        "This was... the worst... decision...",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING = 
    {
		"It's all crashing down...",
		"Uh oh...",
		"I need to leave.",
	},
	ANNOUNCE_RUINS_RESET = "They're back...",
    ANNOUNCE_SNARED = "I'm stuck...",
    ANNOUNCE_REPELLED = "I can't get to it...",
	ANNOUNCE_ENTER_DARK = "Ohh...",
	ANNOUNCE_ENTER_LIGHT = "So bright...",
	ANNOUNCE_FREEDOM = "Out!",
	ANNOUNCE_HIGHRESEARCH = "Mind stimulation!",
	ANNOUNCE_HOUNDS = "Doesn't sound good...",
	ANNOUNCE_WORMS = "I think the ground's moving...",
	ANNOUNCE_HUNGRY = "Getting hungry...",
	ANNOUNCE_HUNT_BEAST_NEARBY = "Something big's nearby...",
	ANNOUNCE_HUNT_LOST_TRAIL = "It's gone...",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "Ground's too mushy. Print's gone.",
	ANNOUNCE_INV_FULL = "I don't have that many arms...",
	ANNOUNCE_KNOCKEDOUT = "Ow.",
	ANNOUNCE_LOWRESEARCH = "That didn't do much for me...",
	ANNOUNCE_MOSQUITOS = "Tiny vampires...",
    ANNOUNCE_NOWARDROBEONFIRE = "Seems like a bad idea...",
    ANNOUNCE_NODANGERGIFT = "Presents are for calmer times...",
	ANNOUNCE_NOMOUNTEDGIFT = "I can't do that from up here...",
	ANNOUNCE_NODANGERSLEEP = "I can sense danger...",
	ANNOUNCE_NODAYSLEEP = "Too bright...",
	ANNOUNCE_NODAYSLEEP_CAVE = "",
	ANNOUNCE_NOHUNGERSLEEP = "A bit too hungry for sleep...",
	ANNOUNCE_NOSLEEPONFIRE = "Seems like a bad idea...",
	ANNOUNCE_NODANGERSIESTA = "I can sense danger...",
	ANNOUNCE_NONIGHTSIESTA = "",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "",
	ANNOUNCE_NOHUNGERSIESTA = "A bit too hungry for sleep...",
	ANNOUNCE_NODANGERAFK = "Can't run from this...",
	ANNOUNCE_NO_TRAP = "Well, that was easy.",
	ANNOUNCE_PECKED = "Ow.",
	ANNOUNCE_QUAKE = "A bit concerning...",
	ANNOUNCE_RESEARCH = "Learn stuff, make things.",
	ANNOUNCE_SHELTER = "Thanks, shelter...",
	ANNOUNCE_THORNS = "Ow.",
	ANNOUNCE_BURNT = "Ow.",
	ANNOUNCE_TORCH_OUT = "There it goes...",
	ANNOUNCE_THURIBLE_OUT = "There it goes...",
	ANNOUNCE_FAN_OUT = "There it goes...",
    ANNOUNCE_COMPASS_OUT = "What an awful compass...",
	ANNOUNCE_TRAP_WENT_OFF = "Oops.",
	ANNOUNCE_UNIMPLEMENTED = "That's not in the game yet...",
	ANNOUNCE_WORMHOLE = "Through the hole...",
	ANNOUNCE_TOWNPORTALTELEPORT = "That never gets easier...",
	ANNOUNCE_CANFIX = "\nI can fix this, I think...",
	ANNOUNCE_ACCOMPLISHMENT = "I did a thing...",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "Neato.",	
	ANNOUNCE_INSUFFICIENTFERTILIZER = "It needs poop...",
	ANNOUNCE_TOOL_SLIP = "Whoops...",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "Shouldn't get killed by lightning, I hope...",
	ANNOUNCE_TOADESCAPING = "It's getting away...",
	ANNOUNCE_TOADESCAPED = "Gone...",

	ANNOUNCE_DAMP = "Eugh...",
	ANNOUNCE_WET = "Anywhere to dry off around here?",
	ANNOUNCE_WETTER = "I hate this...",
	ANNOUNCE_SOAKED = "Jumping in the ocean might make me more dry...",
	
	ANNOUNCE_BECOMEGHOST = "ooOOoooOOOoOooo!!\nSpooky ghooOOoost...",
	ANNOUNCE_GHOSTDRAIN = "Here I go...",
	ANNOUNCE_PETRIFED_TREES = "It's almost like they're screaming...",
	ANNOUNCE_KLAUS_ENRAGE = "That's not good...",
	ANNOUNCE_KLAUS_UNCHAINED = "Unchained, now...",
	ANNOUNCE_KLAUS_CALLFORHELP = "It called some adds...",
	
--boarlord event
	ANNOUNCE_REVIVING_CORPSE = "I can tell you're not really dead...",
	ANNOUNCE_REVIVED_OTHER_CORPSE = "There you go.",
	ANNOUNCE_REVIVED_FROM_CORPSE = "I-I was just taking a break, is all...",
	
	ANNOUNCE_ROYALTY = 
    {
    	"Your majesty...",
    	"Your highness...",
    	"...",
    },
	
	BATTLECRY =
	{
		GENERIC = "",
		PIG = "",
		PREY = "",
		SPIDER = "",
		SPIDER_WARRIOR = "",
		DEER = "",
	},
	COMBAT_QUIT =
	{
		GENERIC = "",
		PIG = "",
		PREY = "",
		SPIDER = "",
		SPIDER_WARRIOR = "",
	},
	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "Looks questionable, but I'm sure it's fine...",
		ANTLION = 
		{
			GENERIC = "It looks greedy...",
			VERYHAPPY = "It likes me...",
			UNHAPPY = "I think it's angry...",
		},
		ANTLIONTRINKET = "Shiny...",
		SANDSPIKE = "Pointy...",
        SANDBLOCK = "A sandy structure...",
        GLASSSPIKE = "Pointier...",
        GLASSBLOCK = "A crystalline structure...",
		ABIGAIL_FLOWER = 
		{ 
			GENERIC ="It hurts my soul...",
			LONG = "Something's different...",
			MEDIUM = "I can feel something...",
			SOON = "She's ready to come out...",
			HAUNTED_POCKET = "I don't think I should have this...",
			HAUNTED_GROUND = "I'd like to figure out how it works...",
		},

		BALLOONS_EMPTY = "A pile of celebration...",
		BALLOON = "Where'd the helium come from...?",

		BERNIE_INACTIVE =
		{
			BROKEN = "It fell apart...",
			GENERIC = "It's all scorched...",
		},
		
		BERNIE_ACTIVE = "I don't think that's normal...",
		
		BOOK_BIRDS = "Something's... not right about these books...",
		BOOK_TENTACLES = "Something's... not right about these books...",
		BOOK_GARDENING = "Something's... not right about these books...",
		BOOK_SLEEP = "Something's... not right about these books...",
		BOOK_BRIMSTONE = "Something's... not right about these books...",

        PLAYER =
        {
            GENERIC = "It's %s...",
            ATTACKER = "They look suspicious...",
            MURDERER = "Murderer.",
            REVIVER = "%s, a helpful ally...",
            GHOST = "%s is a little bit dead...",
			FIRESTARTER = "%s likes to burn things...",
        },
		WILSON = 
		{
			GENERIC = "It's %s...",
			ATTACKER = "They look suspicious...",
			MURDERER = "Murderer.",
			REVIVER = "%s, a helpful ally...",
			GHOST = "%s is a little bit dead...",
			FIRESTARTER = "%s likes to burn things...",
		},
		WOLFGANG = 
		{
			GENERIC = "It's %s...",
			ATTACKER = "They look suspicious...",
			MURDERER = "Murderer.",
			REVIVER = "%s, a helpful ally...",
			GHOST = "%s is a little bit dead...",
			FIRESTARTER = "%s likes to burn things...",
		},
		WAXWELL = 
		{
			GENERIC = "It's %s...",
			ATTACKER = "They look suspicious...",
			MURDERER = "Murderer.",
			REVIVER = "%s, a helpful ally...",
			GHOST = "%s is a little bit dead...",
			FIRESTARTER = "%s likes to burn things...",
		},
		WX78 = 
		{
			GENERIC = "It's a product of science...",
			ATTACKER = "They look suspicious...",
			MURDERER = "Murderer.",
			REVIVER = "%s, a helpful ally...",
			GHOST = "The robot is a little bit dead...",
			FIRESTARTER = "The robot likes to burn things...",
		},
		WILLOW = 
		{
			GENERIC = "It's %s...",
			ATTACKER = "They look suspicious...",
			MURDERER = "Murderer.",
			REVIVER = "%s, a helpful ally...",
			GHOST = "%s is a little bit dead...",
			FIRESTARTER = "%s likes to burn things, naturally...",
		},
		WENDY = 
		{
			GENERIC = "Hi %s, friend of the dead.",
			ATTACKER = "You feeling okay, %s?",
			MURDERER = "Murderer.",
			REVIVER = "%s, a helpful ally...",
			GHOST = "%s has joined her sister...",
			FIRESTARTER = "%s likes to burn things...",
		},
		WOODIE = 
		{
			GENERIC = "It's %s, fellow Canadian...",
			ATTACKER = "They look suspicious...",
			MURDERER = "Murderer.",
			REVIVER = "%s, a helpful ally...",
			GHOST = "%s is a little bit dead...",
			BEAVER = "%s has become a were-beast...",
			BEAVERGHOST = "Bit off more than you could chew, %s?",
			FIRESTARTER = "%s likes to burn things...",
		},
		WICKERBOTTOM = 
		{
			GENERIC = "It's %s...",
			ATTACKER = "They look suspicious...",
			MURDERER = "Murderer.",
			REVIVER = "%s, a helpful ally...",
			GHOST = "%s is a little bit dead...",
			FIRESTARTER = "%s likes to burn things...",
		},
		WES = 
		{
			GENERIC = "It's %s...",
			ATTACKER = "They look suspicious...",
			MURDERER = "Murderer.",
			REVIVER = "%s, a helpful ally...",
			GHOST = "%s is a little bit dead...",
			FIRESTARTER = "%s likes to burn things...",
		},
		WEBBER = 
		{
			GENERIC = "Hi %s, monsterfriend.",
			ATTACKER = "They look suspicious...",
			MURDERER = "Murderer.",
			REVIVER = "%s, a helpful ally...",
			GHOST = "%s is a little bit dead...",
			FIRESTARTER = "%s likes to burn things...",
		},
		WATHGRITHR = 
		{
			GENERIC = "It's %s...",
			ATTACKER = "They look suspicious...",
			MURDERER = "Murderer.",
			REVIVER = "%s, a helpful ally...",
			GHOST = "%s is a little bit dead...",
			FIRESTARTER = "%s likes to burn things...",
		},
		WINONA =
        {
            GENERIC = "It's %s...",
			ATTACKER = "They look suspicious...",
			MURDERER = "Murderer.",
			REVIVER = "%s, a helpful ally...",
			GHOST = "%s is a little bit dead...",
			FIRESTARTER = "%s likes to burn things...",
        },
		
		CELESTE = 
		{
			GENERIC = "My best undead ally.",
			ATTACKER = "You feeling alright, %s?",
			MURDERER = "Did they deserve it, %s?",
			REVIVER = "Surprised you didn't leave me as a ghost, %s.",
			GHOST = "%s has gone full ghost...",
			FIRESTARTER = "Been having fun with fire, %s?",
		},
		HANNAH = 
		{
			GENERIC = "It's %s.",
			ATTACKER = "They look suspicious...",
			MURDERER = "Murderer.",
			REVIVER = "%s, a helpful ally.",
			GHOST = "%s is a little bit dead...",
			FIRESTARTER = "%s likes to burn things...",
		},
		JAMES = 
		{
			GENERIC = "How's the smithing going?",
			ATTACKER = "You're dangerous, %s.",
			MURDERER = "Just don't make a habit of it, alright?",
			REVIVER = "%s, always reliable.",
			GHOST = "Things get a little too heated, %s?",
			FIRESTARTER = "%s having fun with fire, how surprising...",
		},
		JORDAN = 
		{
			GENERIC = "Keeping yourself busy, %s?",
			ATTACKER = "Been kiting people again, %s?",
			MURDERER = "You're more dangerous than I thought, %s...",
			REVIVER = "%s, sacrificing what little you have.",
			GHOST = "%s, dead again...",
			FIRESTARTER = "Been having fun with fire, %s?",
		},
		KENDOV = 
		{
			GENERIC = "Keeping sated?",
			ATTACKER = "There's better ways, %s.",
			MURDERER = "Don't give in, %s.",
			REVIVER = "Better stick together, huh %s?",
			GHOST = "Bit off a bit more than you could drink, %s?",
			FIRESTARTER = "You know as well as I do how dangerous fire is...",
		},
		LLOYD = 
		{
			GENERIC = "Think science and magic can get along, %s?",
			ATTACKER = "Don't let all that magic corrupt you, %s...",
			MURDERER = "Is this what happens when people can't control their magic?",
			REVIVER = "I guess magic does have its uses, %s...",
			GHOST = "Why don't you use magic resurrect yourself, %s?",
			FIRESTARTER = "Been testing out fire staves, %s?",
		},
		LONEY = 
		{
			GENERIC = "Been scouting out the area, %s?",
			ATTACKER = "Been hitting and running,  %s?",
			MURDERER = "The fuzzy friend has turned fiend...",
			REVIVER = "%s, a fuzzy ally.",
			GHOST = "%s has hopped right into death's arms...",
			FIRESTARTER = "Been having fun with fire, %s?",
		},
		REDD = 
		{
			GENERIC = "Sorry %s, but your healing won't help me much...",
			ATTACKER = "You know you're not built for fighting...",
			MURDERER = "I'm surprised you even managed it, %s...",
			REVIVER = "%s, doing his job well.",
			GHOST = "What do you do when your medic dies?",
			FIRESTARTER = "Been having fun with fire, %s?",
		},
        MIGRATION_PORTAL =
		{
            GENERIC = "This'll bring me to my friends.",
            OPEN = "Ominous...",
            FULL = "Too many people there...",
        },
		GLOMMER = "That's a lot of eyes...",
		GLOMMERFLOWER = 
		{
			GENERIC = "Special flower...",
			DEAD = "Special flower, but dead...",
		},
		GLOMMERWINGS = "Tiny wings. Barely functional...",
		GLOMMERFUEL = "Gross...",
		BELL = "Ding dong...",
		STATUEGLOMMER = 
		{	
			GENERIC = "What's this?",
			EMPTY = "Broken now...",
		},
		
		LAVA_POND_ROCK = "I definitely won't be swimming in that one...",

		WEBBERSKULL = "I don't think that's how spiders work...",
		WORMLIGHT = "Glowy.",
		WORMLIGHT_LESSER = "Slightly less glowy...",
		WORM =
		{
		    PLANT = "Seems safe to me...",
		    DIRT = "It's dirt.",
		    WORM = "Worm.",
		},
        WORMLIGHT_PLANT = "Completely reasonable...",
		MOLE =
		{
			HELD = "Got you.",
			UNDERGROUND = "Something's digging around...",
			ABOVEGROUND = "I can see you...",
		},
		MOLEHILL = "Holes are pretty dark. Could be nice...",
		MOLEHAT = "Smell-E-Vision. Yeah, okay, I guess...",

		EEL = "Water snake...",
		EEL_COOKED = "Food, I guess...",
		UNAGI = "Looks like weeb food.",
		EYETURRET = "Always watching...",
		EYETURRET_ITEM = "Tower defense.",
		MINOTAURHORN = "Pointy...",
		MINOTAURCHEST = "Loot!",
		THULECITE_PIECES = "A bunch of fancy rocks.",
		POND_ALGAE = "Slimy algae.",
		GREENSTAFF = "I guess magic is real now...",
		GIFT = "Presents...?",
        GIFTWRAP = "Make sure the corners are tight...",
		POTTEDFERN = "A little bit of scenery.",
		SUCCULENT_POTTED = "My very own aloe...",
		SUCCULENT_PLANT = "Is that aloe?",
		SUCCULENT_PICKED = "It's edible, but it probably has better uses...",
		SENTRYWARD = "It keeps an eye on things...",
        TOWNPORTAL =
        {
			GENERIC = "It manipulates the sand...",
			ACTIVE = "Ready for rapid travel...",
		},
        TOWNPORTALTALISMAN = 
        {
			GENERIC = "It brings friends...",
			ACTIVE = "Ready to go...",
		},
        WETPAPER = "Not much use like this...",
        WETPOUCH = "Very fragile...",
        MOONROCK_PIECES = "A snapshot in time...",
        MOONBASE =
        {
            GENERIC = "It looks like something can fit in there...",
            BROKEN = "Useless, now...",
            STAFFED = "So what's it supposed to do...?",
            WRONGSTAFF = "Something's wrong here...",
            MOONSTAFF = "Incredible...",
        },
        MOONDIAL = 
        {
			GENERIC = "It fills with water depending on how full the moon is...",
			NIGHT_NEW = "No moon to be seen...",
			NIGHT_WAX = "Some moon, waxing...",
			NIGHT_FULL = "A full moon...",
			NIGHT_WANE = "Some moon, waning...",
			CAVE = "The moonlight can't reach it here...",
        },
 		MOWER = "It's a blade...",
		MACHETE = "Almost a sword...",
		GOLDENMACHETE = "Effective, I'm sure...",
		OBSIDIANMACHETE = "It's sharp and hot...",
		BOOK_METEOR = "This can't be good...",
		THULECITE = "Fancy rock.",
		ARMORRUINS = "Pretty light. I like it.",
		ARMORSKELETON = "For weaving in and out.",
		SKELETONHAT = "It keeps me safe from my imaginary demons...",
		RUINS_BAT = "Blunt force trauma.",
		RUINSHAT = "I'm the king?",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "All is well.",
            WARN = "Magic is near...",
            WAXING = "Nearer still.",
            STEADY = "A steady stream of magic.",
            WANING = "The magic is leaving...",
            DAWN = "Dawn approaches and the nightmare fades...",
            NOMAGIC = "The magic has vanished...",
		},
		BISHOP_NIGHTMARE = "Awfully spooky.",
		ROOK_NIGHTMARE = "Spookums.",
		KNIGHT_NIGHTMARE = "There's a pun to be made here...",
		MINOTAUR = "Strong cow.",
		SPIDER_DROPPER = "Comforting.",
		NIGHTMARELIGHT = "Looks awfully friendly.",
		NIGHTSTICK = "Not my style of morning star...",
		GREENGEM = "A peridot?",
		MULTITOOL_AXE_PICKAXE = "Incredible.",
		ORANGESTAFF = "Teleporting's always useful, if concerning...",
		YELLOWAMULET = "It steals the darkness away...",
		GREENAMULET = "Efficiency.",
		SLURPERPELT = "It's like a... giant hairball...",	

		SLURPER = "It's kind of adorable.",
		SLURPER_PELT = "A pile of fur.",
		ARMORSLURPER = "It's disgusting.",
		ORANGEAMULET = "For when you just feel like doing nothing at all...",
		YELLOWSTAFF = "It makes light.",
		YELLOWGEM = "Shiny rock.",
		ORANGEGEM = "Shiny rock.",
		OPALSTAFF = "It makes... polar bears?",
        OPALPRECIOUSGEM = "It's different from all the others...",
		TELEBASE = 
		{
			VALID = "It's ready.",
			GEMS = "Needs more purple gems...",
		},
		GEMSOCKET = 
		{
			VALID = "Looks good.",
			GEMS = "Needs a gem.",
		},
		STAFFLIGHT = "Sometimes, light is necessary...",
		STAFFCOLDLIGHT = "It's light, but it emits cold...",
	
        ANCIENT_ALTAR = "An ancient altar.",

        ANCIENT_ALTAR_BROKEN = "A broken altar. Archaeologists everywhere are screaming.",

        ANCIENT_STATUE = "An ancient statue. It feels... wrong.",

        LICHEN = "It's fungus.",
		CUTLICHEN = "It might be edible.",

		CAVE_BANANA = "Mushy. Gross.",
		CAVE_BANANA_COOKED = "More appetizing.",
		CAVE_BANANA_TREE = "Are those supposed to be bananas it's growing?",
		ROCKY = "Horrifying...",
		
		COMPASS =
		{
			GENERIC="Where am I facing?",
			N = "North",
			S = "South",
			E = "East",
			W = "West",
			NE = "Northeast",
			SE = "Southeast",
			NW = "Northwest",
			SW = "Southwest",
		},

		HOUNDSTOOTH="Pointy.",
		ARMORSNURTLESHELL="Can't be backstabbed with this on.",
		BAT="They see me as one of them...",
		BATBAT = "Sorry, buddies...",
		BATWING="Sleep well, buddy...",
		BATWING_COOKED="Might as well not let it go to waste.",
        BATCAVE = "Can I come in?",
		BEDROLL_FURRY="Fluffy and warm.",
		BUNNYMAN="That's a bit disturbing...",
		FLOWER_CAVE="Glowy flower.",
		GUANO="Slightly different poop...",
		LANTERN="Light in a box.",
		LIGHTBULB="Advanced light.",
		MANRABBIT_TAIL="It's so fuzzy and warm...",
		MUSHROOMHAT = "Makes the wearer look like a fun guy.",
        MUSHROOM_LIGHT2 =
        {
            ON = "Probably one of the most advanced forms of light we'll get out here...",
            OFF = "You can program its colours...",
            BURNT = "It burned brighter than before, but not for long...",
        },
        MUSHROOM_LIGHT =
        {
            ON = "It's almost a real lamp...",
            OFF = "It's better this way...",
            BURNT = "It burned brighter than before, but not for long...",
        },
        SLEEPBOMB = "I think these are just drugs...",
        MUSHROOMBOMB = "Get away from it.",
        SHROOM_SKIN = "A sporous lump...",
        TOADSTOOL_CAP =
        {
            EMPTY = "It's a hole...",
            INGROUND = "Something's under there...",
            GENERIC = "What's that doing there?",
        },
        TOADSTOOL =
        {
            GENERIC = "Oh, my...",
            RAGE = "How horrible...",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "They make the big one stronger...",
            BURNT = "For the best...",
        },
		MUSHTREE_TALL =
		{
            GENERIC = "Like a many-storied house.",
            BLOOM = "A bit more gross looking...",
        },
		MUSHTREE_MEDIUM =
		{
            GENERIC = "Reminds me of a certain purple midget's hat...",
            BLOOM = "Like a couple of umbrellas folded over...",
        },
		MUSHTREE_SMALL =
		{
            GENERIC = "Reminds me of a certain purple midget's hat...",
            BLOOM = "Like an umbrella folded over...",
        },
        MUSHTREE_TALL_WEBBED = "They ruined it...",
        SPORE_TALL =
		{
			GENERIC = "These make me nervous to breathe...",
			HELD = "I wonder if it'll grow on me...",
		},
        SPORE_MEDIUM =
		{
			GENERIC = "These make me nervous to breathe...",
			HELD = "I wonder if it'll grow on me...",
		},
        SPORE_SMALL =
		{
			GENERIC = "These make me nervous to breathe...",
			HELD = "I wonder if it'll grow on me...",
		},
		RABBITHOUSE=
		{
			GENERIC = "Is that where Lloyd lived?",
			BURNT = "It better learn to live like a nomad...",
		},
		SLURTLE="Slimy.",
		SLURTLE_SHELLPIECES="Busted shell.",
		SLURTLEHAT="Not exactly chitin armour, but it'll do...",
		SLURTLEHOLE="Slug rock.",
		SLURTLESLIME="A useful pile of snot.",
		SNURTLE="A different slimy.",
		SPIDER_HIDER="Stealthy spiders...",
		SPIDER_SPITTER="Ranged spiders...",
		SPIDERHOLE="It's a hole full of spiders...",
		SPIDERHOLE_ROCK = "It's a hole full of spiders...",
		STALAGMITE="Pointy rocks.",
		STALAGMITE_TALL="Tall, pointy rocks.",
		TREASURECHEST_TRAP = "Wait...",

		TURF_CARPETFLOOR = "A piece of floor.",
		TURF_CHECKERFLOOR = "A piece of floor.",
		TURF_DIRT = "A piece of ground.",
		TURF_FOREST = "A piece of ground.",
		TURF_GRASS = "A piece of ground.",
		TURF_MARSH = "A piece of ground.",
		TURF_ROAD = "A piece of ground.",
		TURF_ROCKY = "A piece of ground.",
		TURF_SAVANNA = "A piece of ground.",
		TURF_WOODFLOOR = "A piece of floor.",

		TURF_CAVE="A piece of ground.",
		TURF_FUNGUS="A piece of ground.",
		TURF_SINKHOLE="A piece of ground.",
		TURF_UNDERROCK="A piece of ground.",
		TURF_MUD="A piece of ground.",

		TURF_DECIDUOUS = "A piece of ground.",
		TURF_SANDY = "A piece of ground.",
		TURF_BADLANDS = "A piece of ground.",
		TURF_DESERTDIRT = "A piece of ground.",
		TURF_FUNGUS_GREEN = "A piece of ground.",
		TURF_FUNGUS_RED = "A piece of ground.",
		TURF_DRAGONFLY = "A piece of fireproof ground.",

		POWCAKE = "They last forever.",
        CAVE_ENTRANCE = "It's hiding something...",
        CAVE_ENTRANCE_RUINS = "It's definitely hiding something...",
		
        CAVE_ENTRANCE_OPEN =
		{
            GENERIC = "Now might not be the best time...",
            OPEN = "I bet there's some loot down there...",
            FULL = "A bit crowded...",
        },
        CAVE_EXIT =
		{
            GENERIC = "Here forever. At least it's darker in here...",
            OPEN = "Time to go, I think...",
            FULL = "Too many people out there...",
        },
		
		MAXWELLPHONOGRAPH = "Classical music.",
		BOOMERANG = "Make sure to catch it.",
		PIGGUARD = "Looks tough.",
		ABIGAIL = "Such a shame...",
		ADVENTURE_PORTAL = "Looks perfectly safe.",
		AMULET = "It makes me feel better about all this...",
		ANIMAL_TRACK = "Tracks that lead to food.",
		ARMORGRASS = "Obviously effective.",
		ARMORMARBLE = "This looks like it would be awful to wear...",
		ARMORWOOD = "It'll do...",
		ARMOR_SANITY = "This armour makes me nervous...",
		ASH =
		{
			GENERIC = "Naught but ashes remain...",
			REMAINS_GLOMMERFLOWER = "It didn't survive the trip...",
			REMAINS_EYE_BONE = "It didn't survive the trip...",
			REMAINS_THINGIE = "It didn't survive the trip...",
		},
		AXE = "Most useful of tools.",
		BABYBEEFALO = 
		{
			GENERIC = "Adorable.",
			SLEEPING = "Sleep tight...",
		},
		BUNDLE = "Compressed supplies.",
        BUNDLEWRAP = "Essential for long travel.",
		BACKPACK = "For the weary traveller.",
		BACONEGGS = "Not usually my thing, but...",
		BANDAGE = "It doesn't work on me...",
		BASALT = "Stronger rocks.",
		BEARDHAIR = "Disgusting...",
		BEARGER = "A bear, and a badger. Looks tough.",
		BEARGERVEST = "It's warm and fuzzy...",
		ICEPACK = "A tiny cooler.",
		BEARGER_FUR = "A tuft of fur.",
		BEDROLL_STRAW = "It's not of much use to me...",
		BEEQUEEN = "It's the queen...",
		BEEQUEENHIVE = 
		{
			GENERIC = "The castle...",
			GROWING = "That's new.",
		},
        BEEQUEENHIVEGROWN = "The castle has expanded...",
        BEEGUARD = "Her personal guard...",
        HIVEHAT = "I'm the... queen?",
        MINISIGN =
        {
            GENERIC = "Organizational markers...",
            UNDRAWN = "Just a marker, right now...",
        },
        MINISIGN_ITEM = "Just needs to be placed...",
		BEE =
		{
			GENERIC = "Buzz buzz...",
			HELD = "Pocket bee.",
		},
		BEEBOX =
		{
			READY = "Plenty of honey to be had.",
			FULLHONEY = "Overflowing with sweetness.",
			GENERIC = "Full of bees.",
			NOHONEY = "Its honey's been stripped away...",
			SOMEHONEY = "Not enough honey to bother yet...",
			BURNT = "Farewell, box of bees...",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "Bursting with 'shrooms...",
			LOTS = "It's really getting there...",
			SOME = "It's begun...",
			EMPTY = "It needs a spore...",
			ROTTEN = "They won't grow on this...",
			BURNT = "Won't get anything like this...",
			SNOWCOVERED = "It's too cold for growth...",
		},
		BEEFALO =
		{
			FOLLOWER = "Following loyally.",
			GENERIC = "Like a meatier pocket mammoth.",
			NAKED = "Hope it isn't cold...",
			SLEEPING = "It's so tired...",
			--Domesticated states:
            DOMESTICATED = "It's friendly, now...",
            ORNERY = "It doesn't look happy...",
            RIDER = "It's properly mountable.",
            PUDGY = "This one ate a bit much...",
		},
		
		BEEFALOHAT = "A fuzzy hat.",
		BEEFALOWOOL = "It'll be useful, come winter...",
		BEEHAT = "Like a fencing mask, but for fencing hundreds of tiny, tiny swords.",
		BEESWAX = "So many uses...",
		BEEHIVE = "Full of little workers...",
		BEEMINE = "But are they time bees?",
		BEEMINE_MAXWELL = "A bomb full of tiny vampires...",
		BERRIES = "I hope they don't kill me...",
		BERRIES_COOKED = "Crunchier.",
		BERRIES_JUICY = "These ones are special...",
        BERRIES_JUICY_COOKED = "These are going to go bad really quickly...",
		BERRYBUSH =
		{
			BARREN = "It thirsts for poop.",
			WITHERED = "The heat overwhelmed it...",
			GENERIC = "Hopefully not poisonous.",
			PICKED = "They'll be back...",
			DISEASED = "That's inedible...",
			DISEASING = "Uh uh...",
			BURNING = "That's not how you cook berries...",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "It thirsts for poop.",
			WITHERED = "The heat overwhelmed it...",
			GENERIC = "Different. Hopefully still not poisonous.",
			PICKED = "They'll be back...",
			DISEASED = "That's inedible...",
			DISEASING = "Uh uh...",
			BURNING = "That's not how you cook berries...",
		},
		BIGFOOT = "Dodge it or die...",
		BIRDCAGE =
		{
			GENERIC = "A lonely cage.",
			OCCUPIED = "Imprisoned.",
			SLEEPING = "Probably dreaming of freedom...",
			HUNGRY = "Looks hungry...",
			STARVING = "Ah, did I neglect you? Sorry, friend...",
			DEAD = "Whoops...",
			SKELETON = "It'll be okay...",
		},
		BIRDTRAP = "Capture the seed generators.",
		CAVE_BANANA_BURNT = "Oh.",
		BIRD_EGG = "Egg.",
		BIRD_EGG_COOKED = "I usually hate eggs, but when you must...",
		BISHOP = "A dangerous chesspiece.",
		BLOWDART_FIRE = "Precision firestarting.",
		BLOWDART_SLEEP = "Don't shoot it the wrong way.",
		BLOWDART_PIPE = "Is it poisonous?",
		BLOWDART_YELLOW = "It fires electric darts...",
		BLUEAMULET = "Like ice...",
		BLUEGEM = "It seems to absorb heat...",
		BLUEPRINT =
		{
			COMMON = "A how-to.",
			RARE = "A very special how-to.",
		},
		SKETCH = "A concept sketch. Need a place to actually make it...",
		BELL_BLUEPRINT = "A how-to.",
		BLUE_CAP = "It's good for you, weirdly...",
		BLUE_CAP_COOKED = "To ease the mind...",
		BLUE_MUSHROOM =
		{
			GENERIC = "Blue 'shroom.",
			INGROUND = "Get out here...",
			PICKED = "Gone for now...",
		},
		BOARDS = "Logs made even more useful.",
		BONESHARD = "How you kill a skeleton.",
		BONESTEW = "Crunchy.",
		BUGNET = "For frolicking.",
		BUSHHAT = "Camouflage.",
		BUTTER = "Makes sense.",
		BUTTERFLY =
		{
			GENERIC = "For catching.",
			HELD = "Your wings could make a nice potion...",
		},
		BUTTERFLYMUFFIN = "Butterflies are a good replacement for butter, apparently.",
		BUTTERFLYWINGS = "For use in a potion.",
		BUZZARD = "They search for meat...",
		
		SHADOWDIGGER = "He multiplied...",
		
		CACTUS = 
		{
			GENERIC = "Knife plant.",
			PICKED = "Flat...ctus.",
		},
		CACTUS_MEAT_COOKED = "Crispy plant meat.",
		CACTUS_MEAT = "Meat from a plant.",
		CACTUS_FLOWER = "A beautiful flower from a deadly plant...",

		COLDFIRE =
		{
			EMBERS = "Soon only dark will remain...",
			GENERIC = "I like this one better...",
			HIGH = "Incredible.",
			LOW = "Fire fades...",
			NORMAL = "Could be better...",
			OUT = "Farewell, coldflame...",
		},
		CAMPFIRE =
		{
			EMBERS = "Soon only dark will remain...",
			GENERIC = "Warm and cozy...",
			HIGH = "A little hot...",
			LOW = "Fire fades...",
			NORMAL = "Could be better...",
			OUT = "Farewell, flame...",
		},
		CANE = "A wanderer's most basic tool.",
		CATCOON = "A trash cat.",
		CATCOONDEN = 
		{
			GENERIC = "It's where the trash cats live.",
			EMPTY = "The meowing has stopped.",
		},
		CATCOONHAT = "A warm hat for the colder days.",
		COONTAIL = "A little depressing.",
		CARROT = "Weird carrot.",
		CARROT_COOKED = "A little more appetizing...",
		CARROT_PLANTED = "Ground carrot.",
		CARROT_SEEDS = "Seeds for carrots.",
		CARTOGRAPHYDESK =
		{
			GENERIC = "An explorer's base of operations...",
			BURNING = "That's not an accurate map...",
			BURNT = "The dangers of exploration...",
		},
		WATERMELON_SEEDS = "Seeds for a tasteless fruit...",
		CAVE_FERN = "Fern.",
		CHARCOAL = "It gives skincare products magical properties.",
		CHESSPIECE_PAWN = "Sometimes it feels like that's all we are, too...",
        CHESSPIECE_ROOK =
        {
            GENERIC = "Big chess pieces.",
            STRUGGLE = "That's not normal...",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "Big chess pieces.",
            STRUGGLE = "That's not normal...",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "Big chess pieces.",
            STRUGGLE = "That's not normal...",
        },
        CHESSPIECE_MUSE = "She's the reason we're here...",
        CHESSPIECE_FORMAL = "He's the reason we're here...",
        CHESSPIECE_HORNUCOPIA = "It would look tasty, if it wasn't made of stone...",
        CHESSPIECE_PIPE = "Preserved unhealthy addictions...",
		CHESSPIECE_DEERCLOPS = "Groan...",
        CHESSPIECE_BEARGER = "Greedy little...",
        CHESSPIECE_MOOSEGOOSE = "A memorial to an acutely Canadian creature...",
        CHESSPIECE_DRAGONFLY = "Now its head is ours...",
        CHESSPIECE_CLAYHOUND = "From clay to stone...",
        CHESSPIECE_CLAYWARG = "At least it can't hurt us this way, probably...",
        CHESSJUNK1 = "Busted chess stuff...",
        CHESSJUNK2 = "Another pile of busted chess stuff.",
        CHESSJUNK3 = "Even more busted chess stuff.",
		CHESTER = "A walking chest. Convenient.",
		CHESTER_EYEBONE =
		{
			GENERIC = "It's staring...",
			WAITING = "It's resting.",
		},
		COOKEDMANDRAKE = "Not as creepy anymore...",
		COOKEDMEAT = "Good for my normal half.",
		COOKEDMONSTERMEAT = "It's probably still not a good idea...",
		COOKEDSMALLMEAT = "A snack for my normal half.",
		COOKPOT =
		{
			COOKING_LONG = "It'll be a while...",
			COOKING_SHORT = "Just about ready...",
			DONE = "The slow food is done.",
			EMPTY = "Nothing to eat in here...",
			BURNT = "That's not how you're supposed to do it...",
		},
		CORN = "To boil or to cook?",
		CORN_COOKED = "Not as nutritious.",
		CORN_SEEDS = "Seeds for corn.",
		CANARY =
		{
			GENERIC = "Bird, yellow flavour...",
			HELD = "Freedom is but a memory.",
		},
        CANARY_POISONED = "I'm sure it'll be okay...",

		CRITTERLAB = "I can hear meowing...",
        CRITTER_GLOMLING = "It's adorable...",
        CRITTER_DRAGONLING = "It's one of the dragonflies, but sized much more reasonably...",
		CRITTER_LAMB = "It's so soft...",
        CRITTER_PUPPY = "It's a puppy...",
        CRITTER_KITTEN = "It's a kitten...",
        CRITTER_PERDLING = "A tiny feathery companion...",

		CROW =
		{
			GENERIC = "It dresses like I do!",
			HELD = "Freedom is but a memory.",
		},
		CUTGRASS = "For crafts.",
		CUTREEDS = "Or are they sugar cane? Or bamboo?",
		CUTSTONE = "A little more civilized now.",
		DEADLYFEAST = "Death in a pot...",
		DEER =
		{
			GENERIC = "I mean... it's trying...?",
			ANTLER = "No, that's... still not right.",
		},
        DEER_ANTLER = "That's not... normal...",
        DEER_GEMMED = "They just get weirder...",
		DEERCLOPS = "Horrifying...",
		DEERCLOPS_EYEBALL = "Why this?",
		EYEBRELLAHAT =	"I'm sure there are better materials than this...",
		DEPLETED_GRASS =
		{
			GENERIC = "None left.",
		},
		GOGGLESHAT = "Nearly functional...",
        DESERTHAT = "Perfect for sandstorms...",
		DEVTOOL = "A special tool.",
		DEVTOOL_NODEV = "I'm not special enough to use this.",
		DIRTPILE = "It's me.",
		DIVININGROD =
		{
			COLD = "There's something, just barely...",
			GENERIC = "It can find a way out.",
			HOT = "Very close now.",
			WARM = "Closer, still...",
			WARMER = "Doing something right, I think...",
		},
		DIVININGRODBASE =
		{
			GENERIC = "Suspicious. Unnatural.",
			READY = "There's a hole for something...",
			UNLOCKED = "Makes a thing do things.",
		},
		DIVININGRODSTART = "Looks useful...",
		DRAGONFLY = "I thought these were supposed to be small...",
		ARMORDRAGONFLY = "It's flexible and keeps me safe from fire...",
		DRAGON_SCALES = "Warm to the touch.",
		DRAGONFLYCHEST = "Fire doesn't bother it.",
		DRAGONFLYFURNACE = 
		{
			HAMMERED = "It's a little damaged, I think...",
			GENERIC = "A little uncomfortable...", --no gems
			NORMAL = "Hot...", --one gem
			HIGH = "Get me away from this thing...", --two gems
		},
        
        HUTCH = "It's like Chester, but for me...",
        HUTCH_FISHBOWL =
        {
            GENERIC = "What would this be doing down in the caves?",
            WAITING = "Oh...",
        },
		LAVASPIT = 
		{
			HOT = "Fiery spit.",
			COOL = "Less fiery spit.",
		},
		LAVA_POND = "I definitely won't be swimming in that one...",
		LAVAE = "It's cute, but...",
		LAVAE_COCOON = "It's dead now...",
		LAVAE_PET = 
		{
			STARVING = "I really need to get it some food...",
			HUNGRY = "It must be hungry...",
			CONTENT = "It's happy...",
			GENERIC = "It's cute, but...",
		},
		LAVAE_EGG = 
		{
			GENERIC = "Magma egg. I hope whatever's in it isn't hostile...",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "It needs fire, quick...",
			COMFY = "Keeping warm.",
		},
		LAVAE_TOOTH = "It keeps the little firebug from killing me...",

		DRAGONFRUIT = "Scaly fruit.",
		DRAGONFRUIT_COOKED = "Looks tasty.",
		DRAGONFRUIT_SEEDS = "I can make more scaly fruits.",
		DRAGONPIE = "Scaly pie.",
		DRUMSTICK = "Ready to fry.",
		DRUMSTICK_COOKED = "Looks very edible.",
		DUG_BERRYBUSH = "Bush transplant.",
		DUG_BERRYBUSH_JUICY = "They're of better use at base...",
		DUG_GRASS = "Grass transplant.",
		DUG_MARSH_BUSH = "Bush transplant.",
		DUG_SAPLING = "Tree transplant.",
		DURIAN = "Looks dangerous and smells awful.",
		DURIAN_COOKED = "That made it smell even worse!",
		DURIAN_SEEDS = "Seeds for spiky, smelly fruit.",
		EARMUFFSHAT = "For colder days...",
		EGGPLANT = "Why's it named that?",
		EGGPLANT_COOKED = "Now it's a slab of not-egg.",
		EGGPLANT_SEEDS = "I can make more not-eggs.",
		
		ENDTABLE = 
		{
			BURNT = "A piece of decent furniture, destroyed...",
			GENERIC = "It's real furniture...",
			EMPTY = "Something's missing...",
			WILTED = "It'll be gone soon...",
			FRESHLIGHT = "It works as a lamp...",
			OLDLIGHT = "Better switch it out...", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE = 
		{
			BURNING = "Up in flames...",
			BURNT = "Any charcoal?",
			CHOPPED = "Down it goes...",
			POISON = "I don't think that's supposed to happen...",
			GENERIC = "Lush.",
		},
		ACORN = "It might be edible when it's cooked...",
        ACORN_SAPLING = "Growing up.",
		ACORN_COOKED = "Edible now.",
		BIRCHNUTDRAKE = "Angry nut.",
		EVERGREEN =
		{
			BURNING = "Up in flames...",
			BURNT = "Any charcoal?",
			CHOPPED = "Down it goes...",
			GENERIC = "Reminds me of home...",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "Up in flames...",
			BURNT = "Any charcoal?",
			CHOPPED = "Down it goes...",
			GENERIC = "Looks a little worse for wear...",
		},
		TWIGGYTREE = 
		{
			BURNING = "We might get some charcoal, at least...",
			BURNT = "There has to still be something of use...",
			CHOPPED = "Where's my shovel...",
			GENERIC = "It's a tree, but... not really...",			
			DISEASED = "Well now it's even worse looking...",
		},
		TWIGGY_NUT_SAPLING = "It's like a sapling, but... better...",
        TWIGGY_OLD = "Look at all of those...",
		TWIGGY_NUT = "It's like a super sapling...",
		EYEPLANT = "They just keep happening...",
		INSPECTSELF = "Still, uh... alive-ish?",
		FARMPLOT =
		{
			GENERIC = "Could use some seeds...",
			GROWING = "This'll take a while...",
			NEEDSFERTILIZER = "Needs poop...",
			BURNT = "C'mon, isn't ash a good fetilizer?",
		},
		FEATHERHAT = "For friends of birds.",
		FEATHER_CROW = "I could make a quill out of this...",
		FEATHER_ROBIN = "Wrong colour for a quill.",
		FEATHER_ROBIN_WINTER = "Wrong colour for a quill.",
		FEATHER_CANARY = "Wrong colour for a quill..",
		FEATHERPENCIL = "It's close enough...",
		FEM_PUPPET = "Trapped...",
		FIREFLIES =
		{
			GENERIC = "They light up the night.",
			HELD = "Useful bugs.",
		},
		FIREHOUND = "Hot dog.",
		FIREPIT =
		{
			EMBERS = "Soon only dark will remain...",
			GENERIC = "Warm and cozy...",
			HIGH = "A little hot...",
			LOW = "Fire fades...",
			NORMAL = "Could be better...",
			OUT = "I can bring it back...",
		},
		COLDFIREPIT =
		{
			EMBERS = "Soon only dark will remain.",
			GENERIC = "I like this one better...",
			HIGH = "Incredible.",
			LOW = "Fire fades...",
			NORMAL = "Could be better...",
			OUT = "I can bring it back...",
		},
		FIRESTAFF = "Ranged firestarting.",
		FIRESUPPRESSOR = 
		{	
			ON = "Keeps fire at bay.",
			OFF = "Fire is free.",
			LOWFUEL = "Could use some fuel...",
		},

		FISH = "Ick.",
		FISHINGROD = "I never have luck with these...",
		FISHSTICKS = "They look a little more appetizing now...",
		FISHTACOS = "Still a bit gross looking...",
		FISH_COOKED = "Might last a little longer...",
		FLINT = "Sharp rock. Very useful.",
		FLOWER = 
		{
            GENERIC = "Calms the nerves...",
            ROSE = "That one's different...",
        },
        FLOWER_WITHERED = "Sad.",
		FLOWERHAT = "Calms me down.",
		FLOWER_EVIL = "Not so calming...",
		FOLIAGE = "Useful for the desperate...",
		FOOTBALLHAT = "Fooba.",
		FOSSIL_PIECE = "Of the long dead...",
        FOSSIL_STALKER =
        {
			GENERIC = "We need more...",
			FUNNY = "Something went wrong at some point...",
			COMPLETE = "Fascinating...",
        },
        STALKER = "More of the undead...",
        STALKER_ATRIUM = "Oh, my...",
        STALKER_MINION = "There's so many...",
        THURIBLE = "It calls to the skeletons...",
        ATRIUM_OVERGROWTH = "I haven't studied this language...",
		FROG =
		{
			DEAD = "feelsbadman",
			GENERIC = "It's so fat.",
			SLEEPING = "Tired little guy.",
		},
		FROGGLEBUNWICH = "Could be good.",
		FROGLEGS = "It'll never hop again.",
		FROGLEGS_COOKED = "I hear they taste like chicken...",
		FRUITMEDLEY = "Fruit cup.",
		FURTUFT = "Furry.", 
		GEARS = "Useful crafting bits.",
		GHOST = "Celeste?!",
		GOLDENAXE = "Does this actually work?",
		GOLDENPICKAXE = "Does this actually work?",
		GOLDENPITCHFORK = "Does this actually work?",
		GOLDENSHOVEL = "Does this actually work?",
		GOLDNUGGET = "It's like money...",
		GRASS =
		{
			BARREN = "It needs poop...",
			WITHERED = "It's all withered from the heat...",
			BURNING = "There it goes...",
			GENERIC = "It's grass.",
			PICKED = "It ought to grow back.",
			DISEASED = "Well that's unpleasant...",
			DISEASING = "That's not good...",
		},
		GRASSGEKKO = 
		{
			GENERIC = "It's all covered in grass...",	
			DISEASED = "Poor thing...",
		},
		GREEN_CAP = "Edible, but not the most sensible thing to do...",
		GREEN_CAP_COOKED = "To ease the mind...",
		GREEN_MUSHROOM =
		{
			GENERIC = "Green 'shroom.",
			INGROUND = "Get out here...",
			PICKED = "Gone for now...",
		},
		GUNPOWDER = "Explosive.",
		HAMBAT = "I mean, I guess...",
		HAMMER = "Not a warhammer, unfortunately.",
		HEALINGSALVE = "It doesn't work on me...",
		HEATROCK =
		{
			FROZEN = "So cold it burns...",
			COLD = "A little chilly.",
			GENERIC = "Stores temperature.",
			WARM = "Warm to the touch.",
			HOT = "Getting hard to handle.",
		},
		HOME = "A house.",
		HOMESIGN =
		{
			GENERIC = "Some things are written...",
            UNWRITTEN = "Blank, but useful as a marker...",
			BURNT = "Nothing to read now...",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "It marks the path to somewhere...",
            UNWRITTEN = "Blank, but useful as a marker...",
			BURNT = "Nothing to read now...",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "It marks the path to somewhere...",
            UNWRITTEN = "Blank, but useful as a marker...",
			BURNT = "Nothing to read now...",
		},
		HONEY = "Sweet...",
		HONEYCOMB = "Tiny apartments...",
		HONEYHAM = "Sweet meat.",
		HONEYNUGGETS = "I'll never say it again, Celeste.",
		HORN = "Like a war horn, but for the tiny mammoths.",
		HOUND = "Bork.",
		HOUNDBONE = "Scattered bits of skeleton.",
		HOUNDMOUND = "I think it hides a tunnel.",
		ICEBOX = "Also known as a fridge.",
		ICEHAT = "A completely reasonable way to stay cool.",
		ICEHOUND = "Chilly pupper...",
		INSANITYROCK =
		{
			ACTIVE = "It's in the way...",
			INACTIVE = "An insignificant obstacle.",
		},
		JAMMYPRESERVES = "A bit messy...",
		
		KABOBS = "Stabbed and ready to eat.",
		KILLERBEE =
		{
			GENERIC = "Deudlier bee.",
			HELD = "Seems like a bad idea...",
		},
		KNIGHT = "A dangerous chesspiece...",
		KOALEFANT_SUMMER = "Adorable, but meaty.",
		KOALEFANT_WINTER = "Adorably warm, but meaty.",
		KRAMPUS = "Hey, those are my things!",
		KRAMPUS_SACK = "A special bag.",
		LEIF = "I wonder if fire works well?",
		LEIF_SPARSE = "I wonder if fire works well?",
		LIGHTER  = "This isn't mine...",
		LIGHTNING_ROD =
		{
			CHARGED = "Electric.",
			GENERIC = "Keeps things safe from the sky.",
		},
		LIGHTNINGGOAT = 
		{
			GENERIC = "Goats. Goats.",
			CHARGED = "I dream of electric... goats?",
		},
		LIGHTNINGGOATHORN = "This doesn't feel safe to hold...",
		GOATMILK = "Like licking a battery.",
		LITTLE_WALRUS = "Where'd it get that kilt?",
		LIVINGLOG = "Trees with faces. Not the most unusual thing.",
		LOG =
		{
			BURNING = "Up in flames...",
			GENERIC = "Wood. Useful for lots of things.",
		},
		LUCY = "It's indestructible...",
		LUREPLANT = "That doesn't look like real meat.",
		LUREPLANTBULB = "I guess I can make more of them.",
		MALE_PUPPET = "Trapped...",

		MANDRAKE_ACTIVE = "Very creepy. I don't like this.",
		MANDRAKE_PLANTED = "Suspicious plant.",
		MANDRAKE = "Very healthy, but with a catch...",

		MANDRAKESOUP = "Cooked out the sleeping part.",
		MANDRAKE_COOKED = "A bit of a hassle to make, but it might just be worth it...",
		MAPSCROLL = "For our adventuring types...",
		MARBLE = "Fancy rock.",
		MARBLEBEAN = "I'm sure this makes sense...",
        MARBLEBEAN_SAPLING = "It's actually working...",
        MARBLESHRUB = "Sure, why not...",
		MARBLEPILLAR = "It's made of fancy rock.",
		MARBLETREE = "Why, though?",
		MARSH_BUSH =
		{
			BURNING = "Even more dangerous...",
			GENERIC = "Knife bush.",
			PICKED = "Ow.",
		},
		BURNT_MARSH_BUSH = "Looks less dangerous now...",
		MARSH_PLANT = "A plant.",
		MARSH_TREE =
		{
			BURNING = "Even more dangerous...",
			BURNT = "Looks less dangerous now...",
			CHOPPED = "Can't hurt anyone now.",
			GENERIC = "Knife tree.",
		},
		MAXWELL = "Dapper. Evil.",
		MAXWELLHEAD = "That's a big, smug head.",
		MAXWELLLIGHT = "Light on a motion sensor.",
		MAXWELLLOCK = "Evil lock needs an evil key...",
		MAXWELLTHRONE = "A very sketchy throne...",
		MEAT = "Still bloody...",
		MEATBALLS = "Mysterious, nutritious balls of meat.",
		MEATRACK =
		{
			DONE = "Finally...",
			DRYING = "Slow food, boring food...",
			DRYINGINRAIN = "That'll slow it down...",
			GENERIC = "It makes jerky.",
			BURNT = "That's not how you cook meat.",
		},
		MEAT_DRIED = "All dried out. The worst kind.",
		MERM = "I can smell it from here...",
		MERMHEAD = 
		{
			GENERIC = "A savage decoration.",
			BURNT = "Charred a bit too much...",
		},
		MERMHOUSE = 
		{
			GENERIC = "More a closet than anything...",
			BURNT = "It better learn to live like a nomad...",
		},
		MINERHAT = "Light to fight.",
		MONKEY = "It seems shifty...",
		MONKEYBARREL = "I remember these...",
		MONSTERLASAGNA = "It looks normal enough, but it's definitely still dangerous...",
		FLOWERSALAD = "Flowers, in a more nutritious format.",
        ICECREAM = "A food from a different place...",
        WATERMELONICLE = "Reminds me of childhood...",
        TRAILMIX = "A hiker's fuel.",
        HOTCHILI = "Spicy. I love spicy.",
        GUACAMOLE = "I don't think that's how you make this...",
		MONSTERMEAT = "Dangerous meat...",
		MONSTERMEAT_DRIED = "Still questionable, and now all dried out...",
		MOOSE = "That's... a very Canadian creature...",
		MOOSE_NESTING_GROUND = "That's where the babies go...",
		MOOSEEGG = "Looks like that part is goose.",
		MOSSLING = "More like a goose like this.",
		FEATHERFAN = "A fancier method of cooling down.",
        MINIFAN = "Nearly automatic cooling.",
		GOOSE_FEATHER = "An exceptionally fluffy feather.",
		STAFF_TORNADO = "A staff to control the wind.",
		MOSQUITO =
		{
			GENERIC = "Tiny vampiric brethren.",
			HELD = "I'd like that blood back, friend.",
		},
		MOSQUITOSACK = "It makes me kind of hungry.",
		MOUND =
		{
			DUG = "Why?",
			GENERIC = "There's probably loot to be had, but that'd be awfully disrespectful...",
		},
		NIGHTLIGHT = "What a strange light source...",
		NIGHTMAREFUEL = "Is this real?",
		NIGHTSWORD = "I'm still not sure if this is actually real...",
		NITRE = "Yellow powdery rock.",
		ONEMANBAND = "It seems to control semi-intelligent creatures...",
		OASISLAKE = "It seems special...",
		PANDORASCHEST = "Loot with risk.",
		PANFLUTE = "Sleep now.",
		PAPYRUS = "Ready for writing.",
		WAXPAPER = "For later compression...",
		PENGUIN = "So loud...",
		PERD = "It wants to steal our berries...",
		PEROGIES = "\"Poor people dumplings\"...",
		PETALS = "Now what?",
		PETALS_EVIL = "Not so nice...",
		PHLEGM = "Pretty much useless...",
		PICKAXE = "For the mining type...",
		PIGGYBACK = "More storage, at a cost to mobility.",
		PIGHEAD = 
		{	
			GENERIC = "I think I read a book about this...",
			BURNT = "That's not how you make pork...",
		},
		PIGHOUSE =
		{
			FULL = "Sounds packed...",
			GENERIC = "More a closet than anything...",
			LIGHTSOUT = "Awfully rude...",
			BURNT = "Maybe if they were a bit more inviting...",
		},
		PIGKING = "Disgusting, but rich...",
		PIGMAN =
		{
			DEAD = "Best not let it go to waste...",
			FOLLOWER = "A porky ally...",
			GENERIC = "They're almost civilized...",
			GUARD = "Looks a bit more prepared.",
			WEREPIG = "Were-creatures. My natural enemies...",
		},
		PIGSKIN = "Useful leather.",
		PIGTENT = "A leathery tent.",
		PIGTORCH = "It brings the pigs.",
		PINECONE = "I should plant it...",
        PINECONE_SAPLING = "It's working on it...",
        LUMPY_SAPLING = "Is it working?",
		PITCHFORK = "Good for terraforming.",
		PLANTMEAT = "Definitely not meat...",
		PLANTMEAT_COOKED = "Crispier, at least...",
		PLANT_NORMAL =
		{
			GENERIC = "A plant.",
			GROWING = "It's working on it...",
			READY = "It's ready.",
			WITHERED = "It got too hot...",
		},
		POMEGRANATE = "Fancy fruit.",
		POMEGRANATE_COOKED = "Seedy...",
		POMEGRANATE_SEEDS = "Seeds for fancy fruit.",
		POND = "Looks deep...",
		POOP = "If I must...",
		PORTABLECOOKPOT_ITEM = "How useful...",
		FERTILIZER = "It looks a bit more civilized, but it's still just poop...",
		PUMPKIN = "It's Halloween.",
		PUMPKINCOOKIE = "Some spooky sweets.",
		PUMPKIN_COOKED = "I wonder if it tastes like pumpkin pie...",
		PUMPKIN_LANTERN = "Now it's really Halloween...",
		PUMPKIN_SEEDS = "Seeds for growing Halloween.",
		PURPLEAMULET = "It wants me to wear it...",
		PURPLEGEM = "It feels unnatural...",
		RABBIT =
		{
			GENERIC = "A scared little bunny...",
			HELD = "Feels cruel...",
		},
		RABBITHOLE = 
		{
			GENERIC = "For placing traps upon.",
			SPRING = "They're gone for now...",
		},
		RAINOMETER = 
		{	
			GENERIC = "It predicts weather.",
			BURNT = "Couldn't predict that, I guess...",
		},
		RAINCOAT = "Ugly, but useful...",
		RAINHAT = "To keep a dry head.",
		RATATOUILLE = "I'm surprised it doesn't actually have any rats in it...",
		RAZOR = "For when you're desperate for a shave...",
		REDGEM = "It's kind of warm...",
		RED_CAP = "Bad for your health.",
		RED_CAP_COOKED = "Still a bad idea...",
		RED_MUSHROOM =
		{
			GENERIC = "Red 'shroom.",
			INGROUND = "Get out here...",
			PICKED = "Gone for now...",
		},
		REEDS =
		{
			BURNING = "Can't cook those sausages...",
			GENERIC = "Water sausage!",
			PICKED = "I'll have to come back later...",
		},
        RELIC = "Old furniture...",
        RUINS_RUBBLE = "It looks ancient...",
        RUBBLE = "Rocky junk...",
		RUINSRELIC_PLATE = "That's something I haven't seen in a while...",
		RESEARCHLAB = 
		{	
			GENERIC = "A wonderfully useful machine.",
			BURNT = "A tragedy...",
		},
		RESEARCHLAB2 = 
		{
			GENERIC = "Incredible...",
			BURNT = "A tragedy...",
		},
		RESEARCHLAB3 = 
		{
			GENERIC = "I'm not sure about this...",
			BURNT = "Perhaps it was for the best...",
		},
		RESEARCHLAB4 = 
		{
			GENERIC = "This isn't science anymore...",
			BURNT = "I feel a bit more at ease like this...",
		},
		RESURRECTIONSTATUE = 
		{
			GENERIC = "Makes me feel a litte better...",
			BURNT = "Probably won't work anymore...",
		},
		RESURRECTIONSTONE = "Noted.",
		ROBIN =
		{
			GENERIC = "Pretty.",
			HELD = "It doesn't like captivity...",
		},
		ROBIN_WINTER =
		{
			GENERIC = "I'm surprised any birds stayed...",
			HELD = "Warmer with me.",
		},
		ROBOT_PUPPET = "Trapped...",
		ROCK_LIGHT =
		{
			GENERIC = "It was lava once...",
			OUT = "It was lava once...",
			LOW = "It's cooling off...",
			NORMAL = "Nice and warm.",
		},
		CAVEIN_BOULDER =
        {
            GENERIC = "I think I can move it...",
            RAISED = "I can't get to it...",
        },
		ROCK = "Rocky.",
		PETRIFIED_TREE = "I guess that's how that works...",
        ROCK_PETRIFIED_TREE = "I guess that's how that works...",
        ROCK_PETRIFIED_TREE_OLD = "I guess that's how that works...",
		ROCK_ICE = 
		{
			GENERIC = "I don't think that's how glaciers work...",
			MELTED = "It's just a puddle...",
		},
		ROCK_ICE_MELTED = "It's just a puddle...",
		ICE = "Solid water.",
		ROCKS = "Infinitely useful.",
        ROOK = "A dangerous chesspiece.",
		ROPE = "A fine length of rope.",
		ROTTENEGG = "Disgusting...",
		ROYAL_JELLY = "It's unreasonably sweet...",
        JELLYBEAN = "A sugary treat that I don't get most of the benefit of...",
        SADDLE_BASIC = "I guess this is happening...",
        SADDLE_RACE = "This'll be fun...",
        SADDLE_WAR = "Not exactly a war horse, but...",
        SADDLEHORN = "This could take a saddle off.",
        SALTLICK = "That's one big block of mineral...",
        BRUSH = "An apology for all the shaving...",
		SANITYROCK =
		{
			ACTIVE = "It's in the way...",
			INACTIVE = "An insignificant obstacle.",
		},
		SAPLING =
		{
			BURNING = "It'll never grow up...",
			WITHERED = "It's overheated...",
			GENERIC = "I can steal its twigs.",
			PICKED = "They'll grow back...",
			DISEASED = "Well that's unpleasant...",
			DISEASING = "That's not good...",
		},
		SCARECROW = 
   		{
			GENERIC = "It scares off the ones for quills. This won't do...",
			BURNING = "Soon it will be ash.",
			BURNT = "Now the crows will return, and I can make more quills.",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "It's a spinning plate.",
			BLOCK = "Ready for pottery.",
			SCULPTURE = "It's done.",
			BURNT = "Shame it wasn't made of stone.",
   		},
        SCULPTURE_KNIGHTHEAD = "I feel like I should carry it...",
		SCULPTURE_KNIGHTBODY = 
		{
			COVERED = "It's a statue...",
			UNCOVERED = "Sorta busted...",
			FINISHED = "Now what did I do that for?",
			READY = "Something's happening...",
		},
        SCULPTURE_BISHOPHEAD = "I feel like I should carry it...",
		SCULPTURE_BISHOPBODY = 
		{
			COVERED = "It's a statue...",
			UNCOVERED = "Sorta busted...",
			FINISHED = "Now what did I do that for?",
			READY = "Something's happening...",
		},
        SCULPTURE_ROOKNOSE = "I feel like I should carry it...",
		SCULPTURE_ROOKBODY = 
		{
			COVERED = "It's a statue...",
			UNCOVERED = "Sorta busted...",
			FINISHED = "Now what did I do that for?",
			READY = "Something's happening...",
		},
        GARGOYLE_HOUND = "Classic decoration.",
        GARGOYLE_WEREPIG = "Classic decoration.",
		SEEDS = "Emergency food.",
		SEEDS_COOKED = "Prepared emergency food.",
		SEWING_KIT = "I can fix my clothes...",
		SEWING_TAPE = "For repair.",
		SHOVEL = "Keeps things tidy.",
		SILK = "Useful string.",
		SKELETON = "It better not come back alive...",
		SCORCHED_SKELETON = "Less likely to come back alive.",
		SKULLCHEST = "Ominous...",
		SMALLBIRD =
		{
			GENERIC = "Not tall yet.",
			HUNGRY = "It's hungry...",
			STARVING = "It's starving...",
		},
		SMALLMEAT = "Still bloody...",
		SMALLMEAT_DRIED = "A little bit of preserved meat.",
		SPAT = "That's horrible...",
		SPEAR = "Not my weapon of choice, but it'll do.",
		SPEAR_WATHGRITHR = "Very poky.",
		WATHGRITHRHAT = "Proper armour.",
		SPIDER =
		{
			DEAD = "At least it didn't spit out a bunch of smaller spiders.",
			GENERIC = "Glad I'm not arachnophobic.",
			SLEEPING = "Good time for a sneak attack...",
		},
		SPIDERDEN = "It might be useful...",
		SPIDEREGGSACK = "It's not moving, is it?",
		SPIDERGLAND = "The more of these the better.",
		SPIDERHAT = "It makes me the queen...",
		SPIDERQUEEN = "This one /does/ spit out smaller spiders...",
		SPIDER_WARRIOR =
		{
			DEAD = "Tough little guy.",
			GENERIC = "This might make me arachnophobic...",
			SLEEPING = "Good time for a sneak attack...",
		},
		SPOILED_FOOD = "It's useful.",
		STAGEHAND =
        {
			AWAKE = "Just don't touch me...",
			HIDING = "A regular table, I'm sure...",
        },
        STATUE_MARBLE = 
        {
            GENERIC = "Looks fancy...",
            TYPE1 = "Missing something?",
            TYPE2 = "It's like it's trying to make me laugh.",
        },
		STATUEHARP = "It lost its mind...",
		STATUEMAXWELL = "He's the reason I'm here...",
		STEELWOOL = "From steel sheep.",
		STINGER = "Butt knife.",
		STRAWHAT = "For pirates.",
		STUFFEDEGGPLANT = "With a mushy center.",
		SUNKBOAT = "Doesn't help me like that...",
		SWEATERVEST = "A noisy vest.",
		REFLECTIVEVEST = "Always vests.",
		HAWAIIANSHIRT = "Gaudy...",
		TAFFY = "It's... candy?",
		TALLBIRD = "A flightless bird.",
		TALLBIRDEGG = "Tall egg.",
		TALLBIRDEGG_COOKED = "Super egg.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "A bit chilly.",
			GENERIC = "I think it's hatching.",
			HOT = "It might be a little too warm...",
			LONG = "It'll be a while yet...",
			SHORT = "It has to hatch soon, right?",
		},
		TALLBIRDNEST =
		{
			GENERIC = "An egg, ready for stealing.",
			PICKED = "Not much there yet...",
		},
		TEENBIRD =
		{
			GENERIC = "It's getting there.",
			HUNGRY = "It's getting pretty hungry...",
			STARVING = "It needs food.",
		},
		TELEBASE =	-- Duplicated
		{
			VALID = "It's ready.",
			GEMS = "Needs more purple gems...",
		},
		GEMSOCKET = 
		{
			VALID = "Looks good.",
			GEMS = "Needs a gem.",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "It can bring me somewhere else...",
			GENERIC = "I think it can take me away...",
			LOCKED = "It's missing some things...",
			PARTIAL = "Just about ready.",
		},
		TELEPORTATO_BOX = "Time and space seem to warp around it...",
		TELEPORTATO_CRANK = "Time and space seem to warp around it...",
		TELEPORTATO_POTATO = "Time and space seem to warp around it...",
		TELEPORTATO_RING = "Time and space seem to warp around it...",
		TELESTAFF = "Suspicious adventure.",
		TENT = 
		{
			GENERIC = "It's not of much use to me...",
			BURNT = "I'm bad at sleeping anyway...",
		},
		SIESTAHUT = 
		{
			GENERIC = "Sleep the day away...",
			BURNT = "I'm bad at sleeping anyway.",
		},
		TENTACLE = "It makes me uncomfortable...",
		TENTACLESPIKE = "Slimy, but powerful.",
		TENTACLESPOTS = "Not quite sure what this is...",
		TENTACLE_PILLAR = "That's... a really big tentacle.",
        TENTACLE_PILLAR_HOLE = "In I... go?",
		TENTACLE_PILLAR_ARM = "It's small but dangerous.",
		TENTACLE_GARDEN = "Yet another slimy pole.",
		TOPHAT = "From a fancier place.",
		TORCH = "Primitive mobile light.",
		TRANSISTOR = "Bringing back technology.",
		TRAP = "Inescapable.",
		TRAP_TEETH = "Automated violence.",
		TRAP_TEETH_MAXWELL = "Looks dangerous...",
		TREASURECHEST = 
		{
			GENERIC = "Organized storage. I hope.",
			BURNT = "Need something less... flammable.",
		},
		TREASURECHEST_TRAP = "Wait...",
		SACRED_CHEST = 
		{
			GENERIC = "It seems... deadly.",
			LOCKED = "Inaccessible...",
		},
		TREECLUMP = "It's in the way...",
		
		TRINKET_1 = "Useful for trade.", --Melty Marbles
		TRINKET_2 = "Useful for trade.", --Fake Kazoo
		TRINKET_3 = "Useful for trade.", --Gord's Knot
		TRINKET_4 = "Useful for trade.", --Gnome
		TRINKET_5 = "Useful for trade.", --Tiny Rocketship
		TRINKET_6 = "Useful for trade.", --Frazzled Wires
		TRINKET_7 = "Useful for trade.", --Ball and Cup
		TRINKET_8 = "Useful for trade.", --Hardened Rubber Bung
		TRINKET_9 = "Useful for trade.", --Mismatched Buttons
		TRINKET_10 = "Useful for trade.", --Second-hand Dentures
		TRINKET_11 = "Useful for trade.", --Lying Robot
		TRINKET_12 = "Useful for trade.", --Dessicated Tentacle
		TRINKET_13 = "Useful for trade.", --Gnomette
		TRINKET_14 = "Useful for trade.", -- Leaky Teacup
		TRINKET_15 = "Useful for trade.", -- White Bishop
		TRINKET_16 = "Useful for trade.", -- Black Bishop
		TRINKET_17 = "Useful for trade.", -- Bent Spork
		TRINKET_18 = "Useful for trade.", -- Toy Trojan Horse
		TRINKET_19 = "Useful for trade.", -- Unbalanced Top
		TRINKET_20 = "Useful for trade.", -- Back Scratcher
		TRINKET_21 = "Useful for trade.", -- Beaten Beater
		TRINKET_22 = "Useful for trade.", -- Frayed Yarn
		TRINKET_23 = "Useful for trade.", -- Shoe Horn
		TRINKET_24 = "Useful for trade.", -- Lucky Cat Jar
		TRINKET_25 = "Useful for trade.", -- Air Unfreshener
		TRINKET_26 = "Useful for trade.", -- Potato Cup
		TRINKET_27 = "Useful for trade.", -- Wire Hanger
		TRINKET_28 = "Useful for trade.", --Rook
        TRINKET_29 = "Useful for trade.", --Rook
        TRINKET_30 = "Useful for trade.", --Knight
        TRINKET_31 = "Useful for trade.", --Knight
        TRINKET_32 = "Useful for trade.", --Cubic Zirconia Ball
        TRINKET_33 = "Useful for trade.", --Spider Ring
        TRINKET_34 = "Useful for trade.", --Monkey Paw
        TRINKET_35 = "Useful for trade.", --Empty Elixir
        TRINKET_36 = "In case I need a spare.", --Faux fangs
        TRINKET_37 = "It's better this way...", --Broken Stake
		
		HALLOWEENCANDY_1 = "It's... candy?",
        HALLOWEENCANDY_2 = "It's... candy?",
        HALLOWEENCANDY_3 = "It's... gross...",
        HALLOWEENCANDY_4 = "It's... candy?",
        HALLOWEENCANDY_5 = "It's... candy?",
        HALLOWEENCANDY_6 = "It's... candy?",
        HALLOWEENCANDY_7 = "It's... candy?",
        HALLOWEENCANDY_8 = "It's... candy?",
        HALLOWEENCANDY_9 = "It's... candy?",
        HALLOWEENCANDY_10 = "It's... candy?",
        HALLOWEENCANDY_11 = "It's... candy?",
        CANDYBAG = "Storage for treats.",

        DRAGONHEADHAT = "This costume requires friends.",
        DRAGONBODYHAT = "This costume requires friends.",
        DRAGONTAILHAT = "This costume requires friends.",
        PERDSHRINE =
        {
            GENERIC = "It's a little off-putting...",
            EMPTY = "It seems lonely.",
            BURNT = "That's not how you cook turkey.",
        },
        REDLANTERN = "An exotic light source.",
        LUCKY_GOLDNUGGET = "This is... different.",
        FIRECRACKERS = "Ker Blam",
        PERDFAN = "Looks like it'll create an awful lot of wind...",
        REDPOUCH = "Loot?",

		BISHOP_CHARGE_HIT = "Ow.",
		TRUNKVEST_SUMMER = "A warmish vest.",
		TRUNKVEST_WINTER = "A warmer vest.",
		TRUNK_COOKED = "A meaty trunk.",
		TRUNK_SUMMER = "It's kind of warm...",
		TRUNK_WINTER = "It's pretty warm...",
		TUMBLEWEED = "Like a dirty, mobile treasure chest.",
		TURKEYDINNER = "Any honey mustard?",
		TWIGS = "Sticks, infinitely useful.",
		UMBRELLA = "Keeps me a bit more dry.",
		GRASS_UMBRELLA = "Keeps me a little bit more dry.",
		UNIMPLEMENTED = "That's not in the game yet.",
		WAFFLES = "Buttery and sweet.",
		WALL_HAY = 
		{	
			GENERIC = "It'll work for now.",
			BURNT = "Very flammable.",
		},
		WALL_HAY_ITEM = "It won't last...",
		WALL_STONE = "The beginnings of a castle.",
		WALL_STONE_ITEM = "They bring safety.",
		WALL_RUINS = "It's very old...",
		WALL_RUINS_ITEM = "I wonder how sturdy it is after all these years?",
		WALL_WOOD = 
		{
			GENERIC = "Primal, but decently effective.",
			BURNT = "Still flammable.",
		},
		WALL_WOOD_ITEM = "Might be more a fence than a wall.",
		WALL_MOONROCK = "Out of this world.",
		WALL_MOONROCK_ITEM = "Feels sturdy, but light.",
		FENCE = "A fence of wood.",
        FENCE_ITEM = "All the bits needed to make a fence.",
        FENCE_GATE = "Incredible, a wall that opens!",
        FENCE_GATE_ITEM = "All the bits needed to make a gate.",
		WALRUS = "What a sophisticated meat sack.",
		WALRUSHAT = "Where's the bagpipes?",
		WALRUS_CAMP =
		{
			EMPTY = "Left all alone...",
			GENERIC = "Looks really nice in there...",
		},
		WALRUS_TUSK = "Like a really big fang...",
		WARDROBE = 
		{
			GENERIC = "Black or grey. What to choose...",
            BURNING = "Can't wear fire.",
			BURNT = "Can't wear ashes.",
		},
		WARG = "That one's extra wolfy.",
		WASPHIVE = "The barracks.",
		WATERBALLOON = "Watery artillery.",
		WATERMELON = "Tastes like nothing.",
		WATERMELON_COOKED = "Doesn't seem like the best idea.",
		WATERMELONHAT = "Some people wear these to fooba games back home...",
		WAXWELLJOURNAL = "Angry book.",
		WETGOOP = "Why...",
		WHIP = "I've got an aversion to these...",
		WINTERHAT = "Naturally.",
		WINTEROMETER = 
		{
			GENERIC = "To know how much to wear.",
			BURNT = "I think it says \"850\".",
		},
		
		WINTER_TREE =
        {
            BURNT = "That sort of ruins the mood...",
            BURNING = "There goes Christmas.",
            CANDECORATE = "It's Christmas time.",
            YOUNG = "Getting there...",
        },
		WINTER_TREESTAND = 
		{
			GENERIC = "It's wanting something piney and cone-shaped.",
            BURNT = "That sort of ruins the mood...",
		},
        WINTER_ORNAMENT = "Sure, why not.",
        WINTER_ORNAMENTLIGHT = "Gaudy.",
        WINTER_ORNAMENTBOSS = "Notably more gaudy.",

        WINTER_FOOD1 = "Ginger flesh.", --gingerbread cookie
        WINTER_FOOD2 = "Hopefully they're the good ones.", --sugar cookie
        WINTER_FOOD3 = "Overwhelmingly minty.", --candy cane
        WINTER_FOOD4 = "I'd rather not...", --fruitcake
        WINTER_FOOD5 = "Chocolate. I can't believe it...", --yule log cake
        WINTER_FOOD6 = "Not my usual cup of pudding, but times are desperate...", --plum pudding
        WINTER_FOOD7 = "Does this have alcohol in it?", --apple cider
        WINTER_FOOD8 = "Perpetually hot. Incredible...", --hot cocoa
        WINTER_FOOD9 = "Does this have alcohol in it?", --eggnog

        KLAUS = "Here we go again...",
        KLAUS_SACK = "There's loot to be had.",
		KLAUSSACKKEY = "An extravagantly shaped horn. Also a key.",
		WORMHOLE =
		{
			GENERIC = "Mildly disturbing.",
			OPEN = "In I go?",
		},
		WORMHOLE_LIMITED = "Looks even worse...",
		ACCOMPLISHMENT_SHRINE = "'chievos.",        
		LIVINGTREE = "It's almost like a heart tree...",
		ICESTAFF = "Chilling.",
		REVIVER = "For my allies.",
		SHADOWHEART = "A heart of darkness...",
        ATRIUM_RUBBLE = 
        {
			LINE_1 = "It shows people. Insect people. Suffering.",
			LINE_2 = "Something strange happened. I can't tell what...",
			LINE_3 = "A darkness envelops them, giving them power. Unfathomable power...",
			LINE_4 = "They're abandoning their bodies, transcending their physical forms...",
			LINE_5 = "It's a city. Incredibly advanced. What could have happened?",
		},
        ATRIUM_STATUE = "It doesn't seem fully real.",
        ATRIUM_LIGHT = 
        {
			ON = "A truly unsettling light.",
			OFF = "Something must power it.",
		},
        ATRIUM_GATE =
        {
			ON = "Back in working order.",
			OFF = "The essential components are still intact.",
			CHARGING = "It's gaining power.",
			DESTABILIZING = "The gateway is destabilizing.",
			COOLDOWN = "It needs time to recover. Me too.",
        },
        ATRIUM_KEY = "There is power emanating from it.",
		LIFEINJECTOR = "For those prone to death.",
		SKELETON_PLAYER =
		{
			MALE = "%s died messing with %s...",
			FEMALE = "%s died messing with %s...",
			ROBOT = "It died messing with %s...",
			DEFAULT = "%s died messing with %s...",
		},
		HUMANMEAT = "Still bloody...",
		HUMANMEAT_COOKED = "When desperate...",
		HUMANMEAT_DRIED = "Preserved desperation.",
		ROCK_MOON = "That looks unnatural...",
		MOONROCKNUGGET = "Rocks from space. Light, but strong.",
		MOONROCKCRATER = "It holds shiny things...",

        REDMOONEYE = "A landmark, red flavour...",
        PURPLEMOONEYE = "A landmark, purple flavour...",
        GREENMOONEYE = "A landmark, green flavour...",
        ORANGEMOONEYE = "A landmark, orange flavour...",
        YELLOWMOONEYE = "A landmark, yellow flavour...",
        BLUEMOONEYE = "A landmark, blue flavour...",
		
		--Arena Event
        LAVAARENA_BOARLORD = "That's the big boss...",
        BOARRIOR = "That's not practical...",
        BOARON = "It looks like it's missing half its senses...",
        PEGHOOK = "Armour piercing acid!",
        TRAILS = "Pointy!",
        TURTILLUS = "Even pointier!",
        SNAPPER = "The spikes make for more practical armour...",
        
        LAVAARENA_PORTAL = 
        {
            ON = "Off I go...",
            GENERIC = "We came in that way... I doubt we can go out that way...",
        },
        LAVAARENA_KEYHOLE = "Need a key...",
		LAVAARENA_KEYHOLE_FULL = "That'll do.",
        LAVAARENA_BATTLESTANDARD = "That thing makes them stronger...",
        LAVAARENA_SPAWNER = "That's the source...",

        HEALINGSTAFF = "I'm not sure about this...",
        FIREBALLSTAFF = "This is dangerous...",
        HAMMER_MJOLNIR = "A bit... heavy...",
        SPEAR_GUNGNIR = "Not my favourite weapon, but...",
        BLOWDART_LAVA = "Projectile style...",
        BLOWDART_LAVA2 = "Mouth-propelled darts...",
        LAVAARENA_LUCY = "Sometimes you just need to improvise...",
        WEBBER_SPIDER_MINION = "H-hey buddies...",
        BOOK_FOSSIL = "A spellbook..?",
		LAVAARENA_BERNIE = "He should be able to soak some damage, at least...",
		SPEAR_LANCE = "Ready to fly..?",
		BOOK_ELEMENTAL = "A spellbook..?",
		LAVAARENA_ELEMENTAL = "O-oh boy...",

   		LAVAARENA_ARMORLIGHT = "The most basic...",
		LAVAARENA_ARMORLIGHTSPEED = "It lets me go faster. I like it.",
		LAVAARENA_ARMORMEDIUM = "Reliable ol' wood armour...",
		LAVAARENA_ARMORMEDIUMDAMAGER = "It makes me feel a bit more dangerous...",
		LAVAARENA_ARMORMEDIUMRECHARGER = "Feels a bit special...",
		LAVAARENA_ARMORHEAVY = "Now we're getting into the hard stuff...",
		LAVAARENA_ARMOREXTRAHEAVY = "It makes me slower...",

		LAVAARENA_FEATHERCROWNHAT = "More speed? Yes please...",
        LAVAARENA_HEALINGFLOWERHAT = "It even helps my weird healing...",
        LAVAARENA_LIGHTDAMAGERHAT = "The horns make me more dangerous.",
        LAVAARENA_STRONGDAMAGERHAT = "Intimidating...",
        LAVAARENA_TIARAFLOWERPETALSHAT = "Like some kind of forest elf...",
        LAVAARENA_EYECIRCLETHAT = "For the mages...",
        LAVAARENA_RECHARGERHAT = "It makes your mind a little faster...",
        LAVAARENA_HEALINGGARLANDHAT = "Regenerative...",
        LAVAARENA_CROWNDAMAGERHAT = "Wow this looks impractical.",
		
		SMALLBLOOD = "It's barely anything...",
		BLOOD = "Nothing special here...",
		LARGEBLOOD = "That's a whole lot of blood...",
		MONSTERBLOOD = "This still won't do me any good...",
		HUMANBLOOD = "Thanks, I guess...",
	},
	DESCRIBE_GENERIC = "A thing!",
	DESCRIBE_TOODARK = "Can't see very much at all...",
	DESCRIBE_SMOLDERING = "It's about to go up in flames...",
	EAT_FOOD =
	{
		TALLBIRDEGG_CRACKED = "That felt immoral...",
	},
}
