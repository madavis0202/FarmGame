//connects each instance of this to the object that spawns it,
//speaker is set by that object
x = speaker.x;
y = speaker.y;

if (place_meeting(x,y,obj_main_character)) && !instance_exists(obj_ui_message_options){
	with instance_create_depth(x,y,depth,obj_ui_message_options){
		talkbox = other.id
		inflicts_words = other.inflicts_words
		option_up = string_char_at(inflicts_words, 1)
		option_left = string_char_at(inflicts_words, 2)
		option_down = string_char_at(inflicts_words, 3)
		option_right = string_char_at(inflicts_words, 4)
		
		//vvv should be soemwhere that can reference ui element and inflicts words.
		// if up_key_is_pressed :
//     if option_up == "f":
//          do the fish thing
//     else if option_up == "m":
//          do the murder thing
//     ... et cetera
// if left_key_is_pressed :
//     if left_option == "f":
//         do the fish thing
//  ... et cetera 

		//pass along speaker info here including the behaviours when buttons are pressed and directions
		//upbox downbox memory store what words have access to  if user knows blank up dialogue = fish	
}
}