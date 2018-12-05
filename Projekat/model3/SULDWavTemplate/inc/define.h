#include "stdfix_emu.h"
#include <stdint.h>

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

#define DEFAULT_GAIN FRACT_NUM(0.5)

typedef int_fast16_t DSPshort;
typedef int_fast32_t DSPint;
typedef uint_fast16_t DSPushort;
typedef fract DSPfract;
typedef long_accum DSPaccum;
