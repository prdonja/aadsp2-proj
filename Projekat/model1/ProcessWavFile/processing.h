#include "define.h"
typedef struct {
	float degree;
	float gain;
} inverter_data_t;

extern double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

void audio_invert_init(inverter_data_t * data, float degree, float gain);

void gst_audio_invert_transform(inverter_data_t * data,float * input, float * output, unsigned int num_samples);

void processing(float degree, float gain, int invertEnable);
