#include "define.h"

typedef struct {
	float degree;
	float gain;
} inverter_data_t;

extern double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
extern float degree;
extern float gain;
extern int invertEnable;

void audio_invert_init();

void gst_audio_invert_transform(float * input, float * output);

void processing();
