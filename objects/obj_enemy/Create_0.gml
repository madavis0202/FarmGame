path_start(pth_first_enemy,0.35,path_action_reverse,true);
//If I go right option pressed follow this route
right_option_pressed = false;
left_option_pressed = false;
up_option_pressed = false;
down_option_pressed = false;

//this was for global timer that I couldn't get to work the idea being that theres a global timer counting up,
// this tracks the time when a button is pressed and stops until the time is like button press time +3000 or something
//timer_max = game_get_speed(gamespeed_fps)*1.5
//timer = timer_max

with instance_create_depth(x,y,depth,obj_message_block){
  speaker = other.id
  inflicts_words = "fms "
  //when checking up button pressed, if up up variable is assigned 
  //define behaviours for various words
  //fish = stop
  //sexy = speed up
  // murder = slow down
}







