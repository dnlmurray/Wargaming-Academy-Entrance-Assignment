#ifndef H_DATATYPES
#define H_DATATYPES

#include <cstdint>

typedef float    f32;
typedef double   f64;

typedef uint8_t  u8;
typedef uint16_t u16;
typedef uint32_t u32;

typedef int8_t   i8;
typedef int16_t  i16;
typedef int32_t  i32;

struct Color
{
	f32 r, g, b, a;
};

enum TileType : i8
{
	Blocked  = -1,
	Empty    = 0,
	Selected = 1,
	Orange   = 2,
	Red      = 3,
	Green    = 4
};

struct Vertex
{
	u32 id;
	f32 position[3];
};

#endif // !H_GAMEINIT
