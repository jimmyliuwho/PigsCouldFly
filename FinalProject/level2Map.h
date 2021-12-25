
//{{BLOCK(level2Map)

//======================================================================
//
//	level2Map, 512x1024@4, 
//	+ palette 256 entries, not compressed
//	+ 1866 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x128 
//	Total size: 512 + 59712 + 16384 = 76608
//
//	Time-stamp: 2021-11-30, 16:48:26
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL2MAP_H
#define GRIT_LEVEL2MAP_H

#define level2MapTilesLen 59712
extern const unsigned short level2MapTiles[29856];

#define level2MapMapLen 16384
extern const unsigned short level2MapMap[8192];

#define level2MapPalLen 512
extern const unsigned short level2MapPal[256];

#endif // GRIT_LEVEL2MAP_H

//}}BLOCK(level2Map)
