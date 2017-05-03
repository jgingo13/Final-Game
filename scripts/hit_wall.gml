show_debug_message("in here");
// Check if can complete level
if (diamond_collected == true) {
    if (level_completed == false) {
        level_completed = true;
        instance_create(0,0,obj_complete_level);
        
        // Create door
        with (global.door_id) {
            image_index = 2;
        }
    }
}
else {
    if(!audio_is_playing(sd_locked)) {
        audio_play_sound(sd_locked,7,false);
    }
}

