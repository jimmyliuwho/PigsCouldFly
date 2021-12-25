
//{{BLOCK(win3)

//======================================================================
//
//	win3, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 121 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 3872 + 4096 = 8480
//
//	Time-stamp: 2021-12-07, 22:46:47
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WIN3_H
#define GRIT_WIN3_H

#define win3TilesLen 3872
extern const unsigned short win3Tiles[1936];

#define win3MapLen 4096
extern const unsigned short win3Map[2048];

#define win3PalLen 512
extern const unsigned short win3Pal[256];

#endif // GRIT_WIN3_H

//}}BLOCK(win3)
