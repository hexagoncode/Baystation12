/mob/living/simple_animal/hostile/antlion
	name = "antlion"
	desc = "A large insectoid creature."
	icon = 'icons/mob/simple_animal/antlion.dmi'
	icon_state = "antlion" // these are placeholders, as otherwise the mob is complete
	icon_living = "antlion" 
	icon_dead = "antlion_dead" 
	mob_size = MOB_MEDIUM
	speak_emote = list("clicks") 
	emote_hear = list("clicks its mandibles")
	emote_see = list("shakes the sand off itself")
	response_harm   = "strikes"
	attacktext = "bit"
	faction = "antlions"
	bleed_colour = COLOR_SKY_BLUE

	health = 65
	maxHealth = 65
	melee_damage_lower = 7
	melee_damage_upper = 15
	natural_armor = list(melee = 10)

	var/healing = FALSE
	var/heal_amount = 6
	var/last_vanished
	var/vanish_cooldown = 30 SECONDS

/mob/living/simple_animal/hostile/antlion/Life()
	. = ..()

	process_healing() //this needs to occur before if(!.) because of stop_automation

	if(!.)
		return
	
	if(can_vanish())
		vanish()

/mob/living/simple_animal/hostile/antlion/proc/can_vanish()
	if(!can_act() || last_vanished > world.time || !target_mob)
		return FALSE
	return TRUE

/mob/living/simple_animal/hostile/antlion/proc/vanish()
	visible_message(SPAN_NOTICE("\The [src] burrows into \the [get_turf(src)]!"))
	set_invisibility(INVISIBILITY_OBSERVER)
	prep_burrow(TRUE)
	addtimer(CALLBACK(src, .proc/diggy), 5 SECONDS)

/mob/living/simple_animal/hostile/antlion/proc/diggy()
	var/list/turf_targets
	if(target_mob)
		turf_targets = trange(1, get_turf(target_mob))
	else
		turf_targets = trange(5, get_turf(src))
	for(var/turf/TT in turf_targets)
		if(!TT.is_floor()) //excludes walls, space and open space
			turf_targets -= TT
	var/turf/T = pick(turf_targets)
	if(T && !incapacitated())
		forceMove(T)
	addtimer(CALLBACK(src, .proc/emerge, 2 SECONDS))

/mob/living/simple_animal/hostile/antlion/proc/emerge()
	var/turf/T = get_turf(src)
	if(!T)
		return
	visible_message(SPAN_WARNING("\The [src] erupts from \the [T]!"))
	set_invisibility(initial(invisibility))
	prep_burrow(FALSE)
	last_vanished = world.time + vanish_cooldown
	for(var/mob/living/carbon/human/H in get_turf(src))
		var/zone_to_hit = pick(BP_R_FOOT, BP_L_FOOT, BP_R_LEG, BP_L_LEG, BP_GROIN)
		H.apply_damage(rand(melee_damage_lower, melee_damage_upper), BRUTE, zone_to_hit, DAM_EDGE, used_weapon = "antlion mandible")
		visible_message(SPAN_DANGER("\The [src] tears into \the [H] from below!"))
		H.Weaken(1)
	
/mob/living/simple_animal/hostile/antlion/proc/process_healing()
	if(!incapacitated() && healing)
		var/old_health = health
		if(old_health < maxHealth)
			health = old_health + heal_amount

/mob/living/simple_animal/hostile/antlion/proc/prep_burrow(var/new_bool)
	stop_automated_movement = new_bool
	stop_automation = new_bool
	healing = new_bool

/mob/living/simple_animal/hostile/antlion/mega
	name = "antlion queen"
	desc = "A huge antlion. It looks displeased."
	icon_state = "queen"
	icon_living = "queen"
	mob_size = MOB_LARGE
	health = 275
	maxHealth = 275
	melee_damage_lower = 21
	melee_damage_upper = 29
	natural_armor = list(melee = 20)
	heal_amount = 9
	vanish_cooldown = 45 SECONDS
	can_escape = TRUE
	break_stuff_probability = 25

/mob/living/simple_animal/hostile/antlion/mega/Initialize()
	. = ..()
	var/matrix/M = new
	M.Scale(1.5)
	transform = M
	update_icon()