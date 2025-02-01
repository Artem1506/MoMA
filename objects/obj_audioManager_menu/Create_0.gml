/// @description Insert description here
// You can write your code in this editor

mainMenuTracks = [snd_mainMenuThem2];

current_track = -1;

function play_random_track() {
    current_track = irandom(array_length(mainMenuTracks) - 1);
    audio_play_sound(mainMenuTracks[current_track], 1, false);
}

play_random_track();

