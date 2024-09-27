// Atom movement signals. Format:
// When the signal is called: (signal arguments)
// All signals send the source datum of the signal as the first argument


///signal sent out by an atom upon onZImpact : (turf/impacted_turf, levels)
#define COMSIG_ATOM_ON_Z_IMPACT "movable_on_z_impact"
///Signal sent after an atom movable moves on shuttle.
#define COMSIG_ATOM_AFTER_SHUTTLE_MOVE "movable_after_shuttle_move"

/// called on /atom when something attempts to pass through it (atom/movable/source, atom/movable/passing, dir)
#define COMSIG_ATOM_TRIED_PASS "atom_tried_pass"
	#define COMSIG_COMPONENT_PERMIT_PASSAGE (1 << 0)

#define COMSIG_LIVING_TRYING_TO_PULL "living_tried_pulling"
/// Called from /mob/living/update_pull_movespeed

///from base of atom/relaymove(): (mob/living/user, direction)
#define COMSIG_ATOM_RELAYMOVE "atom_relaymove"
	///prevents the "you cannot move while buckled! message"
	#define COMSIG_BLOCK_RELAYMOVE (1<<0)

/// From base of atom/setDir(): (old_dir, new_dir). Called before the direction changes
#define COMSIG_ATOM_PRE_DIR_CHANGE "atom_pre_face_atom"
	#define COMPONENT_ATOM_BLOCK_DIR_CHANGE (1<<0)

///from base of atom/setDir(): (old_dir, new_dir). Called after the direction changes.
#define COMSIG_ATOM_POST_DIR_CHANGE "atom_dir_change"
///from base of atom/movable/keybind_face_direction(): (dir). Called before turning with the movement lock key.
#define COMSIG_MOVABLE_KEYBIND_FACE_DIR "keybind_face_dir"
	///ignores the movement lock key, used for turning while strafing in a mech
	#define COMSIG_IGNORE_MOVEMENT_LOCK (1<<0)

/// from /datum/component/singularity/proc/can_move(), as well as /obj/energy_ball/proc/can_move()
/// if a callback returns `SINGULARITY_TRY_MOVE_BLOCK`, then the singularity will not move to that turf
#define COMSIG_ATOM_SINGULARITY_TRY_MOVE "atom_singularity_try_move"
	/// When returned from `COMSIG_ATOM_SINGULARITY_TRY_MOVE`, the singularity will move to that turf
	#define SINGULARITY_TRY_MOVE_BLOCK (1 << 0)
///from base of atom/experience_pressure_difference(): (pressure_difference, direction, pressure_resistance_prob_delta)
#define COMSIG_ATOM_PRE_PRESSURE_PUSH "atom_pre_pressure_push"
	///prevents pressure movement
	#define COMSIG_ATOM_BLOCKS_PRESSURE (1<<0)
///From base of /datum/move_loop/process() after attempting to move a movable: (datum/move_loop/loop, old_dir)
#define COMSIG_MOVABLE_MOVED_FROM_LOOP "movable_moved_from_loop"
