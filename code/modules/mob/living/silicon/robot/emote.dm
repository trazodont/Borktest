/datum/emote/silicon
	mob_type_allowed_typecache = list(/mob/living/silicon)
	emote_type = EMOTE_AUDIBLE

/datum/emote/silicon/boop
	key = "boop"
	key_third_person = "boops"
	message = "boops."

/datum/emote/silicon/buzz
	key = "buzz"
	key_third_person = "buzzes"
	message = "buzzes."
	message_param = "buzzes at %t."
	sound = 'sound/machines/buzz-sigh.ogg'

/datum/emote/silicon/buzz2
	key = "buzz2"
	message = "buzzes twice."
	sound = 'sound/machines/buzz-two.ogg'

/datum/emote/silicon/chime
	key = "chime"
	key_third_person = "chimes"
	message = "chimes."
	sound = 'sound/machines/chime.ogg'

/datum/emote/silicon/no
	key = "no"
	message = "emits an negative blip."
	sound = 'sound/machines/synth_no.ogg'

/datum/emote/silicon/ping
	key = "ping"
	key_third_person = "pings"
	message = "pings."
	message_param = "pings at %t."
	sound = 'sound/machines/ping.ogg'

/datum/emote/silicon/sad
	key = "sad"
	message = "plays a sad trombone..."
	sound = 'sound/misc/sadtrombone.ogg'

/datum/emote/silicon/warn
	key = "warn"
	message = "blares an alarm!"
	sound = 'sound/machines/warning-buzzer.ogg'

/datum/emote/silicon/yes
	key = "yes"
	message = "emits an affirmative blip."
	sound = 'sound/machines/synth_yes.ogg'

/datum/emote/living/silicon/scream
	key = "scream"
	key_third_person = "screams"
	message = "screams!"
	sound = 'sound/voice/silicon/robot_scream.ogg'
	mob_type_allowed_typecache = list(/mob/living/silicon)

/datum/emote/living/silicon/laugh
	key = "laugh"
	key_third_person = "laughs"
	message = "laughs."
	sound = 'sound/voice/silicon/robot_laugh.ogg'
	mob_type_allowed_typecache = list(/mob/living/silicon)

/datum/emote/living/silicon/fart
	key = "fart"
	key_third_person = "farts"
	message = "makes a synthetic"
	sound = 'sound/voice/silicon/poo2_robot.ogg'
	mob_type_allowed_typecache = list(/mob/living/silicon)
