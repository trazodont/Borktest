// Eating stuff
/// From datum/component/edible/proc/TakeBite: (mob/living/eater, mob/feeder, bitecount, bitesize)
#define COMSIG_FOOD_EATEN "food_eaten"
/// From base of Component/edible/On_Consume: (mob/living/eater, mob/living/feeder)
#define COMSIG_FOOD_CONSUMED "food_consumed"

// Deep frying foods
/// An item becomes fried - From /datum/element/fried_item/Attach: (fry_time)
#define COMSIG_ITEM_FRIED "item_fried"
	#define COMSIG_FRYING_HANDLED (1<<0)

// Microwaving foods
///called on item when microwaved (): (obj/machinery/microwave/M)
#define COMSIG_ITEM_MICROWAVE_ACT "microwave_act"
	#define COMPONENT_SUCCESFUL_MICROWAVE (1<<0)
///called on item when created through microwaving (): (obj/machinery/microwave/M, cooking_efficiency)
#define COMSIG_ITEM_MICROWAVE_COOKED "microwave_cooked"

///From /datum/component/edible/on_compost(source, /mob/living/user)
#define COMSIG_EDIBLE_ON_COMPOST "on_compost"
	// Used to stop food from being composted.
	#define COMPONENT_EDIBLE_BLOCK_COMPOST 1

// Baking foods (oven)
//Called when an object is inserted into an oven (atom/oven, mob/baker)
#define COMSIG_ITEM_OVEN_PLACED_IN "item_placed_in_oven"
//Called when an object is in an oven
#define COMSIG_ITEM_OVEN_PROCESS "item_baked"
	/// Return to not burn the item
	#define COMPONENT_HANDLED_BAKING (1<<0)
	/// Return if the result of the baking was a good thing
	#define COMPONENT_BAKING_GOOD_RESULT (1<<1)
	/// Return if the result of the baking was a bad thing / failuire
	#define COMPONENT_BAKING_BAD_RESULT (1<<2)
///Called when an object is turned into another item through baking in an oven
#define COMSIG_ITEM_BAKED "item_bake_completed"
