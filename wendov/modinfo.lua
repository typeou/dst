name = "Wendov"
description = "Wendov, The Night Owl\n\n100 Health\t150 Hunger\t100 Sanity\n\nStronger during dusk, night, and when in caves.\nWeaker during the day.\nHeals from attacking based on damage done.\nCan't use normal healing items.\nCan craft items 1 tier above normal if sanity is above 50%.\nHas nightvision if sanity is at 50% or below.\nCan craft and consume blood for benefits and penalties."
author = "Zenni & Ghost"
version = "1.37"

forumthread = ""

api_version = 10

dst_compatible = true

dont_starve_compatible = false
reign_of_giants_compatible = false

all_clients_require_mod = true 

icon_atlas = "modicon.xml"
icon = "modicon.tex"

server_filter_tags = {
"character",
}

configuration_options =
{
    {
        name = "kendov_darkvision",
        label = "Darkvision",
        hover = "Change how darkvision activates.",
        options =
        {
            {description = "Always", data=true, hover="Darkvision will always activate at night and in caves."},
            {description = "Threshold", data=false, hover="Darkvision will only activate at a set sanity threshold."},
        },
        default = false
    },
	
	{
        name = "kendov_moonsanity",
        label = "Full Moon Sanity",
        hover = "Changes how full moons affect sanity.",
        options =
        {
            {description = "No Effect", data=false, hover="Full moons have no extra effect on sanity."},
			{description = "Sanity Drain", data=true, hover="Full moons rapidly drain sanity."},
        },
        default = true
    },
	{
        name = "kendov_moonhealing",
        label = "Full Moon Healing",
        hover = "Changes how full moons affect vampiric healing.",
        options =
        {
            {description = "No Effect", data=false, hover="Full moons have no extra effect on healing."},
			{description = "Extra Heal", data=true, hover="Full moons increase healing from blood and lifesteal."},
        },
        default = true
    },
}