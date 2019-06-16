// Input Setup
var key_right, key_left, key_down, key_up;

key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_down = keyboard_check(vk_down);
key_up = keyboard_check(vk_up);

// Object Position and Direction
var move_direction, dir, xpos, ypos, hspd, vspd;
hspd = move_speed;
vspd = move_speed;
xpos = key_right - key_left ;
ypos = key_down - key_up;

dir =RadianToDegree(key_up, key_down, key_right, key_left);
move_direction = DegreeToRadian(dir);

// Check if moving
var moving
if key_left || key_right || key_down || key_up {
	moving = true;	
} else {
	moving = false;	
}

// Move the object
var move_xpos, move_ypos;
move_xpos = abs(xpos);
move_ypos = abs(ypos);

if moving == true {
	if enable_diagonal_movement == true {
		if move_xpos {
			x += hspd * cos(move_direction) * DELTA;	
		}
		if move_ypos {
			y += vspd * -sin(move_direction) * DELTA;	
		}
	} else {
		// Disable Diagonal Movement
		if move_xpos + move_ypos == 1 {
			x += hspd * floor(cos(move_direction) * DELTA);	
			y += vspd * floor(-sin(move_direction) * DELTA);	
		}
	}
}

// Keep Object within the map boundries
x=clamp(x,0,room_width-sprite_width);
y=clamp(y,0,room_height-sprite_height);

if keyboard_check(vk_enter) {
	State_Machine_Set("test1");	
	RPG_Party_Member_Remove(0);
} else if keyboard_check(vk_space) {
	State_Machine_Set("test4");
}