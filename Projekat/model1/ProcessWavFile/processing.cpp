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
	val = (*input++) * dry - (1.0 + (*input)) * data->degree;
    (*output++) = val * data->gain;
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

	double *psampleBuffer;

	double *pL_buffer = L_buffer; 
	double *pR_buffer = R_buffer;

	psampleBuffer = sampleBuffer[0];

	for(i = 0; i < BLOCK_SIZE; i++)
	{
		*pL_buffer++ = *psampleBuffer;
		*pR_buffer++ = *(psampleBuffer + BLOCK_SIZE);

		psampleBuffer++;
	}
	
	pL_buffer = L_buffer; 
	pR_buffer = R_buffer;

	psampleBuffer = sampleBuffer[0];

	for(i = 0; i < BLOCK_SIZE; i++)
	{
		//L
		(*psampleBuffer) *= DEFAULT_GAIN;
		(*psampleBuffer) = (*psampleBuffer) + (*pR_buffer) * ( 1 - DEFAULT_GAIN);

		//R
		(*(psampleBuffer + BLOCK_SIZE)) =  (*pL_buffer) * DEFAULT_GAIN;
		(*(psampleBuffer + BLOCK_SIZE)) = (*(psampleBuffer + BLOCK_SIZE)) + (*pR_buffer) * ( 1 - DEFAULT_GAIN);

		//C
		(*(psampleBuffer + 2 * BLOCK_SIZE)) = (*pL_buffer) * DEFAULT_GAIN;
		(*(psampleBuffer + 2 * BLOCK_SIZE)) = (*(psampleBuffer + 2 * BLOCK_SIZE)) + (*pR_buffer) * ( 1 - DEFAULT_GAIN);
		
		//Ls
		(*(psampleBuffer + 3 * BLOCK_SIZE)) =  (*pL_buffer) * DEFAULT_GAIN;
		(*(psampleBuffer + 3 * BLOCK_SIZE)) = (*(psampleBuffer + 3 * BLOCK_SIZE)) + (*pR_buffer) * ( 1 - DEFAULT_GAIN);

		//Rs
		(*(psampleBuffer + 4 * BLOCK_SIZE)) =  (*pL_buffer++) * DEFAULT_GAIN;
		(*(psampleBuffer++ + 4 * BLOCK_SIZE)) = (*(psampleBuffer + 4 * BLOCK_SIZE)) + (*pR_buffer++) * ( 1 - DEFAULT_GAIN);
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
