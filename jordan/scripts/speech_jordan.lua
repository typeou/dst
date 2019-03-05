return {

	ACTIONFAIL =
	{
        REPAIR =
        {
            WRONGPIECE = "Shoot, it doesn't even fit!",
        },
        BUILD =
        {
            MOUNTED = "Lemme get down first.",
            HASPET = "I've already got a pet.",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "How about I don't do that?",
			GENERIC = "Maybe later.",
			NOBITS = "Neither hide nor hair.",
		},
		STORE =
		{
			GENERIC = "Maybe we need another.",
			NOTALLOWED = "That can't go in there.",
			INUSE = "Can I put something in real quick?",
		},
		RUMMAGE =
		{	
			GENERIC = "No can do.",
			INUSE = "Can I use this after?",
		},
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "Shoot, wrong one.",
        	KLAUS = "Got a lot going on right now!",
        },
        COOK =
        {
            GENERIC = "I can't do that.",
            INUSE = "Can I use this after?",
            TOOFAR = "The idea is... far-fetched.",
        },
        GIVE =
        {
            GENERIC = "Better put somewhere else.",
            DEAD = "Would a burial gift be inappropriate?",
            SLEEPING = "Ah, didn't see you were asleep.",
            BUSY = "Hold up, check this out.",
            ABIGAILHEART = "Why won't it work?",
            GHOSTHEART = "Sorry, I think this is better kept with me.",
            NOTGEM = "Wouldn't work.",
            WRONGGEM = "...this one's not doing anything.",
            NOTSTAFF = "It almost fits! Well... not really.",
            MUSHROOMFARM_NEEDSSHROOM = "I'm pretty sure everything's here, just need the 'shroom.",
            MUSHROOMFARM_NEEDSLOG = "I think everything's here, I just need one of those logs.",
            SLOTFULL = "Think I need to take that one out first.",
            DUPLICATE = "No reason to reinvent the wheel.",
            NOTSCULPTABLE = "I don't think I could pull that off.",
            NOTATRIUMKEY = "Hold on, I've definitely got the right one... somewhere.",
            CANTSHADOWREVIVE = "Am I doing this wrong?",
            WRONGSHADOWFORM = "What's wrong with this?",
        },
        GIVETOPLAYER =
        {
        	FULL = "Here, let me hold something.",
            DEAD = "Would a burial gift be inappropriate?",
            SLEEPING = "Ah, didn't see you were asleep.",
            BUSY = "I've got something for you.",
        },
        GIVEALLTOPLAYER =
        {
        	FULL = "Can you make space?",
            DEAD = "Would a burial gift be inappropriate?",
            SLEEPING = "Ah, didn't see you were asleep.",
            BUSY = "I've got more for you.",
        },
        WRITE =
        {
            GENERIC = "I think it's fine as is.",
            INUSE = "Can I use this after?",
        },
        DRAW =
        {
            NOIMAGE = "If I'm going to do this, I need a reference.",
        },
        CHANGEIN =
        {
            GENERIC = "No can do.",
            BURNING = "Weren't my shoes in there?",
            INUSE = "Someone in there?",
        },
        ATTUNE =
        {
            NOHEALTH = "As much as I want to, this'll probably kill me.",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "Go ahead and kill that first, I'll wait.",
            INUSE = "Ah, go ahead, I'll walk.",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "Go ahead and kill that first, I'll wait.",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "I'm already familiar with this.",
            CANTLEARN = "I don't think I'll ever make sense of this.",

            --MapRecorder/MapExplorer
            WRONGWORLD = "This map was made for some other place.",
        },
        WRAPBUNDLE =
        {
            EMPTY = "I never was good with these.",
        },
	},
	ACTIONFAIL_GENERIC = "No can do.",
	ANNOUNCE_DIG_DISEASE_WARNING = "It'll be fine.",
	ANNOUNCE_PICK_DISEASE_WARNING = "Uh, is it supposed to smell like that?",
	ANNOUNCE_ADVENTUREFAIL = "Ah, there's still next time.",
    ANNOUNCE_MOUNT_LOWHEALTH = "I wouldn't make it carry me like this.",
	ANNOUNCE_BEES = "Hit the deck!",
	ANNOUNCE_BOOMERANG = "I was supposed to catch it?!",
	ANNOUNCE_CHARLIE = "Someone there? Hello?",
	ANNOUNCE_CHARLIE_ATTACK = "Ow! What...",
	ANNOUNCE_COLD = "Can't stop shaking...",
	ANNOUNCE_HOT = "Ah... I'm going to faint.",
	ANNOUNCE_CRAFTING_FAIL = "Uh, wait, I think I'm forgetting something.",
	ANNOUNCE_DEERCLOPS = "What's that? Is it coming towards us?",
	ANNOUNCE_CAVEIN = "Ah-oh.",
	ANNOUNCE_ANTLION_SINKHOLE = 
	{
		"What's going on?",
		"Under us!",
		"Of all times...?",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "For you!",
        "Keep the change.",
        "No no, I insist.",
	},
	ANNOUNCE_SACREDCHEST_YES = "Impending lootations.",
	ANNOUNCE_SACREDCHEST_NO = "What do you want from me?!",
	ANNOUNCE_DUSK = "Getting late, I should finish up.",
	ANNOUNCE_EAT =
	{
		GENERIC = "",
		PAINFUL = "That was a bad idea.",
		SPOILED = "Ack.",
		STALE = "Waste not, want not.",
		INVALID = "Somehow, I doubt that'd settle well.",
		YUCKY = "No way, not like this.",
	},
    ANNOUNCE_ENCUMBERED =
    {
        "Hah...",
        "Little further... lot further...",
        "Goodbye, youthful back...",
        "It's cutting into my fingers...",
        "Doesn't hurt...!",
        "Paaah... hah...",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING = 
    {
		"Well, I'm done here!",
		"What on earth...",
		"Good time to book it.",
	},
    ANNOUNCE_RUINS_RESET = "Hey, my progress!",
    ANNOUNCE_SNARED = "Hey, not fair!",
    ANNOUNCE_REPELLED = "What is this force?", --what is this for?
	ANNOUNCE_ENTER_DARK = "Into the darkness.",
	ANNOUNCE_ENTER_LIGHT = "And into the light.",
	ANNOUNCE_FREEDOM = "Liberated!", 
	ANNOUNCE_HIGHRESEARCH = "Oh, so that's how it works!", --archaic 
	ANNOUNCE_HOUNDS = "Again...?", --warning of periodic hound attacks
	ANNOUNCE_WORMS = "...well, I had a good run.",
	ANNOUNCE_HUNGRY = "I should eat, soon.",
	ANNOUNCE_HUNT_BEAST_NEARBY = "Hey, is that it in the distance?",
	ANNOUNCE_HUNT_LOST_TRAIL = "Seems I'm out of leads.",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "Wherever it went, the prints must've gone.",
	ANNOUNCE_INV_FULL = "Gotta leave something behind.",
	ANNOUNCE_KNOCKEDOUT = "Ow... what time is it?",
	ANNOUNCE_LOWRESEARCH = "I'm not sure I understand...", --archaic 
	ANNOUNCE_MOSQUITOS = "Get away! Getawaygetawaygetawaygetaway",
    ANNOUNCE_NOWARDROBEONFIRE = "Why did I put my clothes in such a combustible place?!",
    ANNOUNCE_NODANGERGIFT = "Shoo! This present is mine!",
    ANNOUNCE_NOMOUNTEDGIFT = "I might drop it from up here...",
	ANNOUNCE_NODANGERSLEEP = "Go away, I'll fight you in the morning!",
	ANNOUNCE_NODAYSLEEP = "As much as I'd like to, there's work to be done.",
	ANNOUNCE_NODAYSLEEP_CAVE = "Not quite time to turn in.",
	ANNOUNCE_NOHUNGERSLEEP = "Can't sleep on an empty stomach.",
	ANNOUNCE_NOSLEEPONFIRE = "Of all times to be on fire, it chooses now...",
	ANNOUNCE_NODANGERSIESTA = "I'm tired, can we just fight later?",
	ANNOUNCE_NONIGHTSIESTA = "I can think of more appropriate places for turning in.",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "If I'm sleeping in this, I'm waiting until the creepy things down here go to sleep.",
	ANNOUNCE_NOHUNGERSIESTA = "I should look for food first while it's still light out.",
	ANNOUNCE_NODANGERAFK = "Can't turn back now!",
	ANNOUNCE_NO_TRAP = "That easy, huh?", --I don't think this is used for anything
	ANNOUNCE_PECKED = "Hey, that hurts!",
	ANNOUNCE_QUAKE = "That doesn't sound good.",
	ANNOUNCE_RESEARCH = "That wasn't so hard.", --archaic 
	ANNOUNCE_SHELTER = "It's fine under here, should I stay awhile?", --moving under a tree during rain
	ANNOUNCE_THORNS = "Did that... yup, I'm bleeding.",
	ANNOUNCE_BURNT = "Tss...",
	ANNOUNCE_TORCH_OUT = "Come back, I'm not done!",
	ANNOUNCE_THURIBLE_OUT = "It's been thuribly depleted.",
	ANNOUNCE_FAN_OUT = "My fan is gone with the wind.",
    ANNOUNCE_COMPASS_OUT = "Stupid thing's junked.",
	ANNOUNCE_TRAP_WENT_OFF = "Whups.",
	ANNOUNCE_UNIMPLEMENTED = "OW! I don't think it's ready yet.",
	ANNOUNCE_WORMHOLE = "I'm... not sure I want to experience that again.",
	ANNOUNCE_TOWNPORTALTELEPORT = "Still in one piece.",
	ANNOUNCE_CANFIX = " It's due for a repair.", --\n
	ANNOUNCE_ACCOMPLISHMENT = "Hey, I did it!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "Started from nowhere, now I'm here.",	
	ANNOUNCE_INSUFFICIENTFERTILIZER = "I think it could do with a bit more.",
	ANNOUNCE_TOOL_SLIP = "Whups.",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "Wah! That was close!",
	ANNOUNCE_TOADESCAPING = "Hey, where you going?",
	ANNOUNCE_TOADESCAPED = "And there it goes...",

	ANNOUNCE_DAMP = "Feels nice!",
	ANNOUNCE_WET = "It's getting in my socks...", 
	ANNOUNCE_WETTER = "Smells like wet animal. It's probably me.",
	ANNOUNCE_SOAKED = "Just hang me out to dry.",
	
	ANNOUNCE_BECOMEGHOST = "oOOOOoooo...",
	ANNOUNCE_GHOSTDRAIN = "My humanity is about to start slipping away...", --is this ever used?
	ANNOUNCE_PETRIFED_TREES = "Whatever that was, it didn't sound human.",
	ANNOUNCE_KLAUS_ENRAGE = "Oh, come ON!",
	ANNOUNCE_KLAUS_UNCHAINED = "You'll wish you stayed dead!",
	ANNOUNCE_KLAUS_CALLFORHELP = "Here comes his boys!",

    ANNOUNCE_ROYALTY = --said while prostrating before someone who's wearing a bee queen crown (if you're idle)
    {
    	"So regal!",
    	"Sovereign.",
    	"I would die for you.",
    },

	BATTLECRY =
	{
		GENERIC = "Try and hit me!",
		PIG = "No shame in running!",
		PREY = "You can't outrun me!",
		SPIDER = "",
		SPIDER_WARRIOR = "Your mistake!",
		DEER = "",
	},
	COMBAT_QUIT = --I'm not sure these are ever used
	{
		GENERIC = "Live and let live.",
		PIG = "Some other time?",
		PREY = "I'll need a different approach.",
		SPIDER = "Let's do this again later!",
		SPIDER_WARRIOR = "Doubt I could've handled it...",
	},
	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "Whoever made this didn't want you going back through it.",
		ANTLION = 
		{
			GENERIC = "It wants something from me.",
			VERYHAPPY = "I think we're on good terms.",
			UNHAPPY = "It looks mad.",
		},
		ANTLIONTRINKET = "I missed out on these as a child.",
		SANDSPIKE = "Close one!",
        SANDBLOCK = "Get out of my way!",
        GLASSSPIKE = "I could put this at the bottom of a pit... but I'd probably forget it's there.",
        GLASSBLOCK = "It came out pretty good.",
		ABIGAIL_FLOWER = 
		{ 
			GENERIC = "Haven't seen a flower like that before.",
			LONG = "It hurts my soul to look at that thing.",
			MEDIUM = "It's giving me the creeps.",
			SOON = "Something is up with that flower!",
			HAUNTED_POCKET = "I don't think I should hang on to this.",
			HAUNTED_GROUND = "I'd die to find out what it does.",
		},

		BALLOONS_EMPTY = "Oddly depressing.",
		BALLOON = "Huh, what's the occasion?",

		BERNIE_INACTIVE =
		{
			BROKEN = "Figured he wouldn't last much longer.",
			GENERIC = "It's been through a lot.",
		},

		BERNIE_ACTIVE = "...something was up with those berries.",
		
		BOOK_BIRDS = "\"Did you know? Birds don't have bladders!\" I didn't!",
		BOOK_TENTACLES = "To judge a book by its cover, it looks disturbing.",
		BOOK_GARDENING = "Twelve pages alone encompass aphid control.",
		BOOK_SLEEP = "Is this just morse code?",
		BOOK_BRIMSTONE = "Doomsday trash.",

        PLAYER =
        {
            GENERIC = "Greetings, %s!",
            ATTACKER = "%s, you're scaring me.",
            MURDERER = "What have you done?",
            REVIVER = "%s, friend of ghosts.",
            GHOST = "Stay with us, %s!",
            FIRESTARTER = "I'll trust your judgement, %s.",
        },
		WILSON = 
		{
			GENERIC = "Quite the 'do, %s.",
			ATTACKER = "Been hitting the mind-altering substances, %s?",
			MURDERER = "",
			REVIVER = "If the undead can be explained, %s found a way.",
			GHOST = "I suppose %s is earthbound by unfounded discoveries.",
			FIRESTARTER = "Is that a controlled experiment, %s?",
		},
		WOLFGANG = 
		{
			GENERIC = "Looking fit, %s.",
			ATTACKER = "Let's not start a fight with the strongman...",
			MURDERER = "Murderer! I can take you!",
			REVIVER = "%s is just a big teddy bear.",
			GHOST = "Never thought I'd see you go down, %s.",
			FIRESTARTER = "You can't actually \"fight\" fire, %s!",
		},
		WAXWELL = 
		{
			GENERIC = "You're all dolled up, %s. What's the occasion?",
			ATTACKER = "Controlling your anger is classy too, %s.",
			MURDERER = "%s has been consumed by the dark.",
			REVIVER = "I knew you weren't so bad, %s.",
			GHOST = "Don't look at me like that, %s! I'm working on it!",
			FIRESTARTER = "%s's just asking to get roasted.",
		},
		WX78 = 
		{
			GENERIC = "Good day to you, %s!",
			ATTACKER = "Where's %s's manual for hostile target parameters?",
			MURDERER = "%s! You've violated the first law!",
			REVIVER = "The resurrection was calculated.",
			GHOST = "I always thought %s could use a heart. Now I'm certain!",
			FIRESTARTER = "You look like you're gonna melt, %s. What happened?",
		},
		WILLOW = 
		{
			GENERIC = "Good day to you, %s!",
			ATTACKER = "%s is holding that lighter pretty tightly...",
			MURDERER = "Murderer! Arsonist!",
			REVIVER = "So too does %s keep the flame of life burning.",
			GHOST = "You can't be extinguished yet, %s.",
			FIRESTARTER = "Fire's fine, %s, just keep it safe.",
		},
		WENDY = 
		{
			GENERIC = "If I could be half as articulate as you, %s.",
			ATTACKER = "Violence is no way to cope, %s.",
			MURDERER = "Murderer!",
			REVIVER = "I hope we find a way to do the same for your sister.",
			GHOST = "I'm seeing double! I'd better concoct a heart for %s.",
			FIRESTARTER = "I know you set those flames, %s.",
		},
		WOODIE = 
		{
			GENERIC = "Greetings, %s!",
			ATTACKER = "%s has been a bit of a sap lately...",
			MURDERER = "Murder! Bring me an axe and we'll get in the swing of things!",
			REVIVER = "%s saved everyone's backbacon.",
			GHOST = "Does \"universal\" coverage include the void, %s?",
			BEAVER = "You still in there, %s?",
			BEAVERGHOST = "Will you bea-very mad if I don't revive you, %s?",
			FIRESTARTER = "Don't burn yourself out, %s.",
		},
		WICKERBOTTOM = 
		{
			GENERIC = "Settle down %s, I'll do the heavy work.",
			ATTACKER = "Don't go senile on us, %s.",
			MURDERER = "Not you, %s...",
			REVIVER = "I have deep respect for %s's practical theorems.",
			GHOST = "About those late fees, %s...",
			FIRESTARTER = "I'm sure you had a very clever reason for that fire.",
		},
		WES = 
		{
			GENERIC = "Greetings, %s!",
			ATTACKER = "%s is silent, but deadly...",
			MURDERER = "Mime this!",
			REVIVER = "%s thinks outside the invisible box.",
			GHOST = "How do you say \"I'll conduct a revival device\" in mime?",
			FIRESTARTER = "Wait, don't tell me. You lit a fire.",
		},
		WEBBER = 
		{
			GENERIC = "Ah! Oh, I mean, hi %s!",
			ATTACKER = "I'm gonna roll up a piece of papyrus newspaper, just in case.",
			MURDERER = "Murderer! I'll squash you, %s!",
			REVIVER = "%s is playing well with others.",
			GHOST = "%s is really buggin' me for a heart.",
			FIRESTARTER = "We need to have a group meeting about fire safety.",
		},
		WATHGRITHR = 
		{
			GENERIC = "Hey, %s. Wanna go fight something?",
			ATTACKER = "I hope you were just sparring, %s.",
			MURDERER = "You overestimate your power, %s!",
			REVIVER = "You'll go to Valhalla yet, cömrade.",
			GHOST = "Suppose you haven't proven yourself yet, %s.",
			FIRESTARTER = "Was the fire a tactical choice, or?",
		},
		WALANI =
        {
            GENERIC = "Hang ten, %s. What does that actually mean, anyway?",
            ATTACKER = "Uncool, %s.",
            MURDERER = "What have you done?",
            REVIVER = "%s, friend of ghosts.",
            GHOST = "Stay with us, %s!",
            FIRESTARTER = "I could've built you a fire to dry off, %s...",
        },
		WOODLEGS =
        {
            GENERIC = "Captain. I said, Captain!",
            ATTACKER = "I think the scurvy's getting to %s.",
            MURDERER = "You're going down %s, and it won't be with a ship!",
            REVIVER = "%s, friend of ghosts.",
            GHOST = "You're not going to Davey's if I have anything to say about it, %s.",
            FIRESTARTER = "I'll trust your judgement, %s.",
        },
		WILBUR =
        {
            GENERIC = "Greetings, %s!",
            ATTACKER = "Don't push it, %s, even if you are royalty.",
            MURDERER = "Your reign ends here!",
            REVIVER = "%s, friend of ghosts.",
            GHOST = "Stay with us, %s!",
            FIRESTARTER = "I'll trust your judgement, %s.",
        },
		WARLY =
        {
            GENERIC = "Hey %s, need supplies? Taste test, even?",
            ATTACKER = "%s, you're scaring me.",
            MURDERER = "What have you done?",
            REVIVER = "%s, friend of ghosts.",
            GHOST = "Stay with us, %s!",
            FIRESTARTER = "I'll trust your judgement, %s.",
        },
        KENDOV = --Wendov
        {
            GENERIC = "Keeping sated, %s?",
            ATTACKER = "%s, you're scaring me.",
            MURDERER = "%s? I don't believe it...",
            REVIVER = "I hope I can return the favor, %s.",
            GHOST = "Keep straying from the light, %s.",
            FIRESTARTER = "You had a good reason to burn that, I'm sure.",
        },
        CELESTE =
        {
            GENERIC = ", %s.",
            ATTACKER = "%s, you're scaring me.",
            MURDERER = "What have you done?",
            REVIVER = "%s, friend of ghosts.",
            GHOST = "Looking the part, %s.",
            FIRESTARTER = "I'll trust your judgement, %s.",
        },
        REDD =
        {
            GENERIC = "How are you on supplies, %s?",
            ATTACKER = "Something on your mind, man?",
            MURDERER = "What have you done, %s?",
            REVIVER = "With %s around, we have nothing to fear.",
            GHOST = "Stay with us, %s!",
            FIRESTARTER = "I'll trust your judgement, %s.",
        },
        LLOYD =
        {
            GENERIC = "You look in good spirits, %s.",
            ATTACKER = "%s, you're scaring me.",
            MURDERER = "What have you done, %s?",
            REVIVER = "%s, friend of ghosts.",
            GHOST = "Stay with us, %s!",
            FIRESTARTER = "I'll trust your judgement, %s.",
        },
        HANNAH =
        {
            GENERIC = "Greetings, %s!",
            ATTACKER = "%s, you're scaring me.",
            MURDERER = "What have you done, %s?",
            REVIVER = "%s, friend of ghosts.",
            GHOST = "Stay with us, %s!",
            FIRESTARTER = "I'll trust your judgement, %s.",
        },
        LONEY =
        {
            GENERIC = "Have I met my match?",
            ATTACKER = "%s, you're scaring me.",
            MURDERER = "What have you done, %s?",
            REVIVER = "%s, friend of ghosts.",
            GHOST = "Stay with us, %s!",
            FIRESTARTER = "I'll trust your judgement, %s.",
        },
        JORDAN =
        {
            GENERIC = "Well, this is a little disturbing.",
            ATTACKER = "Looking spooked, %s.",
            MURDERER = "What have I... you, done, %s?",
            REVIVER = "%s, friend of ghosts.",
            GHOST = "I'm still me. What are you, then?",
            FIRESTARTER = "I wonder how I feel about this, %s. Would you?",
        },
        JAMES =
        {
            GENERIC = "You're the muscle of the group, and don't you forget it.",
            ATTACKER = "Easy there, %s.",
            MURDERER = "What have you done?",
            REVIVER = "%s, friend of ghosts.",
            GHOST = "Nobody could replace you, %s.",
            FIRESTARTER = "I'll trust your judgement, %s.",
        },
		ENGINEER =
        {
            GENERIC = "I need a dispenser, %s! Nah, just kidding.",
            ATTACKER = "%s, stop spy-checking!",
            MURDERER = "Let's find out what happens when an offense class fights support!",
            REVIVER = "%s, credit to team.",
            GHOST = "Stay with us, %s!",
            FIRESTARTER = "That's not really your job, %s...",
        },
        MEDIC =
        {
            GENERIC = "Don't you worry about me, %s.",
            ATTACKER = "Yes, %s, you can hurt allies!",
            MURDERER = "You're about to wish you chose a different profession!",
            REVIVER = "Fine work, %s.",
            GHOST = "Stay with us, %s!",
            FIRESTARTER = "If you think it'll help, %s...",
        },
        MIGRATION_PORTAL = 
        {
            GENERIC = "Just need another to link up with.",
            OPEN = "I'm not sure about this...",
            FULL = "\"Currently unavailable. Please wait...\"",
        },
		GLOMMER = "Nature has an interesting sense of humor.",
		GLOMMERFLOWER = 
		{
			GENERIC = "Suddenly it feels less pretty when I hold it.",
			DEAD = "Tragic.",
		},
		GLOMMERWINGS = "How did these fly?",
		GLOMMERFUEL = "How repugnant!",
		BELL = "Looks percussive.",
		STATUEGLOMMER = 
		{	
			GENERIC = "Wonder what inspired this piece.",
			EMPTY = "Hope the sculptor won't get mad.",
		},

        LAVA_POND_ROCK = "The crispiest rock you ever did see.",

		WEBBERSKULL = "If spiders have exoskeletons, what explains this?",
		WORMLIGHT = "Dare I bite...?",
		WORMLIGHT_LESSER = "Kinda wrinkled.",
		WORM =
		{
		    PLANT = "I have a bad feeling about that one.",
		    DIRT = "Foreboding.",
		    WORM = "Just what I needed...",
		},
        WORMLIGHT_PLANT = "Absolutely.",
		MOLE =
		{
			HELD = "I'm watching you.",
			UNDERGROUND = "Woah, what's that?",
			ABOVEGROUND = "Hey! Stop that!",
		},
		MOLEHILL = "I'm pretty sure I didn't dig this.",
		MOLEHAT = "Wanna see the world through a mole's eyes? No?",

		EEL = "I hope the slime cooks out.",
		EEL_COOKED = "Should be interesting.",
		UNAGI = "I guess I'll try anything once.",
		EYETURRET = "Stop looking at me! Oh, look what I'm talking to...",
		EYETURRET_ITEM = "I hope I don't accidentally squish the eye or something.",
		MINOTAURHORN = "It feels more... flesh, than bone.",
		MINOTAURCHEST = "I'm at the edge of my proverbial seat.",
		THULECITE_PIECES = "Hardly museum-worthy in this state.",
		POND_ALGAE = "Isn't this kind of stuff usually underwater?.",
		GREENSTAFF = "Fastenings recoil in its presence.",
		GIFT = "\"No peeking\".",
        GIFTWRAP = "I hope I can do this right.",
		POTTEDFERN = "Low maintenance, fortunately.",
        SUCCULENT_POTTED = "Fragrant.",
		SUCCULENT_PLANT = "The prequel to soap.",
		SUCCULENT_PICKED = "Great for skin. I'm not so sure with ingestion.",
		SENTRYWARD = "That's an entirely scientific mapping tool.",
        TOWNPORTAL =
        {
			GENERIC = "This pyramid controls the sands.",
			ACTIVE = "Ready for departiculation.",
		},
        TOWNPORTALTALISMAN = 
        {
			GENERIC = "Its form shifts slightly under my fingers.",
			ACTIVE = "Probable emergency exit, if it works.",
		},
        WETPAPER = "I hope it dries off soon.",
        WETPOUCH = "If this had someone's name on it, it's melted off by now.",
        MOONROCK_PIECES = "I could probably break that.",
        MOONBASE =
        {
            GENERIC = "There's a hole in the middle for something to go in.",
            BROKEN = "It's all smashed up.",
            STAFFED = "Now what?",
            WRONGSTAFF = "I have a distinct feeling this isn't right.",
            MOONSTAFF = "The stone lit it up somehow.",
        },
        MOONDIAL = 
        {
			GENERIC = "Water amplifies the science, allowing us to measure the moon.",
			NIGHT_NEW = "It's a new moon.",
			NIGHT_WAX = "The moon is waxing.",
			NIGHT_FULL = "It's a full moon.",
			NIGHT_WANE = "The moon is waning.",
			CAVE = "There's no moon down here to measure.",
        },
 		MOWER = "I like the cut of this blade.",
		MACHETE = "It has a very familiar feel to it.",
		GOLDENMACHETE = "It's rather heavy.",
		OBSIDIANMACHETE = "It's hot to the touch.",
		BOOK_METEOR = "The foreword just says \"Hope you like dragoons.\"",
		THULECITE = "Whatever this is, I don't think it's metal.",
		ARMORRUINS = "It's fitting, but there's no telling how it'll hold together.",
		ARMORSKELETON = "Now I can look the part of an occultist.",
		RUINS_BAT = "Barbaric, but that's war for you.",
		RUINSHAT = "If I ever escape this world, I'm pawning this in a heartbeat.",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "All is well.",
            WARN = "Getting pretty magical around here.",
            WAXING = "It's becoming more concentrated!",
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
		GREENGEM = "It's strangely entrancing.",
		RELIC = "Ancient household goods.",
		MULTITOOL_AXE_PICKAXE = "Now this, this is a tool.",
		ORANGESTAFF = "Teleportation catalyst, useful in a bind.",
		YELLOWAMULET = "It makes me feel great, I don't want to let go of it.",
		GREENAMULET = "I've never felt as innovative as I have putting my hand on this.",
		SLURPERPELT = "Doesn't look all that much different dead.",	

		SLURPER = "It's so hairy!",
		SLURPER_PELT = "Doesn't look all that much different dead.",
		ARMORSLURPER = "Isn't this still ali... you know, let's not answer that.",
		ORANGEAMULET = "This can fill my pockets with garbage for me!",
		YELLOWSTAFF = "There's a lot of power contained in this.",
		YELLOWGEM = "It houses an energy I can only describe as \"benevolent\".",
		ORANGEGEM = "Translucent, with no obvious blemishes.",
        OPALSTAFF = "It's scientifically proven that gems look better on top of sticks.",
        OPALPRECIOUSGEM = "Has a pastel aesthetic about it.",
        TELEBASE = 
		{
			VALID = "Ready for transport!",
			GEMS = "I oughta power this up.",
		},
		GEMSOCKET = 
		{
			VALID = "Looks ready.",
			GEMS = "I stuck a self-reminder here: \"PURPLE gem\".",
		},
		STAFFLIGHT = "I'll only use this if I really have to.",
        STAFFCOLDLIGHT = "Brr! Chilling.",

        ANCIENT_ALTAR = "An ancient and mysterious structure.",

        ANCIENT_ALTAR_BROKEN = "This seems to be broken.",

        ANCIENT_STATUE = "It seems to throb out of tune with the world.",

        LICHEN = "Interesting shapes. That one looks like... a moose head.",
		CUTLICHEN = "A staple of SOME kind of foreign food, probably.",

		CAVE_BANANA = "Puh-tass-ee-uhm.",
		CAVE_BANANA_COOKED = "Yum!",
		CAVE_BANANA_TREE = "It's dubiously photosynthetical.",
		ROCKY = "It has terrifying claws.",
		
		COMPASS =
		{
			GENERIC = "The answer to my navigational issues.",
			N = "North.",
			S = "South.",
			E = "East.",
			W = "West.",
			NE = "Northeast.",
			SE = "Southeast.",
			NW = "Northwest.",
			SW = "Southwest.",
		},

        HOUNDSTOOTH = "These really hurt!",
        ARMORSNURTLESHELL = "I always was something of a hermit.",
        BAT = "That's not normal.",
        BATBAT = "Surprisingly solid!",
        BATWING = "It's like a bat's hand. A flappy, aerodynamic hand.",
        BATWING_COOKED = "Looks tricky to eat, but I'll try anything once.",
        BATCAVE = "I don't want to wake them.",
        BEDROLL_FURRY = "I just want to sleep in it all day...",
        BUNNYMAN = "I don't like the way it looks.",
        FLOWER_CAVE = "A luminescent plant, how does it work?",
        GUANO = "It's still effective fertilizer, I guess?",
        LANTERN = "I just like holding it.",
        LIGHTBULB = "Hefty, with a faint glow.",
        MANRABBIT_TAIL = "It's pretty soft, and not worse for wear.",
        MUSHROOMHAT = "Is this a cap made of a cap, or just a cap being used as... nevermind.",
        MUSHROOM_LIGHT2 =
        {
            ON = "Mushrooms can be so pretty when done right.",
            OFF = "Neat!",
            BURNT = "Smells terrible, let's get rid of this.",
        },
        MUSHROOM_LIGHT =
        {
            ON = "I like it.",
            OFF = "Hey, that's pretty clever.",
            BURNT = "What a waste.",
        },
        MUSHROOMBOMB = "Watch out!",
        SHROOM_SKIN = "Pretty!... grotesque looking!",
        TOADSTOOL_CAP =
        {
            EMPTY = "Just a hole in the ground.",
            INGROUND = "There's something poking out.",
            GENERIC = "That toadstool's just asking to be cut down.",
        },
        TOADSTOOL =
        {
            GENERIC = "Yeesh! I'm not kissing that!",
            RAGE = "He's hopping mad now!",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "How scientific!",
            BURNT = "How im-morel!",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "That mushroom got too big for its own good.",
            BLOOM = "You can't tell from far away, but it's quite smelly.",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "These used to grow in my bathroom.",
            BLOOM = "I'm mildly offended by this.",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "A magic mushroom?",
            BLOOM = "It's trying to reproduce.",
        },
        MUSHTREE_TALL_WEBBED = "The spiders thought this one was important.",
        SPORE_TALL =
        {
            GENERIC = "It's just drifting around.",
            HELD = "I'll keep a little light in my pocket.",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "A whimsical fungal sprite!",
            HELD = "I'll keep a little light in my pocket.",
        },
        SPORE_SMALL =
        {
            GENERIC = "That's a sight for spore eyes.",
            HELD = "I'll keep a little light in my pocket.",
        },
        RABBITHOUSE =
        {
            GENERIC = "That's not a real carrot.",
            BURNT = "That's not a real roasted carrot.",
        },
        SLURTLE = "It kind of smells like gas.",
        SLURTLE_SHELLPIECES = "A puzzle with no solution.",
        SLURTLEHAT = "That would mess up my hair.",
        SLURTLEHOLE = "A den of \"ew\".",
        SLURTLESLIME = "If it wasn't useful, I wouldn't touch it.",
        SNURTLE = "He's less gross, but still gross.",
        SPIDER_HIDER = "Gah! More spiders!",
        SPIDER_SPITTER = "I hate spiders!",
        SPIDERHOLE = "It's encrusted with old webbing.",
        SPIDERHOLE_ROCK = "It's encrusted with old webbing.",
        STALAGMITE = "Looks like a rock to me.",
        STALAGMITE_TALL = "Rocks, rocks, rocks, rocks...",
        TREASURECHEST_TRAP = "How convenient!",

        TURF_CARPETFLOOR = "It's a tiny piece of civilization.",
        TURF_CHECKERFLOOR = "I love it.",
        TURF_DIRT = "Fairly serviceable topsoil.",
        TURF_FOREST = "It's quite rich.",
        TURF_GRASS = "Green as can be.",
        TURF_MARSH = "A reminder of all those tentacle thrashings I've suffered.",
        TURF_ROAD = "It's foundation for my castle.",
        TURF_ROCKY = "I could... make a path with this.",
        TURF_SAVANNA = "It's the road nomads walk.",
        TURF_WOODFLOOR = "They're not creaky or anything.",

		TURF_CAVE="How disgusting.",
		TURF_FUNGUS="It's a nice shade.", --blue
		TURF_SINKHOLE="I'll need a long bath after handling this.", --slimey turf
		TURF_UNDERROCK="It's seen many an earthquake.",
		TURF_MUD="Yet another ground type.",

		TURF_DECIDUOUS = "It's the floor of autumn.",
		TURF_SANDY = "I hate it when it gets in my boots.",
		TURF_BADLANDS = "Not much to say about this.", --unimplemented?
		TURF_DESERTDIRT = "It took some work, but out did the packed dirt come.",
		TURF_FUNGUS_GREEN = "Does it get any greener than this?",
		TURF_FUNGUS_RED = "It's quite absorbant.",
		TURF_DRAGONFLY = "I'd like not to step on this on a hot day.",

		POWCAKE = "These will probably out-live me.",
        CAVE_ENTRANCE = "I get the impression it's here for a reason.",
        CAVE_ENTRANCE_RUINS = "Dare my curiosity get the better of me?",
       
       	CAVE_ENTRANCE_OPEN = 
        {
            GENERIC = "I'll check it out later.",
            OPEN = "Hopefully I'll return in one piece.",
            FULL = "I'll keep watch up here until that party is done.",
        },
        CAVE_EXIT = 
        {
            GENERIC = "I'll just stay down here, I suppose.",
            OPEN = "I've had enough discovery for now.",
            FULL = "The surface is too crowded!",
        },

		MAXWELLPHONOGRAPH = "So that's where the music was coming from.",
		BOOMERANG = "Returning projectile, in theory.",
		PIGGUARD = "Kinda savage-looking.",
		ABIGAIL = "Abigail, was it? That's a nice name.",
		ADVENTURE_PORTAL = "Against my better judgement, it's worth a shot.",
		AMULET = "My little insurance policy.",
		ANIMAL_TRACK = "Where's this go?",
		ARMORGRASS = "I'm getting itchy just looking at it.",
		ARMORMARBLE = "Well, if running isn't an option...",
		ARMORWOOD = "Better chafing than getting stabbed.",
		ARMOR_SANITY = "It's weightless, yet I can't pierce it.",
		ASH =
		{
			GENERIC = "They're still warm.",
			REMAINS_GLOMMERFLOWER = "Great, guess I have to find another.",
			REMAINS_EYE_BONE = "What a shame.",
			REMAINS_THINGIE = "Sure, why not.", --unused?
		},
		AXE = "First to \"axe\" me a question is getting invasive brain surgery.",
		BABYBEEFALO = 
		{
			GENERIC = "Who would find this cute?",
		    SLEEPING = "Don't mind me...",
        },
        BUNDLE = "Our supplies are in there!",
        BUNDLEWRAP = "Wrapping things up should make them easier to carry.",
		BACKPACK = "It's more spacious than it looks.",
		BACONEGGS = "Now this, this is the stuff.",
		BANDAGE = "Seems sterile enough.",
		BASALT = "That's too strong to break through!",
		BEARDHAIR = "It's kinda like fur, so why does it seem gross?",
		BEARGER = "Who do you think you are, stomping about like that?",
		BEARGERVEST = "Welcome to the hibernation station!",
		ICEPACK = "The fur keeps the temperature inside stable.",
		BEARGER_FUR = "A mat of thick fur.",
		BEDROLL_STRAW = "Maybe I'll be too tired to itch.",
		BEEQUEEN = "That would explain the hive size!",
		BEEQUEENHIVE = 
		{
			GENERIC = "My boot would probably get stuck in there.",
			GROWING = "Guess they're building from the ground up.",
		},
        BEEQUEENHIVEGROWN = "I wonder if they would give me a tour.",
        BEEGUARD = "It's fast!",
        HIVEHAT = "It's not my style, but how many of these do you really see?",
        MINISIGN =
        {
            GENERIC = "It's just like the real thing!",
            UNDRAWN = "I could sketch up a visual mnemonic on this.",
        },
        MINISIGN_ITEM = "Where should I put this?",
		BEE =
		{
			GENERIC = "You're doing a good job!",
			HELD = "Hope they don't notice you missing.",
		},
		BEEBOX =
		{
			READY = "Fine work, friends.",
			FULLHONEY = "Fine work, friends.",
			GENERIC = "Happy li'l bees.",
			NOHONEY = "They're working as hard as they can!",
			SOMEHONEY = "Not enough to bother harvesting yet.",
			BURNT = "Not the bees!",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "Quite the yield!",
			LOTS = "I think I should let them grow, just a little longer.",
			SOME = "We're in business!",
			EMPTY = "It needs mushroom seeds... or something.",
			ROTTEN = "This log's finished.",
			BURNT = "Well, that's a set-back.",
			SNOWCOVERED = "'Tisn't the season.",
		},
		BEEFALO =
		{
			FOLLOWER = "Hurry now, we haven't time to dally.",
			GENERIC = "Weird cow!",
			NAKED = "Where's your fur at, bud?",
			SLEEPING = "Sure hope they're not morning animals.",
            --Domesticated states:
            DOMESTICATED = "How d'you do?",
            ORNERY = "I don't like its attitude.",
            RIDER = "You wanna go somewhere.",
            PUDGY = "Oh, don't give me that look - you're hardly famished.",
		},

		BEEFALOHAT = "That's a case of hat-hair waiting to happen.",
		BEEFALOWOOL = "It's rather dense.",
		BEEHAT = "Sting-proof, and little else.",
        BEESWAX = "Makes good chapstick too!",
		BEEHIVE = "Impressive architecture.",
		BEEMINE = "It's the cruelest prank of all..",
		BEEMINE_MAXWELL = "Bottled mosquito rage!", --unimplemented
		BERRIES = "I can never be sure what'll kill me here.",
		BERRIES_COOKED = "I think I liked them better before.",
        BERRIES_JUICY = "It's taking everything not to pop them into my mouth.",
        BERRIES_JUICY_COOKED = "These ain't gonna last long.",
		BERRYBUSH =
		{
			BARREN = "Seems due for nutrition.",
			WITHERED = "Wow, you need water - quick.",
			GENERIC = "Bountiful harvest!",
			PICKED = "I'm thorough, okay?",
			DISEASED = "Don't give up!",
			DISEASING = "What's wrong? Need a pruning? Water?",
			BURNING = "Hey! Stop being on fire!",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "It's in sub-optimal candy growing condition, unfortunately.",
			WITHERED = "Darn.",
			GENERIC = "I know it's not... but I want to believe that's candy.",
			PICKED = "Picked clean.",
			DISEASED = "Can anything be done?!",
			DISEASING = "Please don't die on me!",
			BURNING = "Save the candy plant!",
		},
		BIGFOOT = "It's named that for a reason!",
		BIRDCAGE =
		{
			GENERIC = "What's a birdcage without the bird?",
			OCCUPIED = "",
			SLEEPING = "Awwww, he's asleep.",
			HUNGRY = "He's looking a bit peckish.",
			STARVING = "Has no one fed you in awhile?",
			DEAD = "Maybe he's just resting?",
			SKELETON = "That bird is definitely deceased.",
		},
		BIRDTRAP = "Gives me a net advantage!",
		CAVE_BANANA_BURNT = ".",
		BIRD_EGG = "I get the strangest feeling of foreboding holding this.",
		BIRD_EGG_COOKED = "Now if only I had some hot sauce.",
		BISHOP = "Hey, bulbhead!",
		BLOWDART_FIRE = "Hope I don't miss.",
		BLOWDART_SLEEP = "One of many escape plans.",
		BLOWDART_PIPE = "It's basically a breath-action gun.",
		BLOWDART_YELLOW = "Shock and awe.",
		BLUEAMULET = "It seems to be... is precipitating the word?",
		BLUEGEM = "It doesn't ever feel warmer. Is it magic?",
		BLUEPRINT = 
		{ 
            COMMON = "Reasonably comprehensive.",
            RARE = "Probably better left to the professionals.",
        },
        SKETCH = "All the specifics for some kind of statue.",
		--BELL_BLUEPRINT = "There's SCIENCE afoot!",
		BLUE_CAP = "It doesn't FEEL magical...",
		BLUE_CAP_COOKED = "If there was magic in it, it's surely cooked out.",
		BLUE_MUSHROOM =
		{
			GENERIC = "Blue is for magic, right?",
			INGROUND = "Fungal curfew.",
			PICKED = "These grow back, right?",
		},
		BOARDS = "Buncha two-by-fours.",
		BONESHARD = "Not in museum-condition, surely there's still use for it.",
		BONESTEW = "The marrow adds a lot of flavor.",
		BUGNET = "Not often does the spider web come for the bugs.",
		BUSHHAT = "It's kind of scratchy.",
		BUTTER = "Is it, though?",
		BUTTERFLY =
		{
			GENERIC = "Whatever kind it is, I've been seeing a lot of it.",
			HELD = "Hope I'm not hurting it.",
		},
		BUTTERFLYMUFFIN = "That crockpot has an interesting imagination.",
		BUTTERFLYWINGS = "Somehow, I feel bad about this.",
		BUZZARD = "Forget it pal, I'm not dying here.",

		SHADOWDIGGER = "Hey, you can't multiply like that!", --what is this for?

		CACTUS = 
		{
			GENERIC = "Supposedly succulent past the spines.",
			PICKED = "Wonder how long it takes to grow back.",
		},
		CACTUS_MEAT_COOKED = "Now with less spines and succulence.",
		CACTUS_MEAT = "Hope I don't accidentally right-click this.",
		CACTUS_FLOWER = "A pretty flower from a prickly plant.",

		COLDFIRE =
		{
			EMBERS = "That fire needs more fuel or it's going to go out.",
			GENERIC = "Does it emit cold, or?",
			HIGH = "That fire is getting out of hand!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Feels great.",
			OUT = "Just ashes here!",
		},
		CAMPFIRE =
		{
			EMBERS = "That fire needs more fuel or it's going to go out.",
			GENERIC = "Sure beats darkness.",
			HIGH = "That fire is getting out of hand!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Feels so nice...",
			OUT = "Just ashes here!",
		},
		CANE = "Supposed to help me keep my footing, but I find it clunky.",
		CATCOON = "Eye my pockets and we'll have a problem, pal.",
		CATCOONDEN = 
		{
			GENERIC = "Aww, they even have yarn around it.",
			EMPTY = "Nobody home... save for that pile of rat heads in there.",
		},
		CATCOONHAT = "Satisfaction is of no help to those cat-things now.",
		COONTAIL = "It's very well-groomed.",
		CARROT = "Needs a rinse.",
		CARROT_COOKED = "Mushy, but I must be doing alright if I can complain about its texture.",
		CARROT_PLANTED = "Someone leave this here?",
		CARROT_SEEDS = "These make more carrots, in the right conditions.",
		CARTOGRAPHYDESK =
		{
			GENERIC = "The profession that preceded the known world.",
			BURNING = "My markers!",
			BURNT = "Good thing I still have my own map, or I'd really be boned.",
		},
		WATERMELON_SEEDS = "Most people pick these out. I am not most people.",
		CAVE_FERN = "Even without light, it found a way.",
		CHARCOAL = "Makes good fuel.",
        CHESSPIECE_PAWN = "It has one of those spiked helmets.",
        CHESSPIECE_ROOK =
        {
            GENERIC = "This one defends against a siege of wits.",
            STRUGGLE = "There's no earthquake... what's going on with the castle statue then?",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "They call it a knight, but I thought knights were the horseriders.",
            STRUGGLE = "The horse one, look!",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "I can't remember its name. Its hat is like the Pope's own.",
            STRUGGLE = "Hey, something's up with the holy-man piece!",
        },
        CHESSPIECE_MUSE = "Hmm... Looks familiar.",
        CHESSPIECE_FORMAL = "Doesn't seem very \"kingly\" to me.",
        CHESSPIECE_HORNUCOPIA = "Reminds me of the times when food wasn't a question of survival.",
        CHESSPIECE_PIPE = "That was never really my thing.",
        CHESSJUNK1 = "A pile of broken chess pieces.",
        CHESSJUNK2 = "Another pile of broken chess pieces.",
        CHESSJUNK3 = "Even more broken chess pieces.",
		CHESTER = "Aptly named, huh.",
		CHESTER_EYEBONE =
		{
			GENERIC = "Unlikely staring-contest candidate.",
			WAITING = "How do those eyelids work?",
		},
		COOKEDMANDRAKE = "I can still see its terrified expression.",
		COOKEDMEAT = "It's not as tender as I like, can't have everything though.",
		COOKEDMONSTERMEAT = "I doubt this is fit for human consumption.",
		COOKEDSMALLMEAT = "This'll tide me over for a while.",
		COOKPOT =
		{
			COOKING_LONG = "It takes longer if you're watching it.",
			COOKING_SHORT = "Y'almost done yet?",
			DONE = "What'd that magic pot come up with this time?",
			EMPTY = "It makes just about anything. It's witchcraft.",
			BURNT = "I hope its spirit doesn't haunt me.",
		},
		CORN = "Probably the most versatile food I can think of.",
		CORN_COOKED = "It's just right.",
		CORN_SEEDS = "These are definitely corn seeds. Definitely.",
        CANARY =
		{
			GENERIC = "Handsome plumage!",
			HELD = "I'm not squishing you, am I?",
		},
        CANARY_POISONED = "It's probably fine.",

		CRITTERLAB = "Hello? Who's... shoot, I spooked it.",
        CRITTER_GLOMLING = "It's almost entirely fuzz. Small ball'a fuzz.",
        CRITTER_DRAGONLING = "You're a cute one, just remember I'm easily combustible.",
		CRITTER_LAMB = "Want a bath? Thought not...",
        CRITTER_PUPPY = "Whoooos'a good boy? Is it you?! It is!!",
        CRITTER_KITTEN = "Kee-cat! Hel-lo!",
        CRITTER_PERDLING = "Aww, where's your mother?",

		CROW =
		{
			GENERIC = "Wouldn't want that in my garden.",
			HELD = "Settle down, pal.",
		},
		CUTGRASS = "Bundl'a grass, awaiting innovation.",
		CUTREEDS = "Thick swamp grass, for heavy-duty bindings.",
		CUTSTONE = "How hard can masonry be?",
		DEADLYFEAST = "A most potent dish.", --now unobtainable without console
		DEER =
		{
			GENERIC = "If you got that hair out of your eyes you might s... oh. Oh.",
			ANTLER = "For your sake, I hope you know how to use that horn.",
		},
        DEER_ANTLER = "What have we here? It kind of looks like... a key?",
        DEER_GEMMED = "Come on, break free of his grasp! You're better than this!",
		DEERCLOPS = "You made a mistake showing up!",
		DEERCLOPS_EYEBALL = "I can still feel the malice staring into me.",
		EYEBRELLAHAT =	"I kind of wish this didn't exist now.",
		DEPLETED_GRASS = --what is this for?
		{
			GENERIC = "It's grass, or something like it.",
		},
        GOGGLESHAT = "Twice the goggle, for more ogle.",
        DESERTHAT = "I love that aviator look!",
		DEVTOOL = "I have the power! Well... some kind of power!",
		DEVTOOL_NODEV = "I... shouldn't try using this, I think.",
		DIRTPILE = "...I'm just overthinking it, right?",
		DIVININGROD =
		{
			COLD = "Not a lot of noise, I should try a different direction.",
			GENERIC = "I think it's changing speeds as I walk.",
			HOT = "Settle down, box! Did we make it?",
			WARM = "The intervals got shorter. Whatever it is, I should be close.",
			WARMER = "The tempo changed.",
		},
		DIVININGRODBASE =
		{
			GENERIC = "Looks important.",
			READY = "Almost ready to go, I just need to open it somehow.",
			UNLOCKED = "Let's do this.",
		},
		DIVININGRODSTART = "Radio on a stick, or something?",
		DRAGONFLY = "Looks painful.",
		ARMORDRAGONFLY = "Next time I mistime a dodge, they'll wish I didn't.",
		DRAGON_SCALES = "They're so tough, no wonder it took so long to kill.",
		DRAGONFLYCHEST = "I definitely trust this with my stuff.",
		DRAGONFLYFURNACE = --all but "generic" aren't used
		{
			HAMMERED = "It took that long to burn? Wait, it's just broken.",
			GENERIC = "It's so hot, how did the thing not combust already?", --no gems
			NORMAL = "Not even fully fueled and it's this hot...", --one gem
			HIGH = "If I go any closer, I might actually melt.", --two gems
		},
        
        HUTCH = "What are you looking at? I guess that's a broad question...",
        HUTCH_FISHBOWL =
        {
            GENERIC = "Aren't you unhappy in that tiny thing?",
            WAITING = "...Natural causes. It was natural causes.",
        },
		LAVASPIT = 
		{
			HOT = "Gross...",
			COOL = "It'll be safe to walk there again soon.",
		},
		LAVA_POND = "It would look pretty cool if I threw something in there, I bet.",
		LAVAE = "You need to die!",
		LAVAE_COCOON = "Poor guy.",
		LAVAE_PET = 
		{
			STARVING = "Oh, shoot, you're not looking too... AS hot.",
			HUNGRY = "You want ashes? I'll get some... please don't help me with it.",
			CONTENT = "It's pretty happy. I think.",
			GENERIC = "Having around you is probably a bad idea, but... oh, fine.",
		},
		LAVAE_EGG = 
		{
			GENERIC = "Anyone home? Are you on fire?",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "It's pretty warm, so it's probably not hot enough.",
			COMFY = "I'm pretty sure touching this would scald me. I guess that's good.",
		},
		LAVAE_TOOTH = "Does it think this is its mom or something...?",

		DRAGONFRUIT = "It's kind of pretty, actually.",
		DRAGONFRUIT_COOKED = "Doesn't look as nice, but it should taste better.",
		DRAGONFRUIT_SEEDS = "Grainy black seeds. For what, I'm unsure.",
		DRAGONPIE = "Should be interesting.",
		DRUMSTICK = "Hope it's tender.",
		DRUMSTICK_COOKED = "Big ol' ham shank.",
		DUG_BERRYBUSH = "I have a good spot for this, just don't ask me where yet.",
		DUG_BERRYBUSH_JUICY = "This has better places to be. Like my base.",
		DUG_GRASS = "Where to put it, where to put it...",
		DUG_MARSH_BUSH = "I should plant this somewhere I won't trip.",
		DUG_SAPLING = "Ready for a transplant.",
		DURIAN = "Yeah, that's going to the composter.",
		DURIAN_COOKED = "You'd think .",
		DURIAN_SEEDS = "Even the seed is spiky, for some reason.",
		EARMUFFSHAT = "Rather stylish.",
		EGGPLANT = "It's purple and it's a plant, s'about all I gather.",
		EGGPLANT_COOKED = "Not very impressive, but...",
		EGGPLANT_SEEDS = "I don't remember what these grew. One way to find out!",
		
		ENDTABLE = 
		{
			BURNT = "Well, I guess I don't have to worry about switching it out now.",
			GENERIC = "Nothing under there this time. I checked.",
			EMPTY = "It is a pretty vase, but it could do better.",
			WILTED = "Oh come on, we just picked these...",
			FRESHLIGHT = "It'd do better in my lantern, but I kinda like this.",
			OLDLIGHT = "That sure didn't last long.", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE = 
		{
			BURNING = "Aw, geez.",
			BURNT = "There goes that, and whatever inhabited it.",
			CHOPPED = "It's been around a while, judging by the rings.",
			POISON = "I don't need to be a botanist to see something wrong with this.",
			GENERIC = "Perennial or annual? I always get them mixed up.",
		},
		ACORN = "To preserve, or to serve?",
        ACORN_SAPLING = "Take as looong as you need.",
		ACORN_COOKED = "If it weren't so tasty, it might've become a tree.",
		BIRCHNUTDRAKE = "Y'all bite my ankles, and you're getting punted.",
		EVERGREEN =
		{
			BURNING = "Aw, geez.",
			BURNT = "There goes that, and whatever inhabited it.",
			CHOPPED = "It's been around a while, judging by the rings.",
			GENERIC = "Sappy ol' tree.",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "Aw, geez.",
			BURNT = "There goes that, and whatever inhabited it.",
			CHOPPED = "It's been around a while, judging by the rings.",
			GENERIC = "It's seen better days, surely.",
		},
		TWIGGYTREE = 
		{
			BURNING = "Aw, geez.",
			BURNT = "At least nothing lived in it, I think.",
			CHOPPED = "You were so young.",
			GENERIC = "Why do I feel sad for it?",			
			DISEASED = "It's not looking great. I mean, it really wasn't to begin with...", --removed feature - can't become diseased
		},
		TWIGGY_NUT_SAPLING = "A young slapping... I mean, salp- I mean! Sapling! It's a young sapling!",
        TWIGGY_OLD = "Doesn't seem to have much longer.", --unused?
		TWIGGY_NUT = "Put it in the ground, rest takes care of itself.",
		EYEPLANT = "This is actually really disturbing.",
		INSPECTSELF = "Came too far to die now.",
		FARMPLOT =
		{
			GENERIC = "Does no good growing nothing, does it?",
			GROWING = "Coming along well.",
			NEEDSFERTILIZER = "Looks like it needs a little nutritional motivation.",
			BURNT = "At least we know how to make another.",
		},
		FEATHERHAT = "It can't possibly be that easy...",
		FEATHER_CROW = "It's dark, like the night. I'm not a poet.",
		FEATHER_ROBIN = "It certainly stands out.",
		FEATHER_ROBIN_WINTER = "One of many comprising a winter coat.",
		FEATHER_CANARY = "It's very well-preened.",
		FEATHERPENCIL = "It's no wonder everyone moved away from these.",
		FEM_PUPPET = "She's trapped!", --unused?
		FIREFLIES =
		{
			GENERIC = "Those look easy to catch.",
			HELD = "Won't be hiding from me now.",
		},
		FIREHOUND = "A hellhou... a heckhound!",
		FIREPIT =
		{
			EMBERS = "Ah... don't go.",
			GENERIC = "Fire, man's greatest invention. Well, discovery...",
			HIGH = "Shouldn't stand too close.",
			LOW = "You are one hungry fire.",
			NORMAL = "Enjoying the moment is all you have in this world.",
			OUT = "Ashes remain.",
		},
		COLDFIREPIT =
		{
			EMBERS = "Hey, where you going?",
			GENERIC = "Aren't blue flames usually the hottest?",
			HIGH = "Huh? Ice is forming around it.",
			LOW = "It's getting cold. Wait, I mean...",
			NORMAL = "It's pleasant to sit by, who am I to question its logic?",
			OUT = "Curious.",
		},
		FIRESTAFF = "I know how to handle firearms, just not... FIRE arms.",
		FIRESUPPRESSOR = 
		{	
			ON = "You'd better work.",
			OFF = "Hold your fire. I mean, hold your snow? Just... stay put!",
			LOWFUEL = "Needs logs. Or grass. Or anything combustible.",
		},

		FISH = "Needs to be prepared, somehow.",
		FISHINGROD = "Fish like to bite on these, I'm told.",
		FISHSTICKS = "Nothin' but fishsticks.",
		FISHTACOS = "It's just missing hot sauce.",
		FISH_COOKED = "In retrospect, I took flavored food for granted.",
		FLINT = "I can bang these together to fashion a striking edge.",
		FLOWER = 
		{
            GENERIC = "I don't know much about flowers, but they're pleasant.",
            ROSE = "Don't see many of those!",
        },
        FLOWER_WITHERED = "It looks so sad. Dead, mostly, but sad too.",
		FLOWERHAT = "It's pretty, but the pollen might drive me a little crazy.",
		FLOWER_EVIL = "That's a nasty-looking weed.",
		FOLIAGE = "Kindling, I suppose!",
		FOOTBALLHAT = "Old football helmet, like they used to wear.",
        FOSSIL_PIECE = "Some intact bones, I could assemble it with the others.",
        FOSSIL_STALKER =
        {
			GENERIC = "Some assembly required.",
			FUNNY = "Something feels off about this, but I'm not sure what.",
			COMPLETE = "It's all here! Now what?",
        },
        STALKER = "Here we go.",
        STALKER_ATRIUM = "The predicaments I put myself in...",
        STALKER_MINION = "What are you? Dead, if I have something to say about it!",
        THURIBLE = "It looks occult... and yet, it smells like my favorite candle store as a kid.",
        ATRIUM_OVERGROWTH = "A likely dead language is inscribed on it.",
		FROG =
		{
			DEAD = "Won't be stealing from me now.",
			GENERIC = "It keeps the flea population in check.",
			SLEEPING = "It's dreaming of hopping.",
		},
		FROGGLEBUNWICH = "Well, at least they're de-boned.",
		FROGLEGS = "Add some salt, and watch it twitch.",
		FROGLEGS_COOKED = "A delicacy, I'm told.",
		FRUITMEDLEY = "It's enough like a parfait.",
		FURTUFT = "It's rather rough. No surprise, considering its source.", 
		GEARS = "Well, maybe I'll think of a way to use these.",
		GHOST = "You aren't real. You aren't real. You aren't real!",
		GOLDENAXE = "It's made out of money.",
		GOLDENPICKAXE = "I can get even more gold with this.",
		GOLDENPITCHFORK = "Iconoclastic choice of material.",
		GOLDENSHOVEL = "The gold of this land quite durable.",
		GOLDNUGGET = "How I'd love to hoard it... but utility takes precedence.",
		GRASS =
		{
			BARREN = "It's about on its way out.",
			WITHERED = "Lookin' bleak, but it's nothing some water can't fix.",
			BURNING = "It's beyond saving, I need to stop it from spreading!",
			GENERIC = "Bit'a overgrowth.",
			PICKED = "At least it grows back quick.",
			DISEASED = "That definitely looks bad, what should I do...",
			DISEASING = "I'm no botanist, but it seems to be telling me something's wrong.",
		},
		GRASSGEKKO = 
		{
			GENERIC = "So, it's... photosynthetic? Is that the word?",	
			DISEASED = "How you feeling, pal? Oh, geez...",
		},
		GREEN_CAP = "Green usually means poison.",
		GREEN_CAP_COOKED = "If this had something in it before, I hope it was cooked out.",
		GREEN_MUSHROOM =
		{
			GENERIC = "Family of three.",
			INGROUND = "What are you doing down there?",
			PICKED = "These grow back, right?",
		},
		GUNPOWDER = "Now it needs brass.",
		HAMBAT = "Wouldn't \"Hammer\" have been funnier? No, wait...",
		HAMMER = "To create, or to destroy?",
		HEALINGSALVE = "Smells like it'll sting, but it beats infection.",
		HEATROCK =
		{
			FROZEN = "Uh nuh, muh tun ith uck!　Nah, just kidding.",
			COLD = "It's just how I like it.",
			GENERIC = "It reacts to the temperature around it.",
			WARM = "May it stay warm, and at my side.",
			HOT = "Hoo, I'll need oven mitts to handle this one.",
		},
		HOME = "Someone must live here.",
		HOMESIGN =
		{
			GENERIC = "\"You are here\". You're right, I am!",
            UNWRITTEN = "Suppose I should write something on it.",
			BURNT = "Well, that sucks.",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "This way to Thataway.",
            UNWRITTEN = "I'll forget where this goes if I don't write it here.",			
			BURNT = "At least it still kind of serves a purpose.",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "\"Thataway\", but to where?",
            UNWRITTEN = "I'll forget where this goes if I don't write it here.",
			BURNT = "At least it still kind of serves a purpose",
		},
		HONEY = "Sticky, but it brings a lot of life to food.",
		HONEYCOMB = "The hexagonal pattern is really pleasing to look at.",
		HONEYHAM = "I've always been more of a turkey kind of person.",
		HONEYNUGGETS = "Hope these are ready, 'cause I sure am.",
		HORN = "Primitivistic as wind instruments come.",
		HOUND = "One I can handle, but the rest of the pack?",
		HOUNDBONE = "Goodness, picked clean.",
		HOUNDMOUND = "What a mess.",
		ICEBOX = "I could hide in here, if it comes to it.",
		ICEHAT = "Maybe if it crushes my skull enough, I'll forget how hot I am.",
		ICEHOUND = "Maybe there is such thing as a bad dog...",
		INSANITYROCK =
		{
			ACTIVE = "Hey, you weren't all raised like that before!", --raised
			INACTIVE = "Sure wouldn't want to step over this.", --lowered
		},
		JAMMYPRESERVES = "Oh, good, it even cooked up a little spoon.",

		KABOBS = "Presentation is key.",
		KILLERBEE =
		{
			GENERIC = "It's red, so it's angry.",
			HELD = "It's not getting any less angry.",
		},
		KNIGHT = "Why do they call these knights? Were the horses themselves the knights?",
		KOALEFANT_SUMMER = "Run all you want, I'm faster!",
		KOALEFANT_WINTER = "Wouldn't be as interesting if it just stood still, would it?",
		KRAMPUS = "Whoever or whatever you are, you're dealing with me first!",
		KRAMPUS_SACK = "My own Bag of Holding!",
		LEIF = "Where did you come from? I guess that's a stupid question...",
		LEIF_SPARSE = "That tree-chopping maniac? You just missed 'em...",
		LIGHTER  = "Haven't seen one like that before.",
		LIGHTNING_ROD =
		{
			CHARGED = "Saved me there!",
			GENERIC = "I hope it works.",
		},
		LIGHTNINGGOAT = 
		{
			GENERIC = "Unlike any goat I've ever seen.",
			CHARGED = "Believe me, that goat is aggressive.",
		},
		LIGHTNINGGOATHORN = "It's bone, and yet, a conduit?",
		GOATMILK = "Non-homogenized and humming with energy.",
		LITTLE_WALRUS = "He won't be cute and cuddly forever.",
		LIVINGLOG = "Cut you down to size, huh?",
		LOG =
		{
			BURNING = "No saving it now.",
			GENERIC = "It's heavy with potential.",
		},
		LUCY = "I wonder what he'll say about me giving this a few swings.",
		LUREPLANT = "You think you're so clever, wait 'til I get my hands on that.",
		LUREPLANTBULB = "Not quite to blooming yet.",
		MALE_PUPPET = "He's trapped!", --unused?
		MANDRAKE_ACTIVE = "Hey, I'm a little busy...",
		MANDRAKE_PLANTED = "Weird-looking... wait, that's not a carrot!",
		MANDRAKE = "I wonder if they could only reproduce while alive.",
		MANDRAKESOUP = "It's just relaxing.",
		MANDRAKE_COOKED = "I can still see its feared expression.",
		MAPSCROLL = "Y'all won't believe the places I've been.",
		MARBLE = "Rough as it is, it sure feels expensive.",
		MARBLEBEAN = "A pebble, and yet, a seed?",
		MARBLEBEAN_SAPLING = "I've just learned not to ask questions.",
        MARBLESHRUB = "It's growing rock, or *really* hard wood.",
		MARBLEPILLAR = "Nobody's going to miss this.",
		MARBLETREE = "That looks pretty breakable.",
		MARSH_BUSH =
		{
			BURNING = "That's... a shame?",
			GENERIC = "It depends on repelling threats to survive.",
			PICKED = "Hope I don't trip on these.",
		},
		BURNT_MARSH_BUSH = "Another overwhelming victory for fire.",
		MARSH_PLANT = "I think it's kind of just... there.",
		MARSH_TREE =
		{
			BURNING = "Whoops.",
			BURNT = "Charcoal spikes don't hurt as much.",
			CHOPPED = "Killing this surely had no ecological impact whatsoever.",
			GENERIC = "What function do these serve?",
		},
		MAXWELL = "He has the caricature of a card-carrying crook.",
		MAXWELLHEAD = "What're you grinning about?", --unimplemented feature
		MAXWELLLIGHT = "I wonder how they work.", --also unimplemented?
		MAXWELLLOCK = "So close, yet so far.",
		MAXWELLTHRONE = "It compels me...",
		MEAT = "Won't last long like this.",
		MEATBALLS = "Mystery meatballs, each one is a surprise!",
		MEATRACK =
		{
			DONE = "Not a drop of blood is in there.",
			DRYING = "Meat takes a while to dry.",
			DRYINGINRAIN = "Probably shoulda built a cover for this.",
			GENERIC = "No use standing there not drying meat.",
			BURNT = "It wasn't hard to make, anyway.",
		},
		MEAT_DRIED = "I'm picky with dry meat, but it doesn't perish.",
		MERM = "They say beauty is skin deep, I say he get a shovel.",
		MERMHEAD = 
		{
			GENERIC = "A warning to all.",
			BURNT = "This is what I think of your territory.",
		},
		MERMHOUSE = 
		{
			GENERIC = "It's rather dilapidated.",
			BURNT = "It didn't have much to live for, anyway.",
		},
		MINERHAT = "Hands-free illumination.",
		MONKEY = "What are you doing down here?",
		MONKEYBARREL = "Is anything more fun?", --removed feature
		MONSTERLASAGNA = "It almost looks good enough to eat.",
		FLOWERSALAD = "I feel kinda bad for eating pretty things.",
        ICECREAM = "Slightly melty, how I like it.",
        WATERMELONICLE = "Hey, it's my favorite flavor.",
        TRAILMIX = "I was the worst offender of picking out the bits I liked.",
        HOTCHILI = "Doesn't smell THAT hot...",
        GUACAMOLE = "Oh, ha-ha, the sentient cooker has jokes.",
		MONSTERMEAT = "It'd be a shame to let it go to waste, but...",
		MONSTERMEAT_DRIED = "Sun-dried poison meat.",
		MOOSE = "I've never liked geese or geese-like things, and I ain't starting today.",
		MOOSE_NESTING_GROUND = "Definitely a nest, though bigger than I'm used to.",
		MOOSEEGG = "It would make the grandest deviled egg.",
		MOSSLING = "Pretty stupid looking.",
		FEATHERFAN = "The tiniest breeze is liable to blow me over.",
        MINIFAN = "What's some childishness for preventing a heatstroke?",
		GOOSE_FEATHER = "These make the best pillows!",
		STAFF_TORNADO = "Reminds me of home.", --weather pain
		MOSQUITO =
		{
			GENERIC = "There's one thing I won't feel bad for killing.",
			HELD = "You're at my mercy now.",
		},
		MOSQUITOSACK = "An emergency transfusion might not be the worst idea. Granted, still a pretty bad one.",
		MOUND =
		{
			DUG = "Graverobbing? Me? Come on now.",
			GENERIC = "The soil is still fresh, the burial must've been recent.",
		},
		NIGHTLIGHT = "For that occult flair!",
		NIGHTMAREFUEL = "I can manipulate its form, and yet, I can't feel it?",
		NIGHTSWORD = "It cuts like a razor, yet you can't feel the sword itself.", --dark sword
		NITRE = "It's crumbly, and highly flammable, I think.",
		ONEMANBAND = "I prefer practical labor, but I can respect performance art.",
		OASISLAKE = "Looks more a puddle than lake.",
		PANDORASCHEST = "It's gilded, so it must contain something important.",
		PANFLUTE = "I just... purse my lips and blow?",
		PAPYRUS = "Can't believe people used to write like this.",
        WAXPAPER = "Naturally laminated.",
		PENGUIN = "Its posture mocks me.",
		PERD = "Skittish little... get away from there!",
		PEROGIES = "Hope the insides aren't scalding.",
		PETALS = "Pretty, but beauty is fleeting.",
		PETALS_EVIL = "They smell nicer than they look...?",
		PHLEGM = "Better not stick to my clothes...",
		PICKAXE = "I've always kind of wanted to work at a digsite.",
		PIGGYBACK = "I trust the durability of this material.",
		PIGHEAD = 
		{	
			GENERIC = "This makes me sad to look at.",
			BURNT = "That was one combustible skull.",
		},
		PIGHOUSE =
		{
			FULL = "Anyone home? Wanna buy something?",
			GENERIC = "Room for one, and none else.",
			LIGHTSOUT = "Did you really just turn off for me?",
			BURNT = "Hope he had insurance.",
		},
		PIGKING = "The porcine monarch.",
		PIGMAN =
		{
			DEAD = "In loving memory of... whoever you were.",
			FOLLOWER = "Stay with me, now.",
			GENERIC = "Semi-intelligent, by its looks.",
			GUARD = "Stronger than your average pig, I'd wager.",
			WEREPIG = "He'll really hog out!",
		},
		PIGSKIN = "A bit calloused, but it would make strong material.",
		PIGTENT = "I know what it's made of, but I won't lose sleep over it.", --nonexistent prefab
		PIGTORCH = "Wonder what the significance of the formation is.",
		PINECONE = "Step one: Put in ground. Step two: Wait.",
        PINECONE_SAPLING = "Only a matter of time, now.",
        LUMPY_SAPLING = "I hope that one's doing okay.",
		PITCHFORK = "Pitches hay? Probably does other things too.",
		PLANTMEAT = "It feels like raw meat. At this point, anything makes sense.",
		PLANTMEAT_COOKED = "Well... why not.",
		PLANT_NORMAL =
		{
			GENERIC = "Lookin' good!",
			GROWING = "How long's it going to take?",
			READY = "Looks as ripe as it's gonna get.",
			WITHERED = "Well... it can be fertilizer for the next one.",
		},
		POMEGRANATE = "Mesmerizing formation.",
		POMEGRANATE_COOKED = "Pom full'a cooked granate.",
		POMEGRANATE_SEEDS = "These'll leave a stain.",
		POND = "Murky water, home to gross things.",
		POOP = "Ugh, I guess this would be good to have.", --manure
		PORTABLECOOKPOT_ITEM = "Cool, we can take the devil appliance anywhere!", --Warly's crockpot
		FERTILIZER = "Good, I don't have to touch it with my hands!", --bucket-o-poop
		PUMPKIN = "Big ol' gourd.",
		PUMPKINCOOKIE = "Tantalizing spices...",
		PUMPKIN_COOKED = "It almost looks like something you'd want to eat.",
		PUMPKIN_LANTERN = "It's fun AND useful!", --jack-o-lantern
		PUMPKIN_SEEDS = "They'd do well with salt and fire.",
		PURPLEAMULET = "It's whispering to me.", --nightmare amulet
		PURPLEGEM = "How long have I been looking at this...?",
		RABBIT =
		{
			GENERIC = "Skittish little nuisance.",
			HELD = "It's understandably agitated.",
		},
		RABBITHOLE = 
		{
			GENERIC = "A rabbit's safe haven, most predators can't fit inside it.",
			SPRING = "Have they relocated?",
		},
		RAINOMETER = 
		{	
			GENERIC = "Hopefully it's accurate.",
			BURNT = "'least they ain't hard to make.",
		},
		RAINCOAT = "It's cumbersome, but if it ain't well-insulated.",
		RAINHAT = "Function over fashion.",
		RATATOUILLE = "Looks boring, but I guess the heat helps a little.",
		RAZOR = "A stone shaver. Even with cream, it seems unpleasant.",
		REDGEM = "Warm, but not uncomfortably so.",
		RED_CAP = "I've learned that red is for health. Or harm.", --as an item
		RED_CAP_COOKED = "If only there were onions to mix it with.",
		RED_MUSHROOM =
		{
			GENERIC = "Looks ready.",
			INGROUND = "What are you doing down there?",
			PICKED = "These grow back, right?",
		},
		REEDS =
		{
			BURNING = "So long to that.",
			GENERIC = "I should be wary of harvesting these.",
			PICKED = "Nothing useful's left; they'll grow back.",
		},
        RELIC = --ancient furniture; found in caves or made from ancient tab
        {
            GENERIC = "Who knows how old this is!",
            BROKEN = "Remnants of a civilization past.",
        },
        RUINS_RUBBLE = "It's a bit busted.",
        RUBBLE = "There's bound to be something useful under this!", --unimplemented; minable cave objects
		RESEARCHLAB = --science machine
		{	
			GENERIC = "Everything I need to materialize innovation.",
			BURNT = "Taken by the greatest invention of all; fire.",
		},
		RESEARCHLAB2 = --alchemy engine
		{
			GENERIC = "Are the secrets of gold at hand?",
			BURNT = "There goes that.",
		},
		RESEARCHLAB3 = --shadow manipulator
		{
			GENERIC = "Magic is just another form of science.",
			BURNT = "How did the gem burn, too?",
		},
		RESEARCHLAB4 = --prestihatitator 
		{
			GENERIC = "Still not as enigmatic as those crockpots.",
			BURNT = "Looks like the rabbits made it out, at least.",
		},
		RESURRECTIONSTATUE = --meat effigy
		{
			GENERIC = "I'll be rebirthed from this, in theory.",
			BURNT = "Might as well stop taking up space.",
		},		
		RESURRECTIONSTONE = "Who left this perfectly good ritual site here?", --touch stone
		ROBIN = --red bird
		{
			GENERIC = "Fetching plumage.",
			HELD = "It won't stop fidgeting, not that I blame it.",
		},
		ROBIN_WINTER = --white bird
		{
			GENERIC = "I suppose even birds must need winter camouflage, too.",
			HELD = "Quite warm.",
		},
		ROBOT_PUPPET = "Whatever they are, they're being restrained.", --nonexistent?
		ROCK_LIGHT = --what is this for?
		{
			GENERIC = "Something is forming over the magma.",
			OUT = "It looks like it's barely holding itself together.",
			LOW = "It'll be gone, soon.",
			NORMAL = "Nice and comfy.",
		},
        CAVEIN_BOULDER =
        {
            GENERIC = "I could carry this, if I really had to.",
            RAISED = "Come on... it's too far.",
        },
		ROCK = "A rocky outcrop, possible host to minerals.", --environmental boulder
		PETRIFIED_TREE = "Crystallized tree remains. Kind of horrifying, but neat.",
		ROCK_PETRIFIED_TREE = "Crystallized tree remains. Kind of horrifying, but neat.",
		ROCK_PETRIFIED_TREE_OLD = "Crystallized tree remains. Kind of horrifying, but neat.",
		ROCK_ICE = --glacier
		{
			GENERIC = "Strange, it's only freezing up in this spot.",
			MELTED = "Dare I indulge...?"
		},
		ROCK_ICE_MELTED = "Dare I indulge...?", --replaced by the melted line above?
		ICE = "Highly mobile water, blessed be.",
		ROCKS = "Better here than in my boot.",
        ROOK = "You're big, but are you stupid too?",
		ROPE = "Sturdy and non-frayed, good enough for me.",
		ROTTENEGG = "It makes fruit flies... I'm kidding, Redi.",
		ROYAL_JELLY = "I don't think anybody would notice the slightest sample.",
        JELLYBEAN = "It's all the good flavors, too!",
        SADDLE_BASIC = "Yeehaw.",
        SADDLE_RACE = "Lot of labor went into this, let's see if it was worth it.",
        SADDLE_WAR = "We ride!",
        SADDLEHORN = "I didn't think those things were so hard to remove...",
        SALTLICK = "Goats sure burn through a lot of these.",
        BRUSH = "Grooms the spots beefalo normally couldn't reach.",
		SANITYROCK = 
		{
			ACTIVE = "Hey, you weren't all raised like that before!", --raised
			INACTIVE = "Sure wouldn't want to step over this.", --lowered
		},
		SAPLING =
		{
			BURNING = "No saving that!",
			WITHERED = "Maybe some nutrition will save it.",
			GENERIC = "I hope that's normal.",
			PICKED = "Why does it have to look so sad?",
			DISEASED = "Woah, woah! That's definitely bad.",
			DISEASING = "It's looking bleak, but differently so.",
		},
   		SCARECROW = 
   		{
			GENERIC = "I'll handle my arguments myself, thank you.",
			BURNING = "Hold the execution!",
			BURNT = "I don't believe he got a fair trial.",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "The stage is set.",
			BLOCK = "How hard can sculpting be?",
			SCULPTURE = "This came out really nicely.",
			BURNT = "This is a travesty.",
   		},
        SCULPTURE_KNIGHTHEAD = "Wonder what this was a part of.",
		SCULPTURE_KNIGHTBODY = 
		{
			COVERED = "Still somewhat intact.",
			UNCOVERED = "Thoroughly ruined.",
			FINISHED = "I guess it could look worse",
			READY = "The statue! What's happening?",
		},
        SCULPTURE_BISHOPHEAD = "Has a regal vibe to it.",
		SCULPTURE_BISHOPBODY = 
		{
			COVERED = "Looks mostly intact.",
			UNCOVERED = "Thoroughly ruined.",
			FINISHED = "Now what?",
			READY = "The statue! What's happening?",
		},
        SCULPTURE_ROOKNOSE = "The rest can't be far.",
		SCULPTURE_ROOKBODY = 
		{
			COVERED = "Just a rough pile of marb... is that a face under there?",
			UNCOVERED = "Thoroughly ruined.",
			FINISHED = "Not too bad, is it?",
			READY = "The statue! What's happening?",
		},
        GARGOYLE_HOUND = "Wonder what its final moments were like.",
        GARGOYLE_WEREPIG = "I don't like how it's looking at me.",
		SEEDS = "These'll grow... something.",
		SEEDS_COOKED = "These'll grow nothing.",
		SEWING_KIT = "I've always wanted to learn how to sew.",
		SEWING_TAPE = "Hopefully it'll hold together.", --unimplemented?
		SHOVEL = "X-marks beware.",
		SILK = "Fine cloth, coming from a foul creature.",
		SKELETON = "Regrettable.",
		SCORCHED_SKELETON = "Terrible way to go out.",
		SKULLCHEST = "The best loot is always the scariest!", --nonexistent?
		SMALLBIRD =
		{
			GENERIC = "Those wings won't do it good for too long.",
			HUNGRY = "I think it's trying to forage, I should give it something.",
			STARVING = "Hey little one, you're looking awful lethargic.",
		},
		SMALLMEAT = "It's no feast material, but I can work with it.",
		SMALLMEAT_DRIED = "Li'l snack for the road.",
		SPAT = "That is one unkempt coat.",
		SPEAR = "I just hope it stays together.",
		SPEAR_WATHGRITHR = "I can trust this not to fall apart.",
		WATHGRITHRHAT = "Durable as it is showy, I hope.",
		SPIDER =
		{
			DEAD = "Better hit it again, to be sure.",
			GENERIC = "Territorial, by its looks.",
			SLEEPING = "I never knew spiders even DID sleep.",
		},
		SPIDERDEN = "They pour out of there like it's a clown car.",
		SPIDEREGGSACK = "I have the weirdest urge to boil these.",
		SPIDERGLAND = "\"Kills ninety-nine point eight percent of germs\".",
		SPIDERHAT = "They couldn't fall for it, right?",
		SPIDERQUEEN = "Wait, if that's the den... spiders LIVED in that?",
		SPIDER_WARRIOR =
		{
			DEAD = "Put up a fight, for sure.",
			GENERIC = "Something about that one intimidates me.",
			SLEEPING = "Hope you're not a light sleeper.",
		},
		SPOILED_FOOD = "Compost it is.",
        STAGEHAND =
        {
			AWAKE = "You weren't there before!",
			HIDING = "An ornate table in a wasteland. Orthodox, surely.",
        },
        STATUE_MARBLE = 
        {
            GENERIC = "I can hear artists screaming at me not to store things in it.",
            TYPE1 = "That sword looks fun to swing.",
            TYPE2 = "Something to do with theatrics, I'm guessing.",
        },
		STATUEHARP = "Might as well finish the vandalism.",
		STATUEMAXWELL = "What's done is done.",
		STEELWOOL = "Ruins the toughest stains and the finest finishes.",
		STINGER = "It ain't your average bee sting.",
		STRAWHAT = "It reminds me of those old ranch days.",
		STUFFEDEGGPLANT = "This actually looks kind of tasty.",
		SUNKBOAT = "I wonder they made it back alive.",
		SWEATERVEST = "I always said I could do with more formal wear.",
		REFLECTIVEVEST = "Helps people spot me keeping my cool.",
		HAWAIIANSHIRT = "Nothing tacky about keeping cool, I guess.",
		TAFFY = "Well, maybe I can indulge. Just this once.",
		TALLBIRD = "Eyeball on stilts, now I've seen it all.",
		TALLBIRDEGG = "Pretty egg - can't say the same for who laid it.",
		TALLBIRDEGG_COOKED = "It smells like it was worth the trouble of stealing.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "Cold to the touch. It won't incubate like this.",
			GENERIC = "Someone in there?",
			HOT = "I feel like this needs to cool down a bit.",
			LONG = "Something, or someone, is definitely in there.",
			SHORT = "You're almost there!",
		},
		TALLBIRDNEST =
		{
			GENERIC = "The parent must not be far.",
			PICKED = "Picked clean. Not that I would know anything about that...",
		},
		TEENBIRD =
		{
			GENERIC = "Its eye size hasn't changed at all.",
			HUNGRY = "Don't peck at my pockets, I'll get you food!",
			STARVING = "I see you ruffling your feathers, just hang on a minute!",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "Whatever happens, happens.",
			GENERIC = "Everything I've been through has led to this thing, this moment.",
			LOCKED = "Figured it wouldn't be so easy... what else do I need?",
			PARTIAL = "The culmination of my efforts are at hand.",
		},
		TELEPORTATO_BOX = "Whatever it is, it's mine now.",
		TELEPORTATO_CRANK = "It looks like a serviceable enough vice.",
		TELEPORTATO_POTATO = "Might make good scrap, but I don't think I'll fool with it.",
		TELEPORTATO_RING = "I think it's made of some gold alloy.",
		TELESTAFF = "It's shifting its gaze around the world, as if seeking.",
		TENT = 
		{
			GENERIC = "Roughin' it.",
			BURNT = "Well, the new one will be better.",
		},
		SIESTAHUT = 
		{
			GENERIC = "Rise with the moon, go to bed with the sun...",
			BURNT = "That one was having a bug problem, anyway.",
		},
		TENTACLE = "What lies below?",
		TENTACLESPIKE = "I'm nervous of hitting myself with this.",
		TENTACLESPOTS = "What uh... what IS this?",
		TENTACLE_PILLAR = "Just how far does this go?",
        TENTACLE_PILLAR_HOLE = "Seems stinky, but worth exploring.",
		TENTACLE_PILLAR_ARM = "It must be from the same creature.",
		TENTACLE_GARDEN = "Getting real sick of seeing these.", --what is this for?
		TOPHAT = "I see it as a portal to some rabbit dimension.",
		TORCH = "A reminder of the day past.",
		TRANSISTOR = "Electricity, how I missed you.",
		TRAP = "Supposedly, small critters can't resist running into this.",
		TRAP_TEETH = "Inconspicuous, surely.",
		TRAP_TEETH_MAXWELL = "I'll want to avoid stepping on that!", --mosquito mine, unimplemented
		TREASURECHEST = 
		{
			GENERIC = "Hope I can remember what's in it.",
			BURNT = "That trunk was truncated.",
		},
		TREASURECHEST_TRAP = "How convenient!", --nonexistent
		SACRED_CHEST = 
		{
			GENERIC = "Unnerving it may be, my curiosity is greater.",
			LOCKED = "Well, what's the hold-up?",
		},
		TREECLUMP = "It's almost like someone is trying to prevent me from going somewhere.",
		
		TRINKET_1 = "It feels... interestingly inconsistent.", --Melted Marbles
		TRINKET_2 = "Good! It doesn't work.", --Fake Kazoo
		TRINKET_3 = "There's a reference I'm not getting here.", --Gord's Knot
		TRINKET_4 = "What's with these things?", --Gnome
		TRINKET_5 = "I wonder how much this is worth.", --Toy Rocketship
		TRINKET_6 = "I think these are beyond salvaging.", --Frazzled Wires
		TRINKET_7 = "Truth be told, I'm easily amused.", --Ball and Cup
		TRINKET_8 = "I long for a bath to put this in...", --Rubber Bung
		TRINKET_9 = "Always good to have spares.", --Mismatched Buttons
		TRINKET_10 = "Sure hope I won't need these.", --Dentures
		TRINKET_11 = "Hal whispers beautiful lies to me.", --Lying Robot
		TRINKET_12 = "That's just asking to be experimented on.", --Dessicated Tentacle
		TRINKET_13 = "Sorry, I haven't seen your husband... or wife?", --Gnomette
		TRINKET_14 = "Due for a patch-up.", --Leaky Teacup
		TRINKET_15 = "Is anyone missing this?", --Pawn
		TRINKET_16 = "Is anyone missing this?", --Pawn
		TRINKET_17 = "Trashed silverware.", --Bent Spork
		TRINKET_18 = "It's just a toy, but I should make sure...", --Trojan Horse
		TRINKET_19 = "I'll let someone more clever make a metaphor out of this.", --Unbalanced Top
		TRINKET_20 = "It's of no use to me.", --Backscratcher
		TRINKET_21 = "I don't think there's any fixing this.", --Egg Beater
		TRINKET_22 = "Miiiight come in handy?", --Frayed Yarn
		TRINKET_23 = "I can put my shoes on without help, thanks.", --Shoehorn
		TRINKET_24 = "Our old vermin-killer was put in something like this.", --Lucky Cat Jar
		TRINKET_25 = "That does me no good, does it?", --Air Unfreshener
		TRINKET_26 = "The maggots were having a field day with this.", --Potato Cup
		TRINKET_27 = "Could've used one of these back home.", --Coat Hanger
		TRINKET_28 = "I'm not sure which piece this is.", --Rook
        TRINKET_29 = "I'm not sure which piece this is.", --Rook
        TRINKET_30 = "It's the... horse piece?", --Knight
        TRINKET_31 = "It's the... horse piece?", --Knight
        TRINKET_32 = "My future is... complete whiteness.", --Cubic Zirconia Ball
        TRINKET_33 = "Oh, gross! The spider part is a real corpse!", --Spider Ring
        TRINKET_34 = "I wish I knew what this does.", --Monkey Paw
        TRINKET_35 = "Let's just put stuff in there until it does something.", --Empty Elixir
        TRINKET_36 = "A-blah, a-blah! I'm going to suck your blood dude!", --Faux fangs
        TRINKET_37 = "I hope I wouldn't actually have to use it.", --Broken Stake

        HALLOWEENCANDY_1 = "The cavities are probably worth it, right?", --candy apple
        HALLOWEENCANDY_2 = "I'll need a hat for these. Safe-keeping, of course.", --candy corn
        HALLOWEENCANDY_3 = "It's... corn.", --not-so-candy corn
        HALLOWEENCANDY_4 = "They wriggle on the way down.", --
        HALLOWEENCANDY_5 = "My teeth are going to have something to say about this tomorrow.",
        HALLOWEENCANDY_6 = "I... don't think I'll be eating those.",
        HALLOWEENCANDY_7 = "More for me!", --raisins
        HALLOWEENCANDY_8 = "Only a sucker wouldn't love this.",
        HALLOWEENCANDY_9 = "Sticks to your teeth.", --jelly worm
        HALLOWEENCANDY_10 = "Only a sucker wouldn't love this.", --ghost pop
        HALLOWEENCANDY_11 = "Much better tasting than the real thing.",
        CANDYBAG = "Oh, nostalgia.",

        DRAGONHEADHAT = "A prestigious war trophy. Nah, I'm yankin' ya, it's fake.",
        DRAGONBODYHAT = "I'm middling on this middle piece.",
        DRAGONTAILHAT = "Someone has to bring up the rear.",
        PERDSHRINE =
        {
            GENERIC = "Close enough.",
            EMPTY = "I've got to plant something there.",
            BURNT = "That won't do at all.",
        },
        REDLANTERN = "This lantern feels more special than the others.",
        LUCKY_GOLDNUGGET = "What a lucky find!",
        FIRECRACKERS = "Ah, my childhood past-time.",
        PERDFAN = "It's inordinately large.",
        REDPOUCH = "Is there something inside that?",

		BISHOP_CHARGE_HIT = "Yow!",
		TRUNKVEST_SUMMER = "It's a little too big for me.",
		TRUNKVEST_WINTER = "Not really my style, but maybe it'll grow on me.",
		TRUNK_COOKED = "First time for everything...?",
		TRUNK_SUMMER = "A light breezy trunk.",
		TRUNK_WINTER = "A thick, hairy trunk.",
		TUMBLEWEED = "Who knows what that tumbleweed has picked up.",
		TURKEYDINNER = "Steaming and juicy.",
		TWIGS = "Kindling, or something more? The possibilities!",
		UMBRELLA = "It's a little unwieldy, but it keeps the sun off.",
		GRASS_UMBRELLA = "I usually don't abide flowery things, but it's rather cute.",
		UNIMPLEMENTED = "It doesn't look finished! It could be dangerous.",
		WAFFLES = "Get 'em while they're hot.",
		WALL_HAY = 
		{	
			GENERIC = "Compact lifestock feed, cuboid version.",
			BURNT = "Who would eat this?",
		},
		WALL_HAY_ITEM = "This seems like a bad idea.",
		WALL_STONE = "For that medieval aesthetic!",
		WALL_STONE_ITEM = "Gonna need a few... lot more for that castle plan.",
		WALL_RUINS = "An ancient piece of wall.",
		WALL_RUINS_ITEM = "A solid piece of history.",
		WALL_WOOD = 
		{
			GENERIC = "What was the point of sharpening them?",
			BURNT = "Good thing they were sharpened, huh?",
		},
		WALL_WOOD_ITEM = "Pickets!",
		WALL_MOONROCK = "It's pretty, but I hope it doesn't get blown over.",
		WALL_MOONROCK_ITEM = "Very light, but surprisingly tough.",
		FENCE = "Round 'em up, boys.",
        FENCE_ITEM = "The solution for all things herding.",
        FENCE_GATE = "It opens. And closes sometimes, too.",
        FENCE_GATE_ITEM = "Fastenings not included.",
		WALRUS = "No retirement home here, pal.",
		WALRUSHAT = "How time-y.",
		WALRUS_CAMP =
		{
			EMPTY = "Looks like somebody was camping here.",
			GENERIC = "It looks warm and cozy inside.",
		},
		WALRUS_TUSK = "In the civilized world, these are worth more than I am.",
		WARDROBE = 
		{
			GENERIC = "My pursuers would never think to find me in here!",
            BURNING = "That's burning fast!",
			BURNT = "Maybe there's still... no, it's all gone.",
		},
		WARG = "He's not a threat on his own, but...",
		WASPHIVE = "Angry, angry buzzing.",
		WATERBALLOON = "Fun! For the person throwing it.",
		WATERMELON = "Most people don't like the seeds, I am not most people.",
		WATERMELON_COOKED = "Well, now it's just a melon.",
		WATERMELONHAT = "You can't be serious...",
		WAXWELLJOURNAL = "Spooky.",
		WETGOOP = "Suurely there's a use for this...?",
        WHIP = "The cracking breaks the sound barrier, supposedly.",
		WINTERHAT = "I bet I could pull this over my entire face.",
		WINTEROMETER = 
		{
			GENERIC = "What is that in Imperial?",
			BURNT = "Its measuring days are over.",
		},

        WINTER_TREE =
        {
            BURNT = "That puts a damper on the festivities.",
            BURNING = "That was a mistake, I think.",
            CANDECORATE = "Happy Winter's Feast!",
            YOUNG = "It feasts on merriness to grow!",
        },
		WINTER_TREESTAND = 
		{
			GENERIC = "Let's grow something in it!",
            BURNT = "Who would do such a thing?!",
		},
        WINTER_ORNAMENT = "Every scientist appreciates a good bauble.",
        WINTER_ORNAMENTLIGHT = "A tree's not complete without some electricity.",
        WINTER_ORNAMENTBOSS = "This one is especially impressive.",

        WINTER_FOOD1 = "Must be terrorizing from your perspective.", --gingerbread cookie
        WINTER_FOOD2 = "I'm going to eat forty. For science.", --sugar cookie
        WINTER_FOOD3 = "I love just spinning these around.", --candy cane
        WINTER_FOOD4 = "Is it just cool to hate these or something?", --fruitcake
        WINTER_FOOD5 = "It's nice to eat something other than berries for once.", --yule log cake
        WINTER_FOOD6 = "I'm puddin' that straight in my mouth!", --plum pudding
        WINTER_FOOD7 = "Oughta drink this quick.", --apple cider
        WINTER_FOOD8 = "How does it stay warm? A thermodynamical mug?", --hot cocoa
        WINTER_FOOD9 = "Alcohol-free, but it's still delicious.", --eggnog

        KLAUS = "Impersonator! Stop!",
        KLAUS_SACK = "Presents, from all the kids!",
		KLAUSSACKKEY = "I didn't know horns could get that gnarled.",
		WORMHOLE =
		{
			GENERIC = "Hey, that's not dirt!",
			OPEN = "So, the ground has teeth.",
		},
		WORMHOLE_LIMITED = "Guh, that thing looks worse off than usual.",
		ACCOMPLISHMENT_SHRINE = "I want to use it, and I want the world to know that I did.",        
		LIVINGTREE = "That normal?",
		ICESTAFF = "It's cold to the touch.",
		REVIVER = "You can't possibly bring back the dead, but I've been wrong before.",
		SHADOWHEART = "Still beating... this is incredibly disturbing.",
        ATRIUM_RUBBLE = 
        {
			LINE_1 = "It depicts an old civilization. The people look hungry and scared.",
			LINE_2 = "This tablet is too worn to make out.",
			LINE_3 = "Something dark creeps over the city and its people.",
			LINE_4 = "The people are shedding their skins. They look different underneath.",
			LINE_5 = "It shows a massive, technologically advanced city.",
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
		LIFEINJECTOR = "Ugh, I wish I didn't know what made this.",
		SKELETON_PLAYER =
		{
			MALE = "%s, what happened to you?",
			FEMALE = "%s, what happened to you?",
			ROBOT = "%s, what happened to you?",
			DEFAULT = "%s, what happened to you?",
		},
		HUMANMEAT = "Flesh is flesh. Where do I draw the line?", --removed feature
		HUMANMEAT_COOKED = "Cooked nice and pink, but still morally gray.", --removed feature
		HUMANMEAT_DRIED = "Letting it dry makes it not come from a human, right?", --removed feature
		ROCK_MOON = "Where'd this come from?",
		MOONROCKNUGGET = "From the moon, or A moon?",
		MOONROCKCRATER = "By these rocks combined, a single deadweight.",

        REDMOONEYE = "An intense color is a good idea for visual markers.",
        PURPLEMOONEYE = "Neat.",
        GREENMOONEYE = "This would be beautiful against the night sky.",
        ORANGEMOONEYE = "No one could get lost with that thing looking out for them.",
        YELLOWMOONEYE = "Gonna need eye protection to deal with this.",
        BLUEMOONEYE = "Soothing brightness.",
		
		--these are for Wendov-exclusive blood items; download at http://steamcommunity.com/sharedfiles/filedetails/?id=938493459
		--if you happen to be here for some reason and find these conflict with another blood-related mod, message the author of the mod above
		SMALLBLOOD = "Is it bad that I'm a little curious?",
		BLOOD = "Nothing special here...",
		LARGEBLOOD = "\"Koelafant Trunk\". How did it bleed so MUCH?",
		MONSTERBLOOD = "It's so acidic, it dissolved all the other corks.",
		HUMANBLOOD = "I think I'm going to pass out...",
	},
	DESCRIBE_GENERIC = "Don't ask me.",
	DESCRIBE_TOODARK = "I hope this is still what I think it is.",
	DESCRIBE_SMOLDERING = "That's about to get ruined in a moment.",
	EAT_FOOD =
	{
		TALLBIRDEGG_CRACKED = "Mmm. Beaky.",
	},
}
