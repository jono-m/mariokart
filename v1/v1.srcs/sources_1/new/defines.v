`define PHASE_START_SCREEN 				      0
`define PHASE_CHARACTER_SELECT 	    		1
`define PHASE_RACING 					          2
`define PHASE_LOADING_START_SCREEN 		  3
`define PHASE_LOADING_CHARACTER_SELECT 	4
`define PHASE_LOADING_RACING 			      5
`define PHASE_LOADING_RESULTS				 6
`define PHASE_RESULTS 				 7

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
`define ADR_TRACK_INFORMATION_IMAGE		  957952	 // LEN 77312
`define ADR_TIMER_TEXT_IMAGE            1035264  // LEN 4608
`define ADR_LATIKU_ON_YOUR_MARKS        1039872  // LEN 10240
`define ADR_LATIKU_FINAL_LAP            1050112  // LEN 10240
`define ADR_ITEM_BOX_IMAGE              1060352  // LEN 512
`define ADR_BANANA_IMAGE                1060864  // LEN 512
`define ADR_MUSHROOM_IMAGE              1061376  // LEN 512
`define ADR_LIGHTNING_IMAGE             1061888  // LEN 512
`define ADR_TROPHY_IMAGE				1062400  // LEN 512
`define ADR_RESULTS_BG					1062912  // LEN 307200
`define SOUND_SD_ADR					1370112	 // LEN 262144
`define SOUND_SD_LENGTH					3577139
  
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

`define PWM_P_FORWARD_SLOW              10000000
`define PWM_DS_FORWARD_SLOW             5
`define PWM_P_FORWARD_NORMAL            10000000
`define PWM_DS_FORWARD_NORMAL           7
`define PWM_P_BACKWARD_SLOW             10000000
`define PWM_DS_BACKWARD_SLOW            5
`define PWM_P_BACKWARD_NORMAL           10000000
`define PWM_DS_BACKWARD_NORMAL          7

`define ITEM_BOX_RESPAWN_SECONDS        5
`define ITEM_PICK_TIME_SECONDS          2
`define MUSHROOM_BOOST_SECONDS          1
`define BANANA_SECONDS                  1
`define LIGHTNING_SECONDS               3
`define LIGHTNING_FLASH_MS				1000
`define BANANA_GRACE_CYCLES				50000000

`define ITEM_NONE                      0
`define ITEM_BANANA                    1
`define ITEM_MUSHROOM                  2
`define ITEM_LIGHTNING                 3

`define MUSIC_START_ADDRESS             0
`define MUSIC_START_LENGTH              2128020
`define MUSIC_GAME_ADDRESS              678901
`define MUSIC_GAME_LENGTH               1449119