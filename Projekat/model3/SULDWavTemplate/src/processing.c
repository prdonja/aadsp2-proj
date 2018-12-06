/*#include "processing.h"

DSPfract degree; //arg[3]
DSPfract gain; //arg[4]
DSPint invertEnable; //arg[5]
inverter_data_t inverter;
__memY DSPfract L_buffer[BLOCK_SIZE];
__memY DSPfract R_buffer[BLOCK_SIZE];

void audio_invert_init()
{
	inverter.degree = degree;
	inverter.gain = gain;
}

void gst_audio_invert_transform(__memY DSPfract * input, __memY DSPfract * output)
{
  DSPint i;
  DSPfract dry = FRACT_NUM(0.9999) - inverter.degree;
  DSPaccum val;
  DSPfract tmp;
  DSPfract tmp1 = FRACT_NUM(0.5);

  dry = dry + FRACT_NUM(0.0001);

  for(i = 0; i < BLOCK_SIZE; i++)
  {
	tmp = (tmp1 + ((*input)>>1));
	val = ((*input)>>1) * (dry) - tmp * inverter.degree;
	input++;
	(*output) = ((DSPfract)val * inverter.gain)<<1;
	output++;
  }
}

void processing()
{
	DSPint i = 0;

	__memY DSPfract *psampleBuffer;

	__memY DSPfract *pL_buffer = L_buffer;
	__memY DSPfract *pR_buffer = R_buffer;

	psampleBuffer = sampleBuffer[0];

	for(i = 0; i < BLOCK_SIZE; i++)
	{
		*pL_buffer = *psampleBuffer;
		*pR_buffer = *(psampleBuffer + BLOCK_SIZE);

		pL_buffer++;
		pR_buffer++;

		psampleBuffer++;
	}
	
	pL_buffer = L_buffer; 
	pR_buffer = R_buffer;

	psampleBuffer = sampleBuffer[0];

	for(i = 0; i < BLOCK_SIZE; i++)
	{
		//set L
		(*psampleBuffer) =  (*psampleBuffer) * DEFAULT_GAIN;
		(*psampleBuffer) = (*psampleBuffer) + (*pR_buffer) * (FRACT_NUM(1) - DEFAULT_GAIN);

		//set R
		(*(psampleBuffer + BLOCK_SIZE)) =  (*pL_buffer) * DEFAULT_GAIN;
		(*(psampleBuffer + BLOCK_SIZE)) = (*(psampleBuffer + BLOCK_SIZE)) + (*pR_buffer) * (FRACT_NUM(1) - DEFAULT_GAIN);

		//set C
		(*(psampleBuffer + 2 * BLOCK_SIZE)) = (*pL_buffer) * DEFAULT_GAIN;
		(*(psampleBuffer + 2 * BLOCK_SIZE)) = (*(psampleBuffer + 2 * BLOCK_SIZE)) + (*pR_buffer) * (FRACT_NUM(1) - DEFAULT_GAIN);
		
		//set Ls
		(*(psampleBuffer + 3 * BLOCK_SIZE)) =  (*pL_buffer) * DEFAULT_GAIN;
		(*(psampleBuffer + 3 * BLOCK_SIZE)) = (*(psampleBuffer + 3 * BLOCK_SIZE)) + (*pR_buffer) * (FRACT_NUM(1) - DEFAULT_GAIN);

		//set Rs
		(*(psampleBuffer + 4 * BLOCK_SIZE)) =  (*pL_buffer) * DEFAULT_GAIN;
		pL_buffer++;
		(*(psampleBuffer + 4 * BLOCK_SIZE)) = (*(psampleBuffer + 4 * BLOCK_SIZE)) + (*pR_buffer) * (FRACT_NUM(1) - DEFAULT_GAIN);
		pR_buffer++;
		psampleBuffer++;
	}
	//if invert is enabled, invert C, Ls, Rs
	if(invertEnable == 1)
	{
		gst_audio_invert_transform(sampleBuffer[2], sampleBuffer[2]);
	}

	if(invertEnable == 1)
	{
		gst_audio_invert_transform(sampleBuffer[3], sampleBuffer[3]);
	}

	if(invertEnable == 1)
	{
		gst_audio_invert_transform(sampleBuffer[4], sampleBuffer[4]);
	}

	
}*/
