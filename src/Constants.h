#ifndef CONSTANTS_H
#define CONSTANTS_H

const unsigned int WINDOW_WIDTH = 960;
const unsigned int WINDOW_HEIGHT = 640;

const unsigned int FPS = 60;
const unsigned int FRAME_TARGET_TIME = 1000/FPS;

//BOXES

// MAKE SURE THAT WINDOW_WIDTH AND WINDOW_HEIGHT CAN BE DIVIDED BY THIS INTO WHOLE NUMBERS OR .5 OF A NUMBER
const unsigned int BOXES_PER_ROW_AND_COLUMN = 10;
const unsigned int BOX_PADDING = 0;
const float BOX_WIDTH = WINDOW_WIDTH / BOXES_PER_ROW_AND_COLUMN;
const float BOX_HEIGHT = WINDOW_HEIGHT / BOXES_PER_ROW_AND_COLUMN;
// value used to create a 'midpoint key', it's based on the window_height, so if window_height is a 3 digit number, then should be 1000
// if window_height is a 4 digit number then this should be 10000, and so on
const unsigned int BOX_MIDPOINT_MULTIPLIER = 1000;
const unsigned int BOX_NEIGHBOURS = 4;

const unsigned int PLAYER_SPRITE_HEIGHT = BOX_HEIGHT;
const unsigned int PLAYER_SPRITE_WIDTH = BOX_WIDTH;

enum LayerType {
    TILEMAP_LAYER = 0,
    OBSTACLE_LAYER = 1,
    PLAYER_LAYER = 2
};

const unsigned int NUM_LAYERS = 3;


#endif