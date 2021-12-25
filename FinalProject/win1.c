
//{{BLOCK(win1)

//======================================================================
//
//	win1, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 157 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 5024 + 4096 = 9632
//
//	Time-stamp: 2021-12-07, 22:45:18
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short win1Tiles[2512] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x0013,0x0111,0x0010,0x0111,0x0010,0x0110,0x0010,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x0111,0x1111,0x0111,0x1111,0x0113,0x0110,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1101,0x1111,0x1101,0x1101,0x1101,0x1101,0x1301,0x1101,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1011,
	0x0111,0x0011,0x1111,0x0010,0x1111,0x0010,0x1101,0x0000,
	0x1110,0x1111,0x1100,0x1111,0x1100,0x1111,0x1300,0x1111,
	0x1300,0x1111,0x1300,0x1111,0x1300,0x1111,0x3300,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1101,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1101,0x1111,0x1101,0x1111,0x1101,0x1111,0x1330,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x3111,0x1111,0x3111,0x1111,0x3111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1113,
	0x1111,0x1111,0x1111,0x1113,0x1111,0x1113,0x0111,0x1113,
	0x1111,0x1111,0x1111,0x1111,0x3111,0x1111,0x3111,0x1111,
	0x1110,0x1111,0x3101,0x1111,0x3101,0x1111,0x1301,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x0111,0x1111,0x0101,
	0x1111,0x1111,0x1111,0x1111,0x1101,0x1111,0x1101,0x1111,
	0x1101,0x1111,0x1300,0x1111,0x1300,0x1111,0x3300,0x1111,
	0x0000,0x0130,0x0000,0x0130,0x0000,0x0100,0x0000,0x1100,
	0x0000,0x1100,0x0000,0x1100,0x0000,0x1300,0x0001,0x3300,
	0x0013,0x0113,0x0013,0x0113,0x0013,0x0113,0x0133,0x0113,
	0x0133,0x0113,0x0133,0x1013,0x0133,0x0013,0x0133,0x0013,

	0x1101,0x1111,0x1000,0x1110,0x0000,0x0110,0x0000,0x0010,
	0x0000,0x0010,0x0000,0x0010,0x0000,0x0000,0x0001,0x0000,
	0x1111,0x1111,0x1111,0x1130,0x0111,0x1130,0x0001,0x1100,
	0x0001,0x1100,0x0001,0x1300,0x0000,0x3310,0x0000,0x3300,
	0x1301,0x0101,0x1301,0x0101,0x3311,0x0101,0x3111,0x0101,
	0x3111,0x0101,0x1111,0x0101,0x1111,0x0101,0x1111,0x1001,
	0x1300,0x1111,0x1300,0x1111,0x1300,0x1113,0x3300,0x1113,
	0x3300,0x1113,0x3300,0x1113,0x1300,0x1111,0x1300,0x1111,

	0x1101,0x1111,0x0001,0x1111,0x0001,0x1001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0000,0x0001,0x0000,0x0001,0x0000,
	0x1111,0x1331,0x1111,0x3133,0x1111,0x3133,0x1111,0x3133,
	0x1111,0x3133,0x1130,0x3331,0x1130,0x1331,0x1330,0x1331,
	0x1101,0x1111,0x1001,0x1111,0x1001,0x1010,0x1001,0x1111,
	0x1001,0x1111,0x0001,0x3301,0x0001,0x3301,0x0000,0x3300,
	0x0111,0x1110,0x1011,0x1130,0x0011,0x1130,0x0001,0x1130,
	0x0001,0x1130,0x0001,0x1130,0x0001,0x1130,0x0001,0x1130,

	0x1301,0x1111,0x1301,0x1111,0x1301,0x1111,0x1101,0x1011,
	0x1101,0x1011,0x1101,0x0011,0x1131,0x0011,0x1131,0x0001,
	0x1111,0x1111,0x1111,0x1111,0x0111,0x1111,0x0110,0x1113,
	0x0110,0x1113,0x0010,0x1113,0x0000,0x1113,0x0000,0x1113,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1101,0x1111,0x0101,0x1111,0x0001,0x1111,
	0x1110,0x0101,0x0110,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x3300,0x1111,0x1300,0x1111,0x1300,0x1111,0x1300,0x1111,
	0x1300,0x1111,0x1300,0x1111,0x1300,0x1111,0x1330,0x1111,
	0x0001,0x3300,0x0001,0x3000,0x0001,0x3000,0x0001,0x3000,
	0x0001,0x3000,0x0001,0x3100,0x0001,0x3000,0x0001,0x3010,
	0x0113,0x0013,0x0133,0x0013,0x3133,0x0013,0x3133,0x0013,
	0x3133,0x0013,0x3133,0x0013,0x3113,0x0013,0x3113,0x0013,
	0x0000,0x0000,0x0010,0x0000,0x0100,0x0000,0x0100,0x0000,
	0x1100,0x0000,0x0100,0x1111,0x0100,0x0000,0x0000,0x0000,

	0x0000,0x3301,0x1000,0x3300,0x0000,0x3000,0x0000,0x3000,
	0x0110,0x3000,0x0011,0x3000,0x0010,0x1000,0x0010,0x1000,
	0x1111,0x1001,0x1111,0x1001,0x1113,0x0001,0x1113,0x0001,
	0x1113,0x0001,0x1113,0x0001,0x1113,0x0001,0x1113,0x0001,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0001,0x0000,0x0001,0x0000,
	0x1300,0x1111,0x1300,0x1111,0x1300,0x1111,0x1300,0x1111,
	0x1300,0x1111,0x1300,0x1111,0x1300,0x1111,0x1300,0x1111,

	0x0001,0x0000,0x0001,0x0000,0x0001,0x0000,0x0001,0x0000,
	0x0001,0x0000,0x0001,0x0000,0x0001,0x0000,0x0001,0x0000,
	0x1330,0x1131,0x1330,0x1311,0x3300,0x1311,0x3300,0x1311,
	0x1300,0x1311,0x1300,0x3111,0x1300,0x1111,0x3300,0x1111,
	0x0000,0x3300,0x0000,0x1300,0x0000,0x1300,0x0000,0x1300,
	0x0000,0x1300,0x0000,0x1300,0x0000,0x1300,0x0000,0x1300,
	0x0001,0x1130,0x0001,0x1130,0x0001,0x1130,0x0001,0x1130,
	0x0001,0x1130,0x0001,0x1130,0x0001,0x1130,0x0001,0x1130,

	0x1131,0x0001,0x1131,0x0001,0x1111,0x0001,0x1111,0x0001,
	0x1111,0x0001,0x1111,0x0001,0x1311,0x0001,0x1111,0x0001,
	0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,
	0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,
	0x0101,0x0101,0x0001,0x0000,0x0001,0x0000,0x0001,0x0000,
	0x0001,0x0000,0x0001,0x0000,0x0011,0x0000,0x0011,0x0000,
	0x1330,0x1111,0x1330,0x1111,0x1330,0x1111,0x1330,0x1111,
	0x1330,0x1111,0x1330,0x1111,0x1330,0x1111,0x1330,0x1111,

	0x1001,0x3001,0x1001,0x3001,0x0111,0x3000,0x0001,0x3000,
	0x0001,0x3000,0x0001,0x3000,0x0001,0x3000,0x0001,0x3000,
	0x3113,0x0011,0x3113,0x0011,0x3113,0x0011,0x3133,0x0001,
	0x3133,0x0101,0x3133,0x0101,0x3333,0x0101,0x3333,0x0101,
	0x0000,0x1000,0x0000,0x1000,0x0000,0x1000,0x0000,0x1000,
	0x0000,0x0100,0x0000,0x0100,0x0000,0x0100,0x0000,0x0100,
	0x1113,0x0001,0x1113,0x0001,0x1113,0x0001,0x1113,0x0001,
	0x1113,0x0001,0x1113,0x0001,0x1113,0x0001,0x1113,0x0001,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0010,0x0000,
	0x0000,0x0000,0x0100,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3000,0x1111,0x3000,0x1111,0x3000,0x1111,0x3000,0x1111,
	0x3000,0x1111,0x3000,0x1111,0x3000,0x1111,0x3000,0x1111,
	0x0000,0x1300,0x0000,0x1300,0x0001,0x1300,0x0001,0x1300,
	0x0001,0x1300,0x0001,0x1300,0x0001,0x1300,0x0001,0x1300,
	0x0001,0x1330,0x0001,0x1330,0x0001,0x1330,0x0001,0x1300,
	0x0001,0x1300,0x0001,0x1300,0x0001,0x3300,0x0001,0x3300,

	0x1111,0x0001,0x1111,0x0001,0x1111,0x0001,0x1111,0x0001,
	0x1111,0x0001,0x1111,0x0001,0x1111,0x0001,0x1111,0x0001,
	0x0000,0x1113,0x0000,0x1113,0x0000,0x1133,0x0000,0x1133,
	0x0000,0x1133,0x0000,0x1133,0x0000,0x1133,0x0000,0x1133,
	0x0011,0x0000,0x0011,0x0000,0x0011,0x0000,0x0011,0x0000,
	0x0011,0x0000,0x0011,0x0000,0x0011,0x0000,0x0011,0x0000,
	0x1333,0x1111,0x1333,0x1111,0x1333,0x1111,0x1313,0x1111,
	0x1310,0x1111,0x1310,0x1111,0x1310,0x1111,0x1330,0x1111,

	0x0001,0x3000,0x0001,0x3000,0x0001,0x3000,0x0001,0x3000,
	0x0001,0x3000,0x0001,0x3000,0x0001,0x3000,0x0001,0x3000,
	0x3133,0x1001,0x1133,0x1001,0x3133,0x1001,0x3133,0x0001,
	0x1133,0x0001,0x1133,0x0001,0x1133,0x0001,0x1133,0x0001,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0001,0x0000,0x0001,0x0000,0x0001,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0010,
	0x0000,0x0010,0x0000,0x0010,0x0000,0x0010,0x0000,0x0011,

	0x1113,0x0001,0x1113,0x0001,0x1113,0x0001,0x1133,0x0001,
	0x1133,0x0001,0x1133,0x0001,0x1133,0x0001,0x1133,0x0001,
	0x1000,0x0000,0x0000,0x0001,0x0000,0x1110,0x0000,0x0100,
	0x0000,0x0100,0x0000,0x0100,0x0000,0x0100,0x0000,0x0000,
	0x1100,0x1111,0x1310,0x1111,0x1301,0x1111,0x1300,0x1111,
	0x1300,0x1111,0x1300,0x1111,0x1300,0x1111,0x1300,0x1111,
	0x3000,0x1111,0x3000,0x1111,0x3000,0x1113,0x3000,0x1113,
	0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,

	0x0001,0x1130,0x0001,0x1130,0x0001,0x1130,0x0001,0x1113,
	0x0011,0x1113,0x3011,0x1113,0x3011,0x1113,0x3011,0x0111,
	0x0001,0x3300,0x0001,0x3300,0x0001,0x3300,0x0001,0x3300,
	0x0000,0x3300,0x0000,0x1300,0x0000,0x1300,0x0000,0x1300,
	0x1111,0x0001,0x1111,0x0000,0x1111,0x0000,0x1111,0x0000,
	0x1111,0x0000,0x1111,0x0010,0x1111,0x0010,0x1111,0x0010,
	0x0000,0x1133,0x0000,0x1133,0x0000,0x1133,0x0000,0x1133,
	0x0000,0x1133,0x0000,0x1133,0x0000,0x1133,0x0000,0x1133,

	0x0011,0x0000,0x0011,0x0000,0x0011,0x0000,0x0011,0x0000,
	0x0011,0x0000,0x0011,0x0000,0x0011,0x0000,0x0111,0x0000,
	0x1133,0x0001,0x1133,0x0001,0x1113,0x0000,0x1133,0x0000,
	0x1133,0x0000,0x1113,0x0000,0x1113,0x0000,0x1111,0x0000,
	0x0000,0x0000,0x0010,0x0000,0x0000,0x0000,0x0100,0x0000,
	0x0100,0x0000,0x1000,0x0000,0x0000,0x0001,0x0000,0x1110,
	0x0000,0x0011,0x0000,0x0001,0x1000,0x0001,0x0000,0x0001,
	0x0000,0x0001,0x0100,0x0001,0x0010,0x0001,0x0001,0x0001,

	0x1113,0x0001,0x1113,0x0001,0x1130,0x0001,0x1130,0x0001,
	0x1130,0x0001,0x1130,0x0001,0x1130,0x0001,0x1130,0x0001,
	0x1300,0x1111,0x1300,0x1111,0x1300,0x1111,0x1300,0x1111,
	0x1300,0x1111,0x1300,0x1111,0x1300,0x1111,0x1330,0x1111,
	0x0000,0x1113,0x0000,0x1113,0x0000,0x1133,0x0000,0x1113,
	0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,
	0x3011,0x0111,0x3311,0x0011,0x3111,0x0011,0x1111,0x0001,
	0x1111,0x0001,0x1111,0x0001,0x1111,0x0001,0x1111,0x0001,

	0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,
	0x0000,0x3300,0x0000,0x3300,0x0000,0x3000,0x0000,0x3000,
	0x1111,0x0010,0x1111,0x0010,0x1111,0x0110,0x1111,0x1100,
	0x1111,0x1100,0x1111,0x1100,0x1111,0x1000,0x1111,0x1000,
	0x0000,0x1130,0x0000,0x1130,0x0000,0x1130,0x0000,0x1110,
	0x0000,0x1110,0x0000,0x1110,0x0001,0x1111,0x1110,0x1110,
	0x0111,0x0000,0x0111,0x0000,0x0111,0x0000,0x0111,0x0000,
	0x0111,0x0000,0x0111,0x0000,0x0111,0x0000,0x0111,0x0000,

	0x1131,0x0000,0x1133,0x0000,0x1133,0x0000,0x1133,0x0000,
	0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,
	0x1130,0x0001,0x1130,0x0001,0x1130,0x0001,0x1130,0x0001,
	0x1130,0x0001,0x1130,0x0001,0x1130,0x0001,0x1130,0x0001,
	0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,
	0x0000,0x1133,0x0000,0x1133,0x0000,0x1133,0x0000,0x1133,
	0x1111,0x0001,0x1111,0x0000,0x1111,0x0000,0x1111,0x0000,
	0x1111,0x0000,0x1111,0x0000,0x1111,0x0000,0x1111,0x0000,

	0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,0x0000,0x3000,
	0x0000,0x3000,0x0000,0x3000,0x0000,0x0000,0x0000,0x0000,
	0x1111,0x1000,0x1111,0x1000,0x1111,0x1000,0x1111,0x1000,
	0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,0x0001,
	0x0010,0x1110,0x0000,0x1130,0x0000,0x1130,0x0000,0x1130,
	0x0000,0x1130,0x0000,0x1130,0x0000,0x1130,0x0000,0x1130,
	0x1130,0x1111,0x1130,0x1111,0x1130,0x1111,0x1130,0x1111,
	0x1130,0x1111,0x1130,0x1111,0x1130,0x1111,0x1130,0x1111,

	0x1133,0x0000,0x1133,0x0000,0x1133,0x0000,0x1133,0x0000,
	0x1133,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,
	0x1130,0x0011,0x1130,0x0011,0x1130,0x0011,0x1130,0x0011,
	0x1130,0x0011,0x1130,0x0011,0x1130,0x0011,0x1130,0x0011,
	0x1330,0x1111,0x1330,0x1111,0x1330,0x1111,0x1330,0x1111,
	0x1330,0x1111,0x3130,0x1111,0x3130,0x1111,0x3130,0x1111,
	0x0000,0x1130,0x0000,0x1130,0x0000,0x1130,0x0000,0x1130,
	0x0000,0x1130,0x0000,0x1130,0x0000,0x1130,0x0000,0x1130,

	0x1111,0x0000,0x1111,0x0000,0x1111,0x0000,0x0111,0x0000,
	0x0111,0x0000,0x0111,0x0000,0x0111,0x0000,0x0111,0x0000,
	0x1111,0x0000,0x1111,0x0000,0x1111,0x0000,0x1111,0x0000,
	0x1111,0x0000,0x1111,0x0000,0x1111,0x0000,0x1111,0x0000,
	0x1130,0x1111,0x1130,0x1111,0x1130,0x1111,0x1130,0x1111,
	0x1130,0x1111,0x1130,0x1111,0x1130,0x1111,0x1130,0x1113,
	0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,
	0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x3000,0x0000,0x3300,
	0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,0x0000,0x3300,
	0x0000,0x0000,0x0000,0x0000,0x0010,0x0000,0x0013,0x0000,
	0x0013,0x0000,0x0013,0x0000,0x0013,0x0000,0x0111,0x0000,
	0x0000,0x1130,0x0000,0x1130,0x0000,0x1133,0x0000,0x1133,
	0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,
	0x0111,0x0000,0x0111,0x0000,0x0111,0x0000,0x0111,0x0000,
	0x0011,0x0000,0x0011,0x0000,0x0011,0x0000,0x0011,0x0000,

	0x1113,0x0001,0x1113,0x0001,0x1113,0x0001,0x1113,0x0011,
	0x1113,0x0011,0x1113,0x0011,0x1113,0x0011,0x1113,0x0011,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x2000,
	0x0000,0x2000,0x0000,0x2002,0x0000,0x3200,0x0000,0x2222,
	0x1130,0x1111,0x1132,0x1111,0x1130,0x1111,0x1332,0x1111,
	0x1332,0x1111,0x1133,0x1111,0x3333,0x1111,0x1133,0x1111,
	0x0001,0x3000,0x0001,0x3300,0x0001,0x3300,0x0011,0x3300,
	0x0011,0x3300,0x0011,0x3300,0x0111,0x3300,0x0111,0x3300,

	0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,
	0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,0x1111,0x0000,
	0x0000,0x1330,0x0000,0x1333,0x0000,0x1133,0x3000,0x1113,
	0x3000,0x1113,0x1000,0x1111,0x3000,0x1113,0x3000,0x1113,
	0x1330,0x0011,0x1330,0x0011,0x1300,0x0011,0x1300,0x0011,
	0x1300,0x0011,0x1300,0x0111,0x1300,0x0111,0x1300,0x0111,
	0x1130,0x1111,0x1330,0x1111,0x1330,0x1111,0x1330,0x1111,
	0x1330,0x1111,0x1330,0x1111,0x1320,0x1111,0x1120,0x1111,

	0x0011,0x0000,0x0011,0x0000,0x0011,0x0000,0x0011,0x0000,
	0x0011,0x0000,0x0011,0x0000,0x0111,0x0000,0x0111,0x0000,
	0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,0x0000,0x1113,
	0x0000,0x1113,0x3000,0x1113,0x3000,0x1113,0x3000,0x1113,
	0x1133,0x0011,0x1130,0x0011,0x1130,0x0011,0x1130,0x0011,
	0x1130,0x0011,0x1130,0x0011,0x1130,0x0011,0x1130,0x0011,
	0x0000,0x1130,0x0000,0x1130,0x0000,0x1130,0x0000,0x1130,
	0x0000,0x1130,0x0000,0x1320,0x0000,0x1320,0x0000,0x1322,

	0x1111,0x0000,0x1111,0x0001,0x1111,0x0001,0x1111,0x0001,
	0x1111,0x0001,0x1111,0x0001,0x1111,0x0001,0x1111,0x0011,
	0x0201,0x2232,0x2303,0x3223,0x3323,0x3333,0x3323,0x3333,
	0x1333,0x1313,0x1333,0x1133,0x3131,0x1111,0x1111,0x1113,
	0x1333,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0011,0x3300,0x1111,0x3330,0x0111,0x3230,0x0111,0x3230,
	0x0111,0x3230,0x0111,0x3300,0x3111,0x1300,0x3111,0x1320,

	0x1111,0x0000,0x1111,0x0000,0x1111,0x0000,0x1111,0x0000,
	0x1111,0x0000,0x1111,0x0000,0x1113,0x0000,0x1111,0x0033,
	0x3000,0x1113,0x3000,0x1111,0x1000,0x1131,0x1000,0x1131,
	0x3000,0x1131,0x3000,0x1131,0x3200,0x1113,0x2200,0x1132,
	0x0111,0x0000,0x0111,0x0000,0x0111,0x0000,0x0111,0x0000,
	0x0111,0x0000,0x0111,0x0000,0x0311,0x0000,0x0111,0x3000,
	0x1300,0x0111,0x1300,0x1111,0x1300,0x1111,0x1300,0x1111,
	0x1300,0x1111,0x1320,0x1111,0x3322,0x1111,0x1322,0x1111,

	0x0000,0x0000,0x0000,0x2000,0x0000,0x2000,0x0000,0x2000,
	0x0000,0x0000,0x0001,0x0000,0x0011,0x2201,0x1111,0x2023,
	0x1130,0x1111,0x1110,0x1111,0x1113,0x1111,0x1113,0x1111,
	0x1133,0x1111,0x1333,0x1111,0x1123,0x1111,0x3333,0x1311,
	0x0111,0x0000,0x0111,0x0001,0x0111,0x0000,0x0111,0x0000,
	0x1111,0x0000,0x1111,0x0001,0x1111,0x0001,0x1111,0x0011,
	0x3000,0x1113,0x3000,0x1113,0x3220,0x1111,0x3220,0x1111,
	0x2320,0x1111,0x2320,0x1111,0x3330,0x1113,0x3232,0x1133,

	0x0011,0x0000,0x0011,0x0000,0x0011,0x0000,0x0011,0x0000,
	0x0011,0x0000,0x0011,0x0000,0x0111,0x0010,0x1111,0x0010,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x2000,0x0000,0x2000,
	0x0000,0x2020,0x0000,0x2020,0x0000,0x2220,0x0000,0x3300,
	0x1130,0x0111,0x1130,0x0111,0x1330,0x0111,0x1330,0x0111,
	0x1112,0x1111,0x1133,0x1111,0x1133,0x1111,0x1133,0x1113,
	0x0001,0x1122,0x2001,0x1130,0x2001,0x1330,0x2001,0x1330,
	0x0010,0x3332,0x2001,0x3333,0x0301,0x3333,0x0331,0x1333,

	0x1111,0x0011,0x1131,0x1011,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1131,0x1111,0x1131,0x1111,0x1311,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1113,0x1111,0x1113,0x1111,0x1111,0x1111,0x1111,
	0x1113,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x3111,0x1123,0x3111,0x1123,0x1111,0x1333,0x1111,0x1131,
	0x1111,0x1311,0x1111,0x3311,0x1111,0x3111,0x1111,0x3111,

	0x1111,0x2001,0x1111,0x2001,0x1111,0x3211,0x1111,0x1331,
	0x1111,0x1111,0x1111,0x1311,0x1111,0x3311,0x1111,0x3311,
	0x3022,0x1133,0x3022,0x1133,0x2233,0x1111,0x3331,0x1111,
	0x1111,0x1113,0x1111,0x1111,0x1131,0x1111,0x1131,0x1111,
	0x0111,0x2323,0x0111,0x2323,0x3111,0x2333,0x1133,0x3313,
	0x1131,0x1111,0x1111,0x1131,0x3111,0x1113,0x3111,0x1113,
	0x3332,0x1131,0x3332,0x1131,0x3313,0x1111,0x1113,0x1111,
	0x1131,0x1111,0x3111,0x1131,0x3111,0x1111,0x3111,0x1111,

	0x1111,0x3221,0x1111,0x3221,0x1111,0x3331,0x1111,0x1331,
	0x1111,0x1131,0x1131,0x3111,0x1133,0x1131,0x1133,0x1131,
	0x1311,0x3311,0x1311,0x3311,0x1133,0x3111,0x1131,0x1113,
	0x1111,0x1111,0x1311,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x0011,0x1111,0x0011,0x1111,0x0111,0x1111,0x1111,
	0x1111,0x1311,0x1111,0x3111,0x1111,0x1111,0x1111,0x1111,
	0x1320,0x1111,0x1320,0x1111,0x3130,0x1111,0x1131,0x3111,
	0x3132,0x1313,0x3331,0x1111,0x3313,0x1111,0x3313,0x1111,

	0x0111,0x0110,0x0111,0x0110,0x1111,0x1110,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0000,0x1320,0x0000,0x1320,0x0000,0x3132,0x1101,0x3312,
	0x0111,0x3313,0x2331,0x3333,0x1111,0x1313,0x1111,0x1313,
	0x1333,0x1111,0x1333,0x1111,0x3331,0x1111,0x3133,0x1111,
	0x1313,0x1113,0x1133,0x1111,0x3113,0x1111,0x3113,0x1111,
	0x2111,0x3123,0x2111,0x3123,0x3111,0x1133,0x3111,0x1113,
	0x3111,0x3111,0x3131,0x3113,0x3311,0x1311,0x3311,0x1311,

	0x1111,0x1111,0x1111,0x1111,0x1113,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1133,0x1111,0x1131,0x1111,0x1131,
	0x1311,0x1111,0x3111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1331,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1131,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1131,0x1111,0x1331,
	0x1111,0x3111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x1113,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1113,0x1111,0x1111,0x1111,0x1311,0x1111,0x3311,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x3111,0x1111,0x1311,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1311,0x1111,0x1111,0x1111,0x1111,0x3131,0x1111,0x3111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x1111,0x1311,0x1111,0x3111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x3311,0x1313,0x1111,0x1131,0x1131,0x1113,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x3111,0x1113,0x1111,0x1111,0x1113,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1311,0x1113,0x3111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x3111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
};

const unsigned short win1Map[2048] __attribute__((aligned(4)))=
{
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0002,0x0003,0x0001,0x0001,0x0004,0x0005,
	0x0006,0x0007,0x0008,0x0009,0x000A,0x000B,0x0001,0x0001,
	0x0001,0x0001,0x0002,0x0003,0x0001,0x0001,0x0004,0x0005,
	0x0006,0x0007,0x0008,0x0009,0x000A,0x000B,0x0001,0x0001,

	0x000C,0x000D,0x000E,0x000F,0x0010,0x0011,0x0012,0x0000,
	0x0013,0x0014,0x0015,0x0016,0x0017,0x0018,0x0019,0x001A,
	0x000C,0x000D,0x000E,0x000F,0x0010,0x0011,0x0012,0x0000,
	0x0013,0x0014,0x0015,0x0016,0x0017,0x0018,0x0019,0x001A,
	0x001B,0x001C,0x001D,0x001E,0x001F,0x0020,0x0021,0x0022,
	0x0023,0x0024,0x0025,0x0026,0x0027,0x0028,0x0029,0x002A,
	0x001B,0x001C,0x001D,0x001E,0x001F,0x0020,0x0021,0x0022,
	0x0023,0x0024,0x0025,0x0026,0x0027,0x0028,0x0029,0x002A,

	0x0000,0x002B,0x002C,0x002D,0x0000,0x002E,0x002F,0x0030,
	0x0023,0x0024,0x0031,0x0032,0x0033,0x0034,0x0035,0x0036,
	0x0000,0x002B,0x002C,0x002D,0x0000,0x002E,0x002F,0x0030,
	0x0023,0x0024,0x0031,0x0032,0x0033,0x0034,0x0035,0x0036,
	0x0000,0x0037,0x0038,0x0039,0x003A,0x003B,0x003C,0x003D,
	0x003E,0x0024,0x003F,0x0040,0x0041,0x0042,0x0043,0x0044,
	0x0000,0x0037,0x0038,0x0039,0x003A,0x003B,0x003C,0x003D,
	0x003E,0x0024,0x003F,0x0040,0x0041,0x0042,0x0043,0x0044,

	0x0000,0x002B,0x0038,0x0045,0x0046,0x0047,0x0048,0x0000,
	0x0049,0x0024,0x004A,0x004B,0x004C,0x004D,0x004E,0x004F,
	0x0000,0x002B,0x0038,0x0045,0x0046,0x0047,0x0048,0x0000,
	0x0049,0x0024,0x004A,0x004B,0x004C,0x004D,0x004E,0x004F,
	0x0000,0x002B,0x0038,0x0050,0x0000,0x0000,0x0051,0x0000,
	0x002B,0x0024,0x0052,0x0053,0x0054,0x0055,0x0056,0x004F,
	0x0000,0x002B,0x0038,0x0050,0x0000,0x0000,0x0051,0x0000,
	0x002B,0x0024,0x0052,0x0053,0x0054,0x0055,0x0056,0x004F,

	0x0000,0x0057,0x0038,0x0058,0x0000,0x0000,0x0059,0x0000,
	0x005A,0x0024,0x005B,0x005C,0x0000,0x002F,0x005B,0x005D,
	0x0000,0x0057,0x0038,0x0058,0x0000,0x0000,0x0059,0x0000,
	0x005A,0x0024,0x005B,0x005C,0x0000,0x002F,0x005B,0x005D,
	0x0000,0x005E,0x0038,0x005F,0x0060,0x0061,0x0059,0x0000,
	0x0057,0x0024,0x0062,0x0063,0x0000,0x0064,0x005B,0x005D,
	0x0000,0x005E,0x0038,0x005F,0x0060,0x0061,0x0059,0x0000,
	0x0057,0x0024,0x0062,0x0063,0x0000,0x0064,0x005B,0x005D,

	0x0065,0x0066,0x0067,0x0068,0x0069,0x004F,0x006A,0x0000,
	0x006B,0x006C,0x006D,0x0036,0x0000,0x006E,0x006F,0x0070,
	0x0065,0x0066,0x0067,0x0068,0x0069,0x004F,0x006A,0x0000,
	0x006B,0x006C,0x006D,0x0036,0x0000,0x006E,0x006F,0x0070,
	0x0071,0x0072,0x0073,0x0074,0x0075,0x0076,0x0077,0x0078,
	0x0079,0x007A,0x007B,0x007C,0x007D,0x007E,0x007F,0x0080,
	0x0071,0x0072,0x0073,0x0074,0x0075,0x0076,0x0077,0x0078,
	0x0079,0x007A,0x007B,0x007C,0x007D,0x007E,0x007F,0x0080,

	0x0081,0x0082,0x0083,0x0084,0x0085,0x0086,0x0087,0x0088,
	0x0089,0x008A,0x008B,0x008C,0x008D,0x008E,0x008F,0x0090,
	0x0081,0x0082,0x0083,0x0084,0x0085,0x0086,0x0087,0x0088,
	0x0089,0x008A,0x008B,0x008C,0x008D,0x008E,0x008F,0x0090,
	0x0091,0x0001,0x0001,0x0001,0x0092,0x0093,0x0094,0x0095,
	0x0096,0x0001,0x0097,0x0098,0x0099,0x009A,0x009B,0x009C,
	0x0091,0x0001,0x0001,0x0001,0x0092,0x0093,0x0094,0x0095,
	0x0096,0x0001,0x0097,0x0098,0x0099,0x009A,0x009B,0x009C,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0002,0x0003,0x0001,0x0001,0x0004,0x0005,
	0x0006,0x0007,0x0008,0x0009,0x000A,0x000B,0x0001,0x0001,
	0x0001,0x0001,0x0002,0x0003,0x0001,0x0001,0x0004,0x0005,
	0x0006,0x0007,0x0008,0x0009,0x000A,0x000B,0x0001,0x0001,

	0x000C,0x000D,0x000E,0x000F,0x0010,0x0011,0x0012,0x0000,
	0x0013,0x0014,0x0015,0x0016,0x0017,0x0018,0x0019,0x001A,
	0x000C,0x000D,0x000E,0x000F,0x0010,0x0011,0x0012,0x0000,
	0x0013,0x0014,0x0015,0x0016,0x0017,0x0018,0x0019,0x001A,
	0x001B,0x001C,0x001D,0x001E,0x001F,0x0020,0x0021,0x0022,
	0x0023,0x0024,0x0025,0x0026,0x0027,0x0028,0x0029,0x002A,
	0x001B,0x001C,0x001D,0x001E,0x001F,0x0020,0x0021,0x0022,
	0x0023,0x0024,0x0025,0x0026,0x0027,0x0028,0x0029,0x002A,

	0x0000,0x002B,0x002C,0x002D,0x0000,0x002E,0x002F,0x0030,
	0x0023,0x0024,0x0031,0x0032,0x0033,0x0034,0x0035,0x0036,
	0x0000,0x002B,0x002C,0x002D,0x0000,0x002E,0x002F,0x0030,
	0x0023,0x0024,0x0031,0x0032,0x0033,0x0034,0x0035,0x0036,
	0x0000,0x0037,0x0038,0x0039,0x003A,0x003B,0x003C,0x003D,
	0x003E,0x0024,0x003F,0x0040,0x0041,0x0042,0x0043,0x0044,
	0x0000,0x0037,0x0038,0x0039,0x003A,0x003B,0x003C,0x003D,
	0x003E,0x0024,0x003F,0x0040,0x0041,0x0042,0x0043,0x0044,

	0x0000,0x002B,0x0038,0x0045,0x0046,0x0047,0x0048,0x0000,
	0x0049,0x0024,0x004A,0x004B,0x004C,0x004D,0x004E,0x004F,
	0x0000,0x002B,0x0038,0x0045,0x0046,0x0047,0x0048,0x0000,
	0x0049,0x0024,0x004A,0x004B,0x004C,0x004D,0x004E,0x004F,
	0x0000,0x002B,0x0038,0x0050,0x0000,0x0000,0x0051,0x0000,
	0x002B,0x0024,0x0052,0x0053,0x0054,0x0055,0x0056,0x004F,
	0x0000,0x002B,0x0038,0x0050,0x0000,0x0000,0x0051,0x0000,
	0x002B,0x0024,0x0052,0x0053,0x0054,0x0055,0x0056,0x004F,

	0x0000,0x0057,0x0038,0x0058,0x0000,0x0000,0x0059,0x0000,
	0x005A,0x0024,0x005B,0x005C,0x0000,0x002F,0x005B,0x005D,
	0x0000,0x0057,0x0038,0x0058,0x0000,0x0000,0x0059,0x0000,
	0x005A,0x0024,0x005B,0x005C,0x0000,0x002F,0x005B,0x005D,
	0x0000,0x005E,0x0038,0x005F,0x0060,0x0061,0x0059,0x0000,
	0x0057,0x0024,0x0062,0x0063,0x0000,0x0064,0x005B,0x005D,
	0x0000,0x005E,0x0038,0x005F,0x0060,0x0061,0x0059,0x0000,
	0x0057,0x0024,0x0062,0x0063,0x0000,0x0064,0x005B,0x005D,

	0x0065,0x0066,0x0067,0x0068,0x0069,0x004F,0x006A,0x0000,
	0x006B,0x006C,0x006D,0x0036,0x0000,0x006E,0x006F,0x0070,
	0x0065,0x0066,0x0067,0x0068,0x0069,0x004F,0x006A,0x0000,
	0x006B,0x006C,0x006D,0x0036,0x0000,0x006E,0x006F,0x0070,
	0x0071,0x0072,0x0073,0x0074,0x0075,0x0076,0x0077,0x0078,
	0x0079,0x007A,0x007B,0x007C,0x007D,0x007E,0x007F,0x0080,
	0x0071,0x0072,0x0073,0x0074,0x0075,0x0076,0x0077,0x0078,
	0x0079,0x007A,0x007B,0x007C,0x007D,0x007E,0x007F,0x0080,

	0x0081,0x0082,0x0083,0x0084,0x0085,0x0086,0x0087,0x0088,
	0x0089,0x008A,0x008B,0x008C,0x008D,0x008E,0x008F,0x0090,
	0x0081,0x0082,0x0083,0x0084,0x0085,0x0086,0x0087,0x0088,
	0x0089,0x008A,0x008B,0x008C,0x008D,0x008E,0x008F,0x0090,
	0x0091,0x0001,0x0001,0x0001,0x0092,0x0093,0x0094,0x0095,
	0x0096,0x0001,0x0097,0x0098,0x0099,0x009A,0x009B,0x009C,
	0x0091,0x0001,0x0001,0x0001,0x0092,0x0093,0x0094,0x0095,
	0x0096,0x0001,0x0097,0x0098,0x0099,0x009A,0x009B,0x009C,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short win1Pal[256] __attribute__((aligned(4)))=
{
	0x0000,0x20E5,0x2D88,0x2105,0x2526,0x2926,0x46B0,0x35C9,
	0x7FFF,0x14A5,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(win1)
