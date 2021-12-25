
//{{BLOCK(level1Map)

//======================================================================
//
//	level1Map, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 381 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 12192 + 8192 = 20896
//
//	Time-stamp: 2021-11-21, 18:58:36
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL1MAP_H
#define GRIT_LEVEL1MAP_H

#define level1MapTilesLen 12192
extern const unsigned short level1MapTiles[6096];

#define level1MapMapLen 8192
extern const unsigned short level1MapMap[4096];

#define level1MapPalLen 512
extern const unsigned short level1MapPal[256];

#endif // GRIT_LEVEL1MAP_H

//}}BLOCK(level1Map)
