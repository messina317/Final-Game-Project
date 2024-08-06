/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 12A32E40
/// @DnDComment :  move_y > 0 ||$(13_10)(FALLING)
/// @DnDArgument : "expr" "move_y < 0"
if(move_y < 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 57AA6698
	/// @DnDParent : 12A32E40
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_miner_jump"
	/// @DnDSaveInfo : "spriteind" "spr_miner_jump"
	sprite_index = spr_miner_jump;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 0C1A4120
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "object" "obj_mine_rock"
/// @DnDSaveInfo : "object" "obj_mine_rock"
/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1F2FC4D6
/// @DnDDisabled : 1
/// @DnDParent : 0C1A4120
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "spr_miner_jump"
/// @DnDSaveInfo : "spriteind" "spr_miner_jump"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1DB31EEC
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 06028CD7
	/// @DnDParent : 1DB31EEC
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4BCFA6AD
		/// @DnDParent : 06028CD7
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_miner_walk"
		/// @DnDSaveInfo : "spriteind" "spr_miner_walk"
		sprite_index = spr_miner_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 133D6E02
		/// @DnDParent : 06028CD7
		/// @DnDArgument : "xscale" "-1*abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1*abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18281AF1
	/// @DnDParent : 1DB31EEC
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 59DF36D1
		/// @DnDParent : 18281AF1
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_miner_walk"
		/// @DnDSaveInfo : "spriteind" "spr_miner_walk"
		sprite_index = spr_miner_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 1BB717F5
		/// @DnDParent : 18281AF1
		/// @DnDArgument : "xscale" "abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 168B268D
	/// @DnDParent : 1DB31EEC
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 06D98C9F
		/// @DnDParent : 168B268D
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_miner_idle"
		/// @DnDSaveInfo : "spriteind" "spr_miner_idle"
		sprite_index = spr_miner_idle;
		image_index += 0;
	}
}