///////////////////////////////////
///////Biogenerator Designs ///////
///////////////////////////////////

/datum/design/milk
	name = "Synthetic Milk"
	id = "milk"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.4)
	make_reagents = list(/datum/reagent/consumable/milk = 1)
	category = list("initial","Food")

/datum/design/soymilk
	name = "Synthetic Soy Milk"
	id = "soymilk"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.4)
	make_reagents = list(/datum/reagent/consumable/soymilk = 1)
	category = list("initial","Food")

/datum/design/ethanol
	name = "Synthetic Ethanol"
	id = "ethanol"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.6)
	make_reagents = list(/datum/reagent/consumable/ethanol = 1)
	category = list("initial","Food")

/datum/design/cream
	name = "Synthetic Cream"
	id = "cream"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.6)
	make_reagents = list(/datum/reagent/consumable/cream = 1)
	category = list("initial","Food")

/datum/design/black_pepper
	name = "Synthetic Black Pepper"
	id = "black_pepper"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.6)
	make_reagents = list(/datum/reagent/consumable/blackpepper = 1)
	category = list("initial","Food")

/datum/design/enzyme
	name = "Synthetic Enzyme"
	id = "enzyme"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.6)
	make_reagents = list(/datum/reagent/consumable/enzyme = 1)
	category = list("initial","Food")

/datum/design/flour
	name = "Synthetic Flour"
	id = "flour_sack"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.6)
	make_reagents = list(/datum/reagent/consumable/flour = 1)
	category = list("initial","Food")

/datum/design/sugar
	name = "Synthetic Sugar"
	id = "sugar"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.6)
	make_reagents = list(/datum/reagent/consumable/sugar = 1)
	category = list("initial","Food")

/datum/design/monkey_cube
	name = "Monkey Cube"
	id = "mcube"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 50)
	build_path = /obj/item/reagent_containers/food/snacks/monkeycube
	category = list("initial","Food")

/datum/design/seaweed_sheet
	name = "Seaweed Sheet"
	id = "seaweedsheet"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 3)
	build_path = /obj/item/reagent_containers/food/snacks/grown/seaweed/sheet
	category = list("initial","Food")

/datum/design/ez_nut   //easy nut :)
	name = "E-Z Nutrient"
	id = "ez_nut"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.1)
	make_reagents = list(/datum/reagent/plantnutriment/eznutriment = 1)
	category = list("initial","Botany Chemicals")

/datum/design/l4z_nut
	name = "Left 4 Zed"
	id = "l4z_nut"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.1)
	make_reagents = list(/datum/reagent/plantnutriment/left4zednutriment = 1)
	category = list("initial","Botany Chemicals")

/datum/design/rh_nut
	name = "Robust Harvest"
	id = "rh_nut"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.2)
	make_reagents = list(/datum/reagent/plantnutriment/robustharvestnutriment = 1)
	category = list("initial","Botany Chemicals")

/datum/design/end_gro
	name = "Enduro Grow"
	id = "end_gro"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.3)
	make_reagents = list(/datum/reagent/plantnutriment/endurogrow = 1)
	category = list("initial","Botany Chemicals")

/datum/design/liq_earth
	name = "Liquid Earthquake"
	id = "liq_earth"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.3)
	make_reagents = list(/datum/reagent/plantnutriment/liquidearthquake = 1)
	category = list("initial","Botany Chemicals")

/datum/design/weed_killer
	name = "Weed Killer"
	id = "weed_killer"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.2)
	make_reagents = list(/datum/reagent/toxin/plantbgone/weedkiller = 1)
	category = list("initial","Botany Chemicals")

/datum/design/pest_spray
	name = "Pest Killer"
	id = "pest_spray"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 0.4)
	make_reagents = list(/datum/reagent/toxin/pestkiller = 1)
	category = list("initial","Botany Chemicals")

/datum/design/leather
	name = "Sheet of Leather"
	id = "leather"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 30)
	build_path = /obj/item/stack/sheet/leather
	category = list("initial","Organic Materials")

/datum/design/cloth
	name = "Sheet of Cloth"
	id = "cloth"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 10)
	build_path = /obj/item/stack/sheet/cotton/cloth
	category = list("initial","Organic Materials")

/datum/design/cardboard
	name = "Sheet of Cardboard"
	id = "cardboard"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 5)
	build_path = /obj/item/stack/sheet/cardboard
	category = list("initial","Organic Materials")

/datum/design/paper
	name = "Sheet of Paper"
	id = "paper"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 2)
	build_path = /obj/item/paper
	category = list("initial","Organic Materials")

/datum/design/rolling_paper
	name = "Sheet of Rolling Paper"
	id = "rollingpaper"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 1)
	build_path = /obj/item/rollingpaper
	category = list("initial","Organic Materials")

/datum/design/candle
	name = "Candle"
	id = "candle"
	build_type = BIOGENERATOR
	materials = list(/datum/material/biomass = 3)
	build_path = /obj/item/candle
	category = list("initial","Organic Materials")
