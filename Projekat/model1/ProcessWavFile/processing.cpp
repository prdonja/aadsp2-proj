#include "processing.h"
#include "define.h"

double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

void audio_invert_init(inverter_data_t * data, float degree, float gain)
{
	data->degree = degree;
	data->gain = gain;
}

void gst_audio_invert_transform(inverter_data_t * data, double * input, double * output, unsigned int num_samples)
{
  int i;
  float dry = 1.0 - data->degree;
  float val;

  for (i = 0; i < num_samples; i++) {
	val = input[i] * dry - (1.0 + input[i]) * data->degree;
    output[i] = val * data->gain;
  }
}

void processing(float degree, float gain, int invertEnable)
{
	int i = 0;
	int Idegree = 0;
	int Igain = 0;
	inverter_data_t inverter;
	audio_invert_init(&inverter, degree, gain); //degree 0 or 1(0 same, 1 gain), gain 

	double L_buffer[BLOCK_SIZE];
	double R_buffer[BLOCK_SIZE];

	for(i = 0; i < BLOCK_SIZE; i++)
	{
		L_buffer[i] = sampleBuffer[0][i];
		R_buffer[i] = sampleBuffer[1][i];
	}


	for(i = 0; i < BLOCK_SIZE; i++)
	{
		//L
		sampleBuffer[0][i] *= DEFAULT_GAIN;
		sampleBuffer[0][i] = sampleBuffer[0][i] + R_buffer[i] * ( 1 - DEFAULT_GAIN);

		//R
		sampleBuffer[1][i] =  L_buffer[i] * DEFAULT_GAIN;
		sampleBuffer[1][i] = sampleBuffer[1][i] + R_buffer[i] * ( 1 - DEFAULT_GAIN);

		//C
		sampleBuffer[2][i] =  L_buffer[i] * DEFAULT_GAIN;
		sampleBuffer[2][i] = sampleBuffer[2][i] + R_buffer[i] * ( 1 - DEFAULT_GAIN);
		
		//Ls
		sampleBuffer[3][i] =  L_buffer[i] * DEFAULT_GAIN;
		sampleBuffer[3][i] = sampleBuffer[3][i] + R_buffer[i] * ( 1 - DEFAULT_GAIN);
		

		//Rs
		sampleBuffer[4][i] =  L_buffer[i] * DEFAULT_GAIN;
		sampleBuffer[4][i] = sampleBuffer[4][i] + R_buffer[i] * ( 1 - DEFAULT_GAIN);
	}

	if(invertEnable)
	{
		gst_audio_invert_transform(&inverter, sampleBuffer[2], sampleBuffer[2], BLOCK_SIZE);
	}

	if(invertEnable)
	{
		gst_audio_invert_transform(&inverter, sampleBuffer[3], sampleBuffer[3], BLOCK_SIZE);
	}

	if(invertEnable)
	{
		gst_audio_invert_transform(&inverter, sampleBuffer[4], sampleBuffer[4], BLOCK_SIZE);
	}

	
}
