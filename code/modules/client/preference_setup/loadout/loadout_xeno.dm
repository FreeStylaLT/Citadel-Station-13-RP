// Alien clothing.

/datum/gear/suit/zhan_furs
	display_name = "Zhan-Khazan furs (Tajaran)"
	path = /obj/item/clothing/suit/tajaran/furs
	sort_category = "Xenowear"

/datum/gear/head/zhan_scarf
	display_name = "Zhan headscarf"
	path = /obj/item/clothing/head/tajaran/scarf
	whitelisted = SPECIES_TAJ

/datum/gear/suit/unathi_mantle
	display_name = "hide mantle (Unathi)"
	path = /obj/item/clothing/suit/unathi/mantle
	cost = 1
	sort_category = "Xenowear"

/datum/gear/ears/skrell/chains	//Chains
	display_name = "headtail chain selection (Skrell)"
	path = /obj/item/clothing/ears/skrell/chain
	sort_category = "Xenowear"
	whitelisted = SPECIES_SKRELL

/datum/gear/ears/skrell/chains/New()
	..()
	var/list/chaintypes = list()
	for(var/chain_style in typesof(/obj/item/clothing/ears/skrell/chain))
		var/obj/item/clothing/ears/skrell/chain/chain = chain_style
		chaintypes[initial(chain.name)] = chain
	gear_tweaks += new/datum/gear_tweak/path(sortTim(chaintypes, /proc/cmp_text_asc))

/datum/gear/ears/skrell/bands
	display_name = "headtail band selection (Skrell)"
	path = /obj/item/clothing/ears/skrell/band
	sort_category = "Xenowear"
	whitelisted = SPECIES_SKRELL

/datum/gear/ears/skrell/bands/New()
	..()
	var/list/bandtypes = list()
	for(var/band_style in typesof(/obj/item/clothing/ears/skrell/band))
		var/obj/item/clothing/ears/skrell/band/band = band_style
		bandtypes[initial(band.name)] = band
	gear_tweaks += new/datum/gear_tweak/path(sortTim(bandtypes, /proc/cmp_text_asc))

/datum/gear/ears/skrell/cloth/short
	display_name = "short headtail cloth (Skrell)"
	path = /obj/item/clothing/ears/skrell/cloth_male/black
	sort_category = "Xenowear"
	whitelisted = SPECIES_SKRELL

/datum/gear/ears/skrell/cloth/short/New()
	..()
	var/list/shorttypes = list()
	for(var/short_style in typesof(/obj/item/clothing/ears/skrell/cloth_male))
		var/obj/item/clothing/ears/skrell/cloth_male/short = short_style
		shorttypes[initial(short.name)] = short
	gear_tweaks += new/datum/gear_tweak/path(sortTim(shorttypes, /proc/cmp_text_asc))

/datum/gear/ears/skrell/cloth/long
	display_name = "long headtail cloth (Skrell)"
	path = /obj/item/clothing/ears/skrell/cloth_female/black
	sort_category = "Xenowear"
	whitelisted = SPECIES_SKRELL

/datum/gear/ears/skrell/cloth/long/New()
	..()
	var/list/longtypes = list()
	for(var/long_style in typesof(/obj/item/clothing/ears/skrell/cloth_female))
		var/obj/item/clothing/ears/skrell/cloth_female/long = long_style
		longtypes[initial(long.name)] = long
	gear_tweaks += new/datum/gear_tweak/path(sortTim(longtypes, /proc/cmp_text_asc))

/datum/gear/ears/skrell/colored/band
	display_name = "Colored bands (Skrell)"
	path = /obj/item/clothing/ears/skrell/colored/band
	sort_category = "Xenowear"
	whitelisted = SPECIES_SKRELL

/datum/gear/ears/skrell/colored/band/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/ears/skrell/colored/chain
	display_name = "Colored chain (Skrell)"
	path = /obj/item/clothing/ears/skrell/colored/chain
	sort_category = "Xenowear"
	whitelisted = SPECIES_SKRELL

/datum/gear/ears/skrell/colored/chain/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/mask/ipc_monitor
	display_name = "display monitor (Full Body Prosthetic)"
	path = /obj/item/clothing/mask/monitor
	sort_category = "Xenowear"

/datum/gear/uniform/harness
	display_name = "gear harness (Full Body Prosthetic, Diona)"
	path = /obj/item/clothing/under/harness
	sort_category = "Xenowear"

/datum/gear/shoes/footwraps
	display_name = "cloth footwraps"
	path = /obj/item/clothing/shoes/footwraps
	sort_category = "Xenowear"
	cost = 1

/datum/gear/shoes/footwraps/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/uniform/cohesionsuits
	display_name = "cohesion suit selection (Promethean)"
	path = /obj/item/clothing/under/cohesion
	sort_category = "Xenowear"

/datum/gear/uniform/cohesionsuits/New()
	..()
	var/list/cohesionsuits = list()
	for(var/cohesionsuit in (typesof(/obj/item/clothing/under/cohesion)))
		var/obj/item/clothing/under/cohesion/cohesion_type = cohesionsuit
		cohesionsuits[initial(cohesion_type.name)] = cohesion_type
	gear_tweaks += new/datum/gear_tweak/path(sortTim(cohesionsuits, /proc/cmp_text_asc))

//TESHARI

/datum/gear/uniform/smock
	display_name = "smock selection (Teshari)"
	path = /obj/item/clothing/under/teshari/smock
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/uniform/smock/New()
	..()
	var/list/smocks = list()
	for(var/smock in typesof(/obj/item/clothing/under/teshari/smock))
		var/obj/item/clothing/under/teshari/smock/smock_type = smock
		smocks[initial(smock_type.name)] = smock_type
	gear_tweaks += new/datum/gear_tweak/path(sortTim(smocks, /proc/cmp_text_asc))

/datum/gear/uniform/dresssmock
	display_name = "department dress selection (Teshari)"
	path = /obj/item/clothing/under/teshari/dresssmock
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/uniform/dresssmock/New()
	..()
	var/list/dresssmocks = list()
	for(var/dresssmock in typesof(/obj/item/clothing/under/teshari/dresssmock))
		var/obj/item/clothing/under/teshari/dresssmock/dresssmock_type = dresssmock
		dresssmocks[initial(dresssmock_type.name)] = dresssmock_type
	gear_tweaks += new/datum/gear_tweak/path(sortTim(dresssmocks, /proc/cmp_text_asc))

/datum/gear/suit/cloak
	display_name = "cloak selection (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/standard
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/suit/cloak/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/teshari/cloak/standard))
		var/obj/item/clothing/suit/storage/teshari/cloak/standard/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortTim(cloaks, /proc/cmp_text_asc))

/datum/gear/uniform/undercoat
	display_name = "undercoat selection (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/standard
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/uniform/undercoat/New()
	..()
	var/list/undercoats = list()
	for(var/undercoat in typesof(/obj/item/clothing/under/teshari/undercoat/standard))
		var/obj/item/clothing/under/teshari/undercoat/standard/undercoat_type = undercoat
		undercoats[initial(undercoat_type.name)] = undercoat_type
	gear_tweaks += new/datum/gear_tweak/path(sortTim(undercoats, /proc/cmp_text_asc))

/datum/gear/uniform/dept
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/uniform/dept/undercoat/captain
	display_name = "facility director undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/cap
	allowed_roles = list("Facility Director")

/datum/gear/uniform/dept/undercoat/hop
	display_name = "head of personnel undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/hop
	allowed_roles = list("Head of Personnel")

/datum/gear/uniform/dept/undercoat/rd
	display_name = "research director undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/rd
	allowed_roles = list("Research Director")

/datum/gear/uniform/dept/undercoat/hos
	display_name = "head of security undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/hos
	allowed_roles = list("Head of Security")

/datum/gear/uniform/dept/undercoat/ce
	display_name = "chief engineer undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/ce
	allowed_roles = list("Chief Engineer")

/datum/gear/uniform/dept/undercoat/cmo
	display_name = "chief medical officer undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/cmo
	allowed_roles = list("Chief Medical Officer")

/datum/gear/uniform/dept/undercoat/qm
	display_name = "quartermaster undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/qm
	allowed_roles = list("Quartermaster")

/datum/gear/uniform/dept/undercoat/cargo
	display_name = "cargo undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/cargo
	allowed_roles = list("Quartermaster","Cargo Technician")

/datum/gear/uniform/dept/undercoat/mining
	display_name = "mining undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/mining
	allowed_roles = list("Quartermaster","Shaft Miner")

/datum/gear/uniform/dept/undercoat/security
	display_name = "security undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/sec
	allowed_roles = list("Head of Security","Detective","Warden","Security Officer",)

/datum/gear/uniform/dept/undercoat/service
	display_name = "service undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/service
	allowed_roles = list("Head of Personnel","Bartender","Botanist","Janitor","Chef","Librarian","Chaplain")

/datum/gear/uniform/dept/undercoat/engineer
	display_name = "engineering undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/engineer
	allowed_roles = list("Chief Engineer","Station Engineer")

/datum/gear/uniform/dept/undercoat/atmos
	display_name = "atmospherics undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/atmos
	allowed_roles = list("Chief Engineer","Atmospheric Technician")

/datum/gear/uniform/dept/undercoat/research
	display_name = "scientist undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/sci
	allowed_roles = list("Research Director","Scientist", "Roboticist", "Xenobiologist")

/datum/gear/uniform/dept/undercoat/robo
	display_name = "roboticist undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/robo
	allowed_roles = list("Research Director","Roboticist")

/datum/gear/uniform/dept/undercoat/medical
	display_name = "medical undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/medical
	allowed_roles = list("Chief Medical Officer","Medical Doctor","Geneticist")

/datum/gear/uniform/dept/undercoat/chemistry
	display_name = "chemist undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/chemistry
	allowed_roles = list("Chief Medical Officer","Chemist")

/datum/gear/uniform/dept/undercoat/virology
	display_name = "virologist undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/viro
	allowed_roles = list("Chief Medical Officer","Medical Doctor")

/datum/gear/uniform/dept/undercoat/psych
	display_name = "psychiatrist undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/psych
	allowed_roles = list("Chief Medical Officer","Psychiatrist")

/datum/gear/uniform/dept/undercoat/paramedic
	display_name = "paramedic undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/para
	allowed_roles = list("Chief Medical Officer","Paramedic")

/datum/gear/uniform/dept/undercoat/iaa
	display_name = "internal affairs undercoat (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/jobs/iaa
	allowed_roles = list("Internal Affairs Agent")

/datum/gear/suit/dept/cloak/
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/suit/dept/cloak/cap
	display_name = "facility director (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/cap
	allowed_roles = list("Facility Director")

/datum/gear/suit/dept/cloak/hop
	display_name = "head of personnel cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/hop
	allowed_roles = list("Head of Personnel")

/datum/gear/suit/dept/cloak/rd
	display_name = "research director cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/rd
	allowed_roles = list("Research Director")

/datum/gear/suit/dept/cloak/hos
	display_name = "head of security cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/hos
	allowed_roles = list("Head of Security")

/datum/gear/suit/cloak/dept/ce
	display_name = "chief engineer cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/ce
	allowed_roles = list("Chief Engineer")

/datum/gear/suit/dept/cloak/cmo
	display_name = "chief medical officer cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/cmo
	allowed_roles = list("Chief Medical Officer")

/datum/gear/suit/dept/cloak/qm
	display_name = "quartermaster cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/qm
	allowed_roles = list("Quartermaster")

/datum/gear/suit/dept/cloak/cargo
	display_name = "cargo cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/cargo
	allowed_roles = list("Quartermaster","Shaft Miner" ,"Cargo Technician")

/datum/gear/suit/dept/cloak/mining
	display_name = "mining cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/mining
	allowed_roles = list("Quartermaster","Shaft Miner" ,"Cargo Technician")

/datum/gear/suit/dept/cloak/security
	display_name = "security cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/sec
	allowed_roles = list("Head of Security","Detective","Warden","Security Officer",)

/datum/gear/suit/dept/cloak/service
	display_name = "service cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/service
	allowed_roles = list("Head of Personnel","Bartender","Botanist","Janitor","Chef","Librarian","Chaplain")

/datum/gear/suit/dept/cloak/engineer
	display_name = "engineering cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/eningeer
	allowed_roles = list("Chief Engineer","Station Engineer")

/datum/gear/suit/dept/cloak/atmos
	display_name = "atmospherics cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/atmos
	allowed_roles = list("Chief Engineer","Atmospheric Technician")

/datum/gear/suit/dept/cloak/research
	display_name = "scientist cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/sci
	allowed_roles = list("Research Director","Scientist","Xenobiologist")

/datum/gear/suit/dept/cloak/robo
	display_name = "roboticist cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/robo
	allowed_roles = list("Research Director","Roboticist")

/datum/gear/suit/dept/cloak/medical
	display_name = "medical cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/medical
	allowed_roles = list("Chief Medical Officer","Medical Doctor","Geneticist")

/datum/gear/suit/dept/cloak/chemistry
	display_name = "chemist cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/chemistry
	allowed_roles = list("Chemist")

/datum/gear/suit/dept/cloak/virology
	display_name = "virologist cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/viro
	allowed_roles = list("Medical Doctor")

/datum/gear/suit/dept/cloak/psych
	display_name = "psychiatrist cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/psych
	allowed_roles = list("Chief Medical Officer","Psychiatrist")

/datum/gear/suit/dept/cloak/paramedic
	display_name = "paramedic cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/para
	allowed_roles = list("Chief Medical Officer","Paramedic")

/datum/gear/suit/dept/cloak/iaa
	display_name = "internal affairs cloak (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/jobs/iaa
	allowed_roles = list("Internal Affairs Agent")

/datum/gear/eyes/aerogelgoggles
	display_name = "orange goggles (Teshari)"
	path = /obj/item/clothing/glasses/aerogelgoggles
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/uniform/smockcolor
	display_name = "smock, recolorable (Teshari)"
	path = /obj/item/clothing/under/teshari/smock/white
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/uniform/smockcolor/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/uniform/undercoatcolor
	display_name = "undercoat, recolorable (Teshari)"
	path = /obj/item/clothing/under/teshari/undercoat/standard/white_grey
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/uniform/undercoatcolor/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/suit/cloakcolor
	display_name = "cloak, recolorable (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/standard/white_grey
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/suit/cloakcolor/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/suit/labcoat_tesh
	display_name = "labcoat, colorable (Teshari)"
	path = /obj/item/clothing/suit/storage/toggle/labcoat/teshari
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/suit/labcoat_tesh/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/suit/teshcoat
	display_name = "small black coat, recolorable stripes (Teshari)"
	path = /obj/item/clothing/suit/storage/toggle/tesharicoat
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/suit/teshcoat/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

/datum/gear/suit/teshcoatwhite
	display_name = "smallcoat, recolorable (Teshari)"
	path = /obj/item/clothing/suit/storage/toggle/tesharicoatwhite
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/suit/teshcoatwhite/New()
	..()
	gear_tweaks = list(gear_tweak_free_color_choice)

//VOX

/datum/gear/uniform/voxcivassistant
	display_name = "vox pressure suit (assistant)"
	path = /obj/item/clothing/under/pressuresuit/voxcivassistant
	sort_category = "Xenowear"
	whitelisted = SPECIES_VOX

/datum/gear/uniform/voxcivbartender
	display_name = "vox pressure suit (bartender)"
	path = /obj/item/clothing/under/pressuresuit/voxcivbartender
	sort_category = "Xenowear"
	whitelisted = SPECIES_VOX

/datum/gear/uniform/voxcivchef
	display_name = "vox pressure suit (chef)"
	path = /obj/item/clothing/under/pressuresuit/voxcivchef
	sort_category = "Xenowear"
	whitelisted = SPECIES_VOX

/datum/gear/uniform/voxcivchaplain
	display_name = "vox pressure suit (chaplain)"
	path = /obj/item/clothing/under/pressuresuit/voxcivchaplain
	sort_category = "Xenowear"
	whitelisted = SPECIES_VOX

/datum/gear/uniform/voxcivlibrarian
	display_name = "vox pressure suit (librarian)"
	path = /obj/item/clothing/under/pressuresuit/voxcivlibrarian
	sort_category = "Xenowear"
	whitelisted = SPECIES_VOX

/datum/gear/uniform/voxsecofficer
	display_name = "vox pressure suit (security officer)"
	path = /obj/item/clothing/under/pressuresuit/voxcivsecurity
	sort_category = "Xenowear"
	whitelisted = SPECIES_VOX

/datum/gear/uniform/voxcivmedical
	display_name = "vox pressure suit (medical doctor)"
	path = /obj/item/clothing/under/pressuresuit/voxcivmedical
	sort_category = "Xenowear"
	whitelisted = SPECIES_VOX

/datum/gear/uniform/voxcivengineer
	display_name = "vox pressure suit (engineer)"
	path = /obj/item/clothing/under/pressuresuit/voxcivengineer
	sort_category = "Xenowear"
	whitelisted = SPECIES_VOX

/datum/gear/uniform/voxcivscience
	display_name = "vox pressure suit (scientist)"
	path = /obj/item/clothing/under/pressuresuit/voxcivscience
	sort_category = "Xenowear"
	whitelisted = SPECIES_VOX

/datum/gear/uniform/voxcivrd
	display_name = "vox pressure suit (research director)"
	path = /obj/item/clothing/under/pressuresuit/voxcivrd
	sort_category = "Xenowear"
	whitelisted = SPECIES_VOX

/datum/gear/uniform/voxcivce
	display_name = "vox pressure suit (chief engineer)"
	path = /obj/item/clothing/under/pressuresuit/voxcivce
	sort_category = "Xenowear"
	whitelisted = SPECIES_VOX

/datum/gear/uniform/simonpants
	display_name = "simon pants (Vox)"
	path = /obj/item/clothing/under/vox/simonpants
	sort_category = "Xenowear"
	whitelisted = SPECIES_VOX

/datum/gear/suit/simonjacket
	display_name = "simon jacket (Vox)"
	path = /obj/item/clothing/suit/simonjacket
	sort_category = "Xenowear"
	whitelisted = SPECIES_VOX

/datum/gear/uniform/voxcasual
	display_name = "casual wear (Vox)"
	path = /obj/item/clothing/under/vox/vox_casual
	sort_category = "Xenowear"
	whitelisted = "Vox"

/datum/gear/uniform/voxrobes
	display_name = "comfy robes (Vox)"
	path = /obj/item/clothing/under/vox/vox_robes
	sort_category = "Xenowear"
	whitelisted = "Vox"

/datum/gear/accessory/vox
	display_name = "storage vest (Vox)"
	path = /obj/item/clothing/accessory/storage/vox
	sort_category = "Xenowear"
	whitelisted = "Vox"

/datum/gear/gloves/vox
	display_name = "insulated gauntlets (Vox)"
	path = /obj/item/clothing/gloves/vox
	sort_category = "Xenowear"
	whitelisted = "Vox"

/datum/gear/shoes/vox
	display_name = "magclaws (Vox)"
	path = /obj/item/clothing/shoes/magboots/vox
	sort_category = "Xenowear"
	whitelisted = "Vox"

/datum/gear/mask/vox
	display_name = "alien mask (Vox)"
	path = /obj/item/clothing/mask/gas/swat/vox
	sort_category = "Xenowear"
	whitelisted = "Vox"

/datum/gear/uniform/loincloth
	display_name = "loincloth"
	path = /obj/item/clothing/suit/storage/fluff/loincloth
	sort_category = "Xenowear"

// Taj clothing
/datum/gear/eyes/tajblind
	display_name = "embroidered veil"
	path = /obj/item/clothing/glasses/tajblind
	//whitelisted = SPECIES_TAJ
	sort_category = "Xenowear"

/datum/gear/eyes/medical/tajblind
	display_name = "medical veil (Tajara) (Medical)"
	path = /obj/item/clothing/glasses/hud/health/tajblind
	//whitelisted = SPECIES_TAJ
	sort_category = "Xenowear"

/datum/gear/eyes/meson/tajblind
	display_name = "industrial veil (Tajara) (Engineering, Science)"
	path = /obj/item/clothing/glasses/meson/prescription/tajblind
	//whitelisted = SPECIES_TAJ
	sort_category = "Xenowear"

/datum/gear/eyes/material/tajblind
	display_name = "mining veil (Tajara) (Mining)"
	path = /obj/item/clothing/glasses/material/prescription/tajblind
	//whitelisted = SPECIES_TAJ
	sort_category = "Xenowear"

/datum/gear/eyes/security/tajblind
	display_name = "sleek veil (Tajara) (Security)"
	path = /obj/item/clothing/glasses/sunglasses/sechud/tajblind
	//whitelisted = SPECIES_TAJ
	sort_category = "Xenowear"


/datum/gear/uniform/plascapalt
	display_name = "alternate Facility Director helmet (phoronoid)"
	path = /obj/item/clothing/head/helmet/space/plasman/sec/captain/alt
	sort_category = "Xenowear"
	whitelisted = SPECIES_PLASMAMAN
	allowed_roles = list("Facility Director")

/datum/gear/uniform/plashosalt1
	display_name = "alternate head of security helmet 1 (phoronoid)"
	path = /obj/item/clothing/head/helmet/space/plasman/sec/hos/alt1
	sort_category = "Xenowear"
	whitelisted = SPECIES_PLASMAMAN
	allowed_roles = list("Head of Security")

/datum/gear/uniform/plashosalt2
	display_name = "alternate head of security helmet 2 (phoronoid)"
	path = /obj/item/clothing/head/helmet/space/plasman/sec/hos/alt2
	sort_category = "Xenowear"
	whitelisted = SPECIES_PLASMAMAN
	allowed_roles = list("Head of Security")

/datum/gear/uniform/plasaccessories
	display_name = "containment suit accessory selection (phoronoid)"
	sort_category = "Xenowear"
	whitelisted = SPECIES_PLASMAMAN

/datum/gear/uniform/plasaccessories/New()
	..()
	var/list/plasaccessories = list()
	for(var/plasman in (typesof(/obj/item/clothing/accessory/plasman)))
		var/obj/item/clothing/accessory/plasman/plasaccessory_type = plasman
		plasaccessories[initial(plasaccessory_type.name)] = plasaccessory_type
	gear_tweaks += new/datum/gear_tweak/path(sortTim(plasaccessories, /proc/cmp_text_asc))

//Added from CHOMP
/datum/gear/suit/hood
	display_name = "hooded cloak selection (Teshari)"
	path = /obj/item/clothing/suit/storage/teshari/cloak/standard
	whitelisted = SPECIES_TESHARI
	sort_category = "Xenowear"

/datum/gear/suit/hood/New()
	..()
	var/list/cloaks = list()
	for(var/cloak in typesof(/obj/item/clothing/suit/storage/hooded/teshari/standard))
		var/obj/item/clothing/suit/storage/teshari/cloak/cloak_type = cloak
		cloaks[initial(cloak_type.name)] = cloak_type
	gear_tweaks += new/datum/gear_tweak/path(sortTim(cloaks, /proc/cmp_text_asc))
