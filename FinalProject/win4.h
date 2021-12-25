
//{{BLOCK(win4)

//======================================================================
//
//	win4, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 64 + 4096 = 4672
//
//	Time-stamp: 2021-12-07, 22:47:14
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WIN4_H
#define GRIT_WIN4_H

#define win4TilesLen 64
extern const unsigned short win4Tiles[32];

#define win4MapLen 4096
extern const unsigned short win4Map[2048];

#define win4PalLen 512
extern const unsigned short win4Pal[256];

#endif // GRIT_WIN4_H

//}}BLOCK(win4)
