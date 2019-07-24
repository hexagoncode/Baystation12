/datum/map/discovery

	base_floor_type = /turf/simulated/floor/reinforced/airless
	base_floor_area = /area/maintenance/exterior

	post_round_safe_areas = list (
		/area/centcom,
		/area/shuttle/escape/centcom,
		/area/shuttle/escape_pod1/centcom,
		/area/shuttle/escape_pod2/centcom,
		/area/shuttle/escape_pod3/centcom,
		/area/shuttle/escape_pod5/centcom,
		/area/shuttle/transport1/centcom,
		/area/shuttle/administration/centcom,
		/area/shuttle/specops/centcom,
	)

//Top Deck (Z-0)
/area/discovery/atmos
	name = "\improper Atmospherics"
	icon_state = "atmos"

/area/discovery/bridge
	name = "\improper Bridge"
	icon_state = "bridge"

/area/discovery/cargo/above/quartermaster
	name = "\improper Quartermaster"
	icon_state = "quartoffice"

/area/discovery/engineering/above/substation/port
	name = "\improper Above Deck Port Substation"
	icon_state = "substation"

/area/discovery/engineering/above/solarcontrol
	name = "\improper Above Deck Solar Control"
	icon_state = "dark128"

/area/discovery/engineering/above/solarstarboard
	name = "Above Deck Solar Storage - Starboard"
	icon_state = "SolarcontrolS"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/discovery/engineering/above/solarport
	name = "Above Deck Solar Storage - Port"
	icon_state = "SolarcontrolP"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip)

/area/discovery/hallway/primary/above/aft
	name = "\improper Above Deck Aft Hallway"
	icon_state = "hallA"

/area/discovery/hallway/primary/above/central
	name = "\improper Above Deck Central Hallway"
	icon_state = "hallC1"

/area/discovery/hallway/primary/above/fore
	name = "\improper Above Deck Fore Hallway"
	icon_state = "hallF"

/area/discovery/hallway/primary/above/port
	name = "\improper Above Deck Port Hallway"
	icon_state = "hallP"

/area/discovery/hallway/primary/above/starboard
	name = "\improper Above Deck Starboard Hallway"
	icon_state = "hallS"

/area/discovery/maintenance/above/aftstarboard
	name = "\improper Above Deck Aft Starboard Maintenance"
	icon_state = "asmaint"

/area/discovery/maintenance/above/aftport
	name = "\improper Above Deck Aft Port Maintenance"
	icon_state = "apmaint"

/area/discovery/maintenance/above/foreport
	name = "\improper Above Deck Fore Port Maintenance"
	icon_state = "fpmaint"

/area/discovery/maintenance/above/forestarboard
	name = "\improper Above Deck Fore Starboard Maintenance"
	icon_state = "fsmaint"

/area/discovery/maintenance/above/hidden_room
	name = "\improper Above Deck Hidden Room"
	icon_state = "red"

/area/discovery/maintenance/above/starboard
	name = "\improper Above Deck Starboard Storage"
	icon_state = "auxstorage"

/area/solar/above/port
	name = "\improper Above Deck Port Solar Array"
	icon_state = "panelsP"

/area/solar/above/starboard
	name = "\improper Above Deck Starboard Solar Array"
	icon_state = "panelsS"

// Required to Start

/area/maintenance/exterior
	name = "\improper Exterior Reinforcements"
	icon_state = "maint_exterior"
	area_flags = AREA_FLAG_EXTERNAL
	has_gravity = FALSE
	turf_initializer = /decl/turf_initializer/maintenance/space
	req_access = list(access_external_airlocks, access_maint_tunnels)

// Shuttles
/area/shuttle/transport1/centcom
	icon_state = "shuttle"
	name = "\improper Transport Shuttle Centcom"


// CentCom

/area/centcom/control
	name = "\improper Centcom Control"

/area/centcom/creed
	name = "Creed's Office"

/area/centcom/evac
	name = "\improper Centcom Emergency Shuttle"

/area/centcom/ferry
	name = "\improper Centcom Transport Shuttle"

/area/centcom/living
	name = "\improper Centcom Living Quarters"

/area/centcom/suppy
	name = "\improper Centcom Supply Shuttle"

/area/centcom/test
	name = "\improper Centcom Testing Facility"

// Solars
/area/maintenance/auxsolarport
	name = "Solar Maintenance - Port"
	icon_state = "SolarcontrolP"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip, access_maint_tunnels)

/area/maintenance/auxsolarstarboard
	name = "Solar Maintenance - Starboard"
	icon_state = "SolarcontrolS"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip, access_maint_tunnels)

/area/solar
	area_flags = AREA_FLAG_EXTERNAL
	requires_power = 1
	always_unpowered = 1
	has_gravity = FALSE
	base_turf = /turf/space
	req_access = list(access_engine_equip)

/area/solar/auxstarboard
	name = "\improper Fore Starboard Solar Array"
	icon_state = "panelsA"

/area/solar/port
	name = "\improper Port Auxiliary Solar Array"
	icon_state = "panelsP"

// Maintenance

/area/maintenance/disposal
	name = "Waste Disposal"
	icon_state = "disposal"

/area/maintenance/incinerator
	name = "\improper Incinerator"
	icon_state = "disposal"
	req_access = list(list(access_engine, access_medical, access_cargo))

/area/maintenance/waterstore
	name = "\improper Cistern"
	icon_state = "disposal"

// Storage

/area/storage/primary
	name = "Primary Tool Storage"
	icon_state = "primarystorage"

/area/storage/tech
	name = "Technical Storage"
	icon_state = "storage"
	req_access = list(access_tech_storage)

/area/storage/tools
	name = "Auxiliary Tool Storage"
	icon_state = "auxstorage"

// Holodecks

/area/holodeck
	name = "\improper Holodeck"
	icon_state = "Holodeck"
	dynamic_lighting = 0
	sound_env = LARGE_ENCLOSED

/area/holodeck/alphadeck
	name = "\improper Holodeck Alpha"

/area/holodeck/source_plating
	name = "\improper Holodeck - Off"

/area/holodeck/source_emptycourt
	name = "\improper Holodeck - Empty Court"
	sound_env = ARENA

/area/holodeck/source_boxingcourt
	name = "\improper Holodeck - Boxing Court"
	sound_env = ARENA

/area/holodeck/source_basketball
	name = "\improper Holodeck - Basketball Court"
	sound_env = ARENA

/area/holodeck/source_thunderdomecourt
	name = "\improper Holodeck - Thunderdome Court"
	sound_env = ARENA

/area/holodeck/source_courtroom
	name = "\improper Holodeck - Courtroom"
	sound_env = AUDITORIUM

/area/holodeck/source_beach
	name = "\improper Holodeck - Beach"
	sound_env = PLAIN

/area/holodeck/source_wildlife
	name = "\improper Holodeck - Wildlife Simulation"

/area/holodeck/source_meetinghall
	name = "\improper Holodeck - Meeting Hall"
	sound_env = AUDITORIUM

/area/holodeck/source_theatre
	name = "\improper Holodeck - Theatre"
	sound_env = CONCERT_HALL

/area/holodeck/source_picnicarea
	name = "\improper Holodeck - Picnic Area"
	sound_env = PLAIN

/area/holodeck/source_snowfield
	name = "\improper Holodeck - Snow Field"
	sound_env = FOREST

/area/holodeck/source_desert
	name = "\improper Holodeck - Desert"
	sound_env = PLAIN

/area/holodeck/source_space
	name = "\improper Holodeck - Space"
	has_gravity = 0
	sound_env = SPACE

/area/holodeck/source_cafe
	name = "\improper Holodeck - Cafe"
	sound_env = PLAIN

/area/holodeck/source_volleyball
	name = "\improper Holodeck - Volleyball"
	sound_env = PLAIN

/area/holodeck/source_temple
	name = "\improper Holodeck - Temple"
	sound_env = SMALL_ENCLOSED

/area/holodeck/source_plaza
	name = "\improper Holodeck - Plaza"
	sound_env = SMALL_ENCLOSED


/area/alien
	name = "\improper Alien base"
	icon_state = "yellow"
	requires_power = 0

/area/shuttle/alien/base
	icon_state = "shuttle"
	name = "\improper Alien Shuttle Base"
	requires_power = 1

// Shuttles
/area/shuttle/administration/centcom
	name = "\improper Administration Shuttle"
	icon_state = "shuttlered"
	req_access = list(access_cent_general)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/shuttle/escape_pod1/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod2/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod3/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod5/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/supply/dock
	name = "Supply Shuttle"
	icon_state = "shuttle3"
	requires_power = 0
	req_access = list(access_cent_storage)

// Security

/area/prison/solitary
	name = "Solitary Confinement"
	icon_state = "brig"
	req_access = list(access_brig)

/area/security/armoury
	name = "\improper Security - Armory"
	icon_state = "Warden"
	req_access = list(access_armory)

/area/security/detectives_office
	name = "\improper Security - Forensic Office"
	icon_state = "detective"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_forensics_lockers)

/area/security/nuke_storage
	name = "\improper Vault"
	icon_state = "nuke_storage"
	area_flags = AREA_FLAG_IS_NOT_PERSISTENT
	req_access = list(access_heads_vault)


// Crew

/area/crew_quarters/sleep/cryo
	name = "\improper Third Deck Cryogenic Storage"
	icon_state = "Sleep"

/area/hydroponics
	name = "\improper Hydroponics"
	icon_state = "hydro"

/area/janitor
	name = "\improper Custodial Closet"
	icon_state = "janitor"
	req_access = list(access_janitor)

/area/janitor/aux
	name = "\improper Aux Custodial Closet"

// Tcomm
/area/tcommsat/
	ambience = list('sound/ambience/ambisin2.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/ambigen10.ogg')
	req_access = list(access_tcomsat)

/area/tcommsat/chamber
	name = "\improper Telecoms Central Compartment"
	icon_state = "tcomsatcham"

/area/tcommsat/computer
	name = "\improper Telecoms Control Room"
	icon_state = "tcomsatcomp"

// AI

/area/ai_monitored
	name = "AI Monitored Area"

/area/ai_monitored/storage/eva
	name = "\improper EVA Storage"
	icon_state = "eva"
	req_access = list(access_eva)

/area/turret_protected/ai
	name = "\improper AI Chamber"
	icon_state = "ai_chamber"
	ambience = list('sound/ambience/ambimalf.ogg')
	req_access = list(access_ai_upload)

/area/turret_protected/ai_cyborg_station
	name = "\improper Cyborg Station"
	icon_state = "ai_cyborg"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)

/area/turret_protected/ai_upload
	name = "\improper AI Upload Chamber"
	icon_state = "ai_upload"
	ambience = list('sound/ambience/ambimalf.ogg')
	req_access = list(access_ai_upload)

/area/turret_protected/ai_upload_foyer
	name = "\improper  AI Upload Access"
	icon_state = "ai_foyer"
	ambience = list('sound/ambience/ambimalf.ogg')
	sound_env = SMALL_ENCLOSED
	req_access = list(access_ai_upload)

// Chapel

/area/chapel/main
	name = "\improper Chapel"
	icon_state = "chapel"
	ambience = list('sound/ambience/ambicha1.ogg','sound/ambience/ambicha2.ogg','sound/ambience/ambicha3.ogg','sound/ambience/ambicha4.ogg','sound/music/traitor.ogg')
	sound_env = LARGE_ENCLOSED

/area/chapel/office
	name = "\improper Chaplain's Office"
	req_access = list(access_chapel_office)
	color = COLOR_GRAY80
	sound_env = SMALL_SOFTFLOOR

// Merchant

/area/merchant_station
	name = "\improper Merchant Station"
	icon_state = "LP"
	req_access = list(access_merchant)

// Syndicate

/area/syndicate_mothership/raider_base
	name = "\improper Raider Base"
	req_access = list(access_syndicate)

// ACTORS GUILD
/area/acting
	name = "\improper Centcom Acting Guild"
	icon_state = "red"
	dynamic_lighting = 0
	requires_power = 0

/area/acting/backstage
	name = "\improper Backstage"

/area/acting/stage
	name = "\improper Stage"
	dynamic_lighting = 1
	icon_state = "yellow"

// Thunderdome

/area/tdome
	name = "\improper Thunderdome"
	icon_state = "thunder"
	requires_power = 0
	dynamic_lighting = 0
	sound_env = ARENA
	req_access = list(access_cent_thunder)

/area/tdome/tdome1
	name = "\improper Thunderdome (Team 1)"
	icon_state = "green"

/area/tdome/tdome2
	name = "\improper Thunderdome (Team 2)"
	icon_state = "yellow"

/area/tdome/tdomeadmin
	name = "\improper Thunderdome (Admin.)"
	icon_state = "purple"

/area/tdome/tdomeobserve
	name = "\improper Thunderdome (Observer.)"
	icon_state = "purple"
