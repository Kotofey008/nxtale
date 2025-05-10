global.interact = 3
global.myinteract = 3
instance_create_depth(0, 0, -99999, obj_unfader)
audio_stop_all()
if (touched == false)
{
    snd_play(mus_dooropen)
    alarm[2] = 14
	image_index = 1
    touched = true
}
