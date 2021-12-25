
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

#ifndef GRIT_WIN1_H
#define GRIT_WIN1_H

#define win1TilesLen 5024
extern const unsigned short win1Tiles[2512];

#define win1MapLen 4096
extern const unsigned short win1Map[2048];

#define win1PalLen 512
extern const unsigned short win1Pal[256];

#endif // GRIT_WIN1_H

//}}BLOCK(win1)
