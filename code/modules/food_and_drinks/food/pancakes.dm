#define PANCAKE_MAX_STACK 10

/obj/item/food/pancakes
	name = "pancake"
	desc = "A fluffy pancake. The softer, superior relative of the waffle."
	icon_state = "pancakes_1"
	item_state = "pancakes"
	bonus_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 1)
	list_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 1)
	filling_color = "#D2691E"
	tastes = list("pancakes" = 1)
	foodtype = GRAIN | SUGAR | BREAKFAST
	///Used as a base name while generating the icon states when stacked
	var/stack_name = "pancakes"

/obj/item/food/pancakes/raw
	name = "goopy pancake"
	desc = "A barely cooked mess that some may mistake for a pancake. It longs for the griddle."
	icon_state = "rawpancakes_1"
	list_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 1)
	tastes = list("milky batter" = 1)
	stack_name = "rawpancakes"

/obj/item/food/pancakes/raw/make_grillable()
	AddComponent(/datum/component/grillable,\
				cook_result = /obj/item/food/pancakes,\
				required_cook_time = rand(30 SECONDS, 40 SECONDS),\
				positive_result = TRUE,\
				use_large_steam_sprite = TRUE)

/obj/item/food/pancakes/raw/attackby(obj/item/garnish, mob/living/user, params)
	var/newresult
	if(istype(garnish, /obj/item/reagent_containers/food/snacks/grown/berries))
		newresult = /obj/item/reagent_containers/food/snacks/pancakes/blueberry
		name = "raw blueberry pancake"
		icon_state = "rawbbpancakes_1"
		stack_name = "rawbbpancakes"
	else if(istype(garnish, /obj/item/reagent_containers/food/snacks/chocolatebar))
		newresult = /obj/item/reagent_containers/food/snacks/pancakes/chocolatechip
		name = "raw chocolate chip pancake"
		icon_state = "rawccpancakes_1"
		stack_name = "rawccpancakes"
	else
		return ..()
	if(newresult)
		qdel(garnish)
		to_chat(user, span_notice("You add [garnish] to [src]."))
		AddComponent(/datum/component/grillable, cook_result = newresult)

/obj/item/food/pancakes/raw/examine(mob/user)
	. = ..()
	if(name == initial(name))
		. += "<span class='notice'>You can modify the pancake by adding <b>blueberries</b> or <b>chocolate</b> before finishing the griddle."

/obj/item/food/pancakes/blueberry
	name = "blueberry pancake"
	desc = "A fluffy and delicious blueberry pancake."
	icon_state = "bbpancakes_1"
	item_state = "bbpancakes"
	bonus_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("pancakes" = 1, "blueberries" = 1)

/obj/item/food/pancakes/chocolatechip
	name = "chocolate chip pancake"
	desc = "A fluffy and delicious chocolate chip pancake."
	icon_state = "ccpancakes_1"
	item_state = "ccpancakes"
	bonus_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("pancakes" = 1, "chocolate" = 1)

/obj/item/food/pancakes/Initialize()
	. = ..()
	update_appearance()

/obj/item/food/pancakes/update_name()
	name = contents.len ? "stack of pancakes" : initial(name)
	return ..()

/obj/item/food/pancakes/update_icon(updates=ALL)
	if(!(updates & UPDATE_OVERLAYS))
		return ..()

	updates &= ~UPDATE_OVERLAYS
	. = ..() // Don't update overlays. We're doing that here

	if(contents.len < LAZYLEN(overlays))
		overlays -= overlays[overlays.len]
	. |= UPDATE_OVERLAYS

/obj/item/food/pancakes/examine(mob/user)
	var/ingredients_listed = ""
	var/pancakeCount = contents.len
	switch(pancakeCount)
		if(0)
			desc = initial(desc)
		if(1 to 2)
			desc = "A stack of fluffy pancakes."
		if(3 to 6)
			desc = "A fat stack of fluffy pancakes!"
		if(7 to 9)
			desc = "A grand tower of fluffy, delicious pancakes!"
		if(PANCAKE_MAX_STACK to INFINITY)
			desc = "A massive towering spire of fluffy, delicious pancakes. It looks like it could tumble over!"
	var/originalBites = bitecount
	if (pancakeCount)
		var/obj/item/reagent_containers/food/snacks/S = contents[pancakeCount]
		bitecount = S.bitecount
	. = ..()
	if (pancakeCount)
		for(var/obj/item/reagent_containers/food/snacks/pancakes/ING in contents)
			ingredients_listed += "[ING.name], "
		. += "It contains [contents.len?"[ingredients_listed]":"no ingredient, "]on top of a [initial(name)]."
	bitecount = originalBites

/obj/item/food/pancakes/attackby(obj/item/I, mob/living/user, params)
	if(istype(I, /obj/item/food/pancakes))
		var/obj/item/food/pancakesP = I
		if((contents.len >= PANCAKE_MAX_STACK) || ((P.contents.len + contents.len) > PANCAKE_MAX_STACK) || (reagents.total_volume >= volume))
			to_chat(user, "<span class='warning'>You can't add that many pancakes to [src]!</span>")
		else
			if(!user.transferItemToLoc(I, src))
				return
			to_chat(user, "<span class='notice'>You add the [I] to the [name].</span>")
			P.name = initial(P.name)
			contents += P
			update_customizable_overlays(P)
			if (P.contents.len)
				for(var/V in P.contents)
					P = V
					P.name = initial(P.name)
					contents += P
					update_customizable_overlays(P)
			P = I
			P.contents.Cut()
		return
	else if(contents.len)
		var/obj/O = contents[contents.len]
		return O.attackby(I, user, params)
	..()

/obj/item/food/pancakes/update_customizable_overlays(obj/item/reagent_containers/food/snacks/P)
	var/mutable_appearance/pancake = mutable_appearance(icon, "[P.item_state]_[rand(1,3)]")
	pancake.pixel_x = rand(-1,1)
	pancake.pixel_y = 3 * contents.len - 1
	add_overlay(pancake)
	update_appearance()

/obj/item/food/pancakes/attack(mob/M, mob/user, def_zone, stacked = TRUE)
	if(user.a_intent == INTENT_HARM || !contents.len || !stacked)
		return ..()
	var/obj/item/O = contents[contents.len]
	. = O.attack(M, user, def_zone, FALSE)
	update_appearance()

#undef PANCAKE_MAX_STACK
