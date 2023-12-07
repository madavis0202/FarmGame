//Need to communicate right_option_pressed to other objects
if (right_option_pressed) {
    right_option_pressed = false;
    // Check and activate behaviors based on the button press
    if (global.word_fish == true) {
        show_debug_message("Fish behavior activated");
    } else if (global.word_murder == true) {
        show_debug_message("Murder behavior activated");
    } else if (global.word_sexy == true) {
        show_debug_message("Sexy behavior activated");
    }
}







