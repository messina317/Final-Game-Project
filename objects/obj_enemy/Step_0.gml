/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26D3B962
/// @DnDComment : 1 would be pressing right$(13_10)-1 would be pressing left$(13_10)0 would be no input
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 53FF12E7
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "move_x*walk_speed"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 0DB3E603
/// @DnDComment : If on Ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
var l0DB3E603_0 = instance_place(x + 0, y + 2, [obj_floor]);
if ((l0DB3E603_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 748475BF
	/// @DnDComment : Reset Falling $(13_10)speed on $(13_10)movement y$(13_10)when landed$(13_10)on ground
	/// @DnDParent : 0DB3E603
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 5D76DCD6
	/// @DnDComment : wall check
	/// @DnDParent : 0DB3E603
	/// @DnDArgument : "x" "x + (25 * sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_floor"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_floor"
	var l5D76DCD6_0 = instance_place(x + (25 * sign(move_x)), y + 0, [obj_floor]);
	if (!(l5D76DCD6_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 20E499DE
		/// @DnDParent : 5D76DCD6
		/// @DnDArgument : "expr" "move_x * -1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x * -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6C9999D5
		/// @DnDComment : jump
		/// @DnDParent : 5D76DCD6
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 5DD3A34C
		/// @DnDParent : 5D76DCD6
		/// @DnDArgument : "soundid" "Jump"
		/// @DnDSaveInfo : "soundid" "Jump"
		audio_play_sound(Jump, 0, 0, 1.0, undefined, 1.0);
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 656ACB4A
	/// @DnDParent : 0DB3E603
	/// @DnDArgument : "x" "x + (30 * sign(move_x))"
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_floor"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_floor"
	var l656ACB4A_0 = instance_place(x + (30 * sign(move_x)), y + y + 50, [obj_floor]);
	if (!(l656ACB4A_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5C286BF2
		/// @DnDParent : 656ACB4A
		/// @DnDArgument : "expr" "move_x * -1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x * -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 56CFC5F3
		/// @DnDComment : jump
		/// @DnDParent : 656ACB4A
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 50418FE4
		/// @DnDParent : 656ACB4A
		/// @DnDArgument : "soundid" "Jump"
		/// @DnDSaveInfo : "soundid" "Jump"
		audio_play_sound(Jump, 0, 0, 1.0, undefined, 1.0);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 129DB2A1
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62BB94A1
	/// @DnDComment : if falling $(13_10)after jump
	/// @DnDParent : 129DB2A1
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73EC7A1D
		/// @DnDComment : gravity
		/// @DnDParent : 62BB94A1
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 333AD2C8
/// @DnDComment : 1st object$(13_10) - object to avoid
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
move_and_collide(move_x, move_y, obj_floor,4,0,0,walk_speed,jump_speed);