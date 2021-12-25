
//{{BLOCK(level2Foreground)

//======================================================================
//
//	level2Foreground, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 6 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 192 + 8192 = 8896
//
//	Time-stamp: 2021-11-30, 22:49:57
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL2FOREGROUND_H
#define GRIT_LEVEL2FOREGROUND_H

#define level2ForegroundTilesLen 192
extern const unsigned short level2ForegroundTiles[96];

#define level2ForegroundMapLen 8192
extern const unsigned short level2ForegroundMap[4096];

#define level2ForegroundPalLen 512
extern const unsigned short level2ForegroundPal[256];

#endif // GRIT_LEVEL2FOREGROUND_H

//}}BLOCK(level2Foreground)
