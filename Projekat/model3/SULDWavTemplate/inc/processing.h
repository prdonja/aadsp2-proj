#include "define.h"

typedef struct {
	DSPfract degree;
	DSPfract gain;
} inverter_data_t;

extern DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
extern DSPfract degree;
extern DSPfract gain;
extern DSPint invertEnable;

void audio_invert_init();

void gst_audio_invert_transform(DSPfract * input, DSPfract * output);

void processing();