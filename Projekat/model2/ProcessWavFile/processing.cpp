#include "processing.h"

float degree; //arg[3]
float gain; //arg[4]
int invertEnable; //arg[5]
inverter_data_t inverter;

void audio_invert_init()
{
	inverter.degree = degree;
	inverter.gain = gain;
}

void gst_audio_invert_transform(double * input, double * output)
{
  int i;
  float dry = 1.0 - inverter.degree;
  float val;

  for (i = 0; i < BLOCK_SIZE; i++) {
	val = (*input++) * dry - (1.0 + (*input)) * inverter.degree;
    (*output++) = val *inverter.gain;
  }
}

void processing()
{
	int i = 0;
	int Idegree = 0;
	int Igain = 0;
	audio_invert_init(); 

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
		gst_audio_invert_transform(sampleBuffer[2], sampleBuffer[2]);
	}

	if(invertEnable)
	{
		gst_audio_invert_transform(sampleBuffer[3], sampleBuffer[3]);
	}

	if(invertEnable)
	{
		gst_audio_invert_transform(sampleBuffer[4], sampleBuffer[4]);
	}

	
}
