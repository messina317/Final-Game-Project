/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 25633F0C
/// @DnDArgument : "expr" "move_y > 0 ||move_y < 0 "
if(move_y > 0 ||move_y < 0 )
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4D4D92F7
	/// @DnDParent : 25633F0C
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_Nicholas_player_jump"
	/// @DnDSaveInfo : "spriteind" "spr_Nicholas_player_jump"
	sprite_index = spr_Nicholas_player_jump;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7E879BAF
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_nicholas_floor"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "obj_nicholas_floor"
var l7E879BAF_0 = instance_place(x + 0, y + 2, [obj_nicholas_floor]);
if (!(l7E879BAF_0 > 0))
{

}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2487420C
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D880FA3
	/// @DnDParent : 2487420C
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 009CC30A
		/// @DnDParent : 5D880FA3
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_nicholas_player_walk"
		/// @DnDSaveInfo : "spriteind" "spr_nicholas_player_walk"
		sprite_index = spr_nicholas_player_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 52FAF033
		/// @DnDParent : 5D880FA3
		/// @DnDArgument : "xscale" "-1* abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1* abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78F9ED31
	/// @DnDParent : 2487420C
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 63D0420D
		/// @DnDParent : 78F9ED31
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_nicholas_player_walk"
		/// @DnDSaveInfo : "spriteind" "spr_nicholas_player_walk"
		sprite_index = spr_nicholas_player_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 002D5CC4
		/// @DnDParent : 78F9ED31
		/// @DnDArgument : "xscale" " abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale =  abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25228ADB
	/// @DnDParent : 2487420C
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 45FDA1BE
		/// @DnDParent : 25228ADB
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_nicholas_player_idle"
		/// @DnDSaveInfo : "spriteind" "spr_nicholas_player_idle"
		sprite_index = spr_nicholas_player_idle;
		image_index += 0;
	}
}