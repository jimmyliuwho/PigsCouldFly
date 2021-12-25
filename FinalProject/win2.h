
//{{BLOCK(win2)

//======================================================================
//
//	win2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 41 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1312 + 2048 = 3872
//
//	Time-stamp: 2021-12-07, 22:46:24
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WIN2_H
#define GRIT_WIN2_H

#define win2TilesLen 1312
extern const unsigned short win2Tiles[656];

#define win2MapLen 2048
extern const unsigned short win2Map[1024];

#define win2PalLen 512
extern const unsigned short win2Pal[256];

#endif // GRIT_WIN2_H

//}}BLOCK(win2)
