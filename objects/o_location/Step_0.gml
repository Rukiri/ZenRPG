if fade_out == false {
	alpha_increment += 0.25 * DELTA;
} else if fade_out == true {
	// wait 5 seconds before decreasing 
	timer += 1 * DELTA;
	if timer >= 5 {
		alpha_increment -= 0.25 * DELTA;
	}
}

if alpha_increment >= 1 {
	fade_out = true
} else if alpha_increment <= 0 {
	fade_out = false;
	timer = 0;
	instance_deactivate_object(o_location);
}