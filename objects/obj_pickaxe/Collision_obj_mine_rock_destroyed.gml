/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 52997BAB
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 187E264E
/// @DnDArgument : "soundid" "pickaxe_mining"
/// @DnDSaveInfo : "soundid" "pickaxe_mining"
audio_play_sound(pickaxe_mining, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 77DA7320
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "spr_pickaxe_mining"
/// @DnDSaveInfo : "spriteind" "spr_pickaxe_mining"
sprite_index = spr_pickaxe_mining;
image_index += 0;