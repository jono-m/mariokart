`define PHASE_START_SCREEN 				      0
`define PHASE_CHARACTER_SELECT 	    		1
`define PHASE_RACING 					          2
`define PHASE_LOADING_START_SCREEN 		  3
`define PHASE_LOADING_CHARACTER_SELECT 	4
`define PHASE_LOADING_RACING 			      5

`define CHARACTER_MARIO					        0
`define CHARACTER_LUIGI                 1
`define CHARACTER_PEACH                 2
`define CHARACTER_TOAD                  3
`define CHARACTER_YOSHI                 4
`define CHARACTER_DK                    5
`define CHARACTER_WARIO                 6
`define CHARACTER_BOWSER                7
                                                
`define ADR_START_SCREEN_BG				      0        // LEN 307200
`define ADR_CHAR_SELECT_BG				      307200   // LEN 307200
`define ADR_RACING_BG				            614400   // LEN 307200      
`define ADR_PRESS_START_TEXT            921600   // LEN 332256
`define ADR_CHARACTER_SPRITE1           953856   // LEN 512*8
`define ADR_TRACK_INFORMATION_IMAGE		  957952	 // LEN 76800
`define ADR_TIMER_TEXT_IMAGE            1034752     // LEN 4608
`define ADR_LATIKU_ON_YOUR_MARKS        1039360  // LEN 10240
`define ADR_LATIKU_FINAL_LAP            1049600  // LEN 10240
  
`define TURN_LEFT                       0
`define TURN_STRAIGHT                   1
`define TURN_RIGHT                      2

`define SPEED_STOP                      0
`define SPEED_SLOW                      1
`define SPEED_NORMAL                    2
`define SPEED_BOOST                     3

`define MAPTYPE_ROAD					          0
`define MAPTYPE_GRASS					          1
`define MAPTYPE_WALL					          2
`define MAPTYPE_FINISH					        3