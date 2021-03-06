
//{{BLOCK(pointer)

//======================================================================
//
//	pointer, 8x8@8, 
//	+ palette 256 entries, not compressed
//	+ bitmap not compressed
//	Total size: 512 + 64 = 576
//
//	Time-stamp: 2021-11-24, 20:43:54
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_POINTER_H
#define GRIT_POINTER_H

#define pointerBitmapLen 64
extern const unsigned short pointerBitmap[32];

#define pointerPalLen 512
extern const unsigned short pointerPal[256];

#endif // GRIT_POINTER_H

//}}BLOCK(pointer)
