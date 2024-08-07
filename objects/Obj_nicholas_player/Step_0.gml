/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 38717038
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46C94ED7
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * walk_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6B06979A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_nicholas_floor"
/// @DnDSaveInfo : "object" "obj_nicholas_floor"
var l6B06979A_0 = instance_place(x + 0, y + 2, [obj_nicholas_floor]);
if ((l6B06979A_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0405BF62
	/// @DnDParent : 6B06979A
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 084073B1
	/// @DnDParent : 6B06979A
	var l084073B1_0;
	l084073B1_0 = keyboard_check_pressed(vk_space);
	if (l084073B1_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C3493AD
		/// @DnDParent : 084073B1
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 79A4AF7E
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0915B62C
	/// @DnDParent : 79A4AF7E
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2EF87050
		/// @DnDParent : 0915B62C
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 5C9B69C6
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "obj_nicholas_floor"
/// @DnDSaveInfo : "object" "obj_nicholas_floor"
move_and_collide(move_x, move_y, obj_nicholas_floor,4,0,0,walk_speed,jump_speed);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3AE9E0DA
/// @DnDArgument : "var" "move_y"
move_y = 0;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 025888E5
var l025888E5_0;
l025888E5_0 = keyboard_check_pressed(vk_space);
if (l025888E5_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45AE320F
	/// @DnDParent : 025888E5
	/// @DnDArgument : "expr" "-jump_speed"
	/// @DnDArgument : "var" "move_y"
	move_y = -jump_speed;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B13326D
/// @DnDArgument : "var" "using_light"
/// @DnDArgument : "op" "2"
if(using_light > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 194F2F09
	/// @DnDParent : 3B13326D
	/// @DnDArgument : "expr" "x"
	/// @DnDArgument : "var" "obj_light.x"
	obj_light.x = x;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5122BB7D
	/// @DnDParent : 3B13326D
	/// @DnDArgument : "expr" "y"
	/// @DnDArgument : "var" "obj_light.y"
	obj_light.y = y;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 065044C9
	/// @DnDParent : 3B13326D
	/// @DnDArgument : "key" "ord("Q")"
	var l065044C9_0;
	l065044C9_0 = keyboard_check_pressed(ord("Q"));
	if (l065044C9_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 63C8A6C9
		/// @DnDParent : 065044C9
		/// @DnDArgument : "var" "using_light"
		using_light = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1C8D56D8
		/// @DnDApplyTo : {obj_light}
		/// @DnDParent : 065044C9
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_light_off"
		/// @DnDSaveInfo : "spriteind" "spr_light_off"
		with(obj_light) {
		sprite_index = spr_light_off;
		image_index += 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7530122B
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 004F4C82
	/// @DnDParent : 7530122B
	/// @DnDArgument : "var" "using_light"
	if(using_light == 0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 493A69DF
		/// @DnDParent : 004F4C82
		/// @DnDArgument : "key" "ord("Q")"
		var l493A69DF_0;
		l493A69DF_0 = keyboard_check_pressed(ord("Q"));
		if (l493A69DF_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3D51F2F7
			/// @DnDParent : 493A69DF
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "using_light"
			using_light = 1;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 184E9DC8
			/// @DnDApplyTo : {obj_light}
			/// @DnDParent : 493A69DF
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_light"
			/// @DnDSaveInfo : "spriteind" "spr_light"
			with(obj_light) {
			sprite_index = spr_light;
			image_index += 0;
			}
		}
	}
}