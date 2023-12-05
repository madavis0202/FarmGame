//Counts down after the player goes away from an enemy and deletes at the end
if (place_meeting(x,y,obj_message_block)){
      timer = timer_max 
  }
else{
  if (timer <= 0){
    instance_destroy();
  }
  else
    timer--
}


//Creates message UI
var i, ch, word, offset_x, offset_y, object_type;

offset_x = 0;
offset_y = 0;
if(global.word_murder == true){ show_debug_message("true")}

for (i = 1; i < 5; i++) {
    // this "inflicts_words" variable is defined on the object
    // that the user collides with, that knows it's words;
    // it'll have a code like "fms " -- if it supports those words
    ch = string_char_at(inflicts_words, i);  // GML string indices start at 1
	word = undefined;
	object_type = undefined;
	if (global.word_murder == true){
		show_debug_message("murder")
	}

    if (ch == "f" && !instance_exists(obj_fish) && global.word_fish == true){
        word = FISH;
		object_type = obj_fish;
		show_debug_message("fish?")
    } else if (ch == "m" && !instance_exists(obj_murder) && global.word_murder == true){
        word = MURDER;
		object_type = obj_murder;
    } else if (ch == "s" && !instance_exists(obj_sexy) && global.word_sexy == true){
        word = SEXY;
		object_type = obj_sexy;
    }
	    // If word is defined, create the instance and update offsets
    if (word != undefined && object_type != undefined) {
        with (instance_create_depth(x + offset_x, y + offset_y, depth-1, object_type)){
		follow = other.id
        if (i == 1) {
            offset_y -= 30 // North
        } else if (i == 2) {
            offset_x += 30; // East
        } else if (i == 3) {
            offset_y += 30; // South
        } else if (i == 4) {
            offset_y += 0; // West
		}
    }
	}
}

//

//Selecting
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

//Changed sprite based on input
if (right_key && !left_key && !up_key && !down_key){
	sprite_index = message_right
}
else if (!right_key && left_key && !up_key && !down_key){
	sprite_index = message_left
}
else if (!right_key && !left_key && up_key && !down_key){
	sprite_index = message_up
}
else if (!right_key && !left_key && !up_key && down_key){
	sprite_index = message_down
}
if (right_key || left_key || up_key || down_key){
//Should make the button do destroy animation after use
}





