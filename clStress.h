#ifndef CL_STRESS_H_
#define CL_STRESS_H_

#define GROUP_SIZE 64
#define NUM_READS 256
#define WAVEFRONT 64
#define NUM_KERNELS 4

//Header Files
#include <CL/cl.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include "CLUtil.hpp"

#define SAMPLE_VERSION "AMD-APP-SDK-v2.9.233.1"

using namespace appsdk;

/**
 * ClStress
 */

class ClStress
{
        cl_double           setupTime;      /**< Time for setting up OpenCL */
        cl_double     totalKernelTime;      /**< Time for kernel execution */
        cl_double    totalProgramTime;      /**< Time for program execution */
        cl_uint                length;      /**< Length of the input data */
        cl_float               *input;      /**< Input array */
        cl_float              *output;      /**< Output array */

        cl_float  *verificationOutput;      /**< host output array */
        cl_context            context;      /**< CL context */
        cl_device_id         *devices;      /**< CL device list */
        cl_mem         constantBuffer;      /**< CL memory buffer */
        cl_mem           outputBuffer;      /**< CL memory buffer */


        cl_command_queue commandQueue;      /**< CL command queue */
        cl_program            program;      /**< CL program */
        cl_kernel kernel[NUM_KERNELS];      /**< CL kernel */
        size_t          globalThreads;
        size_t           localThreads;

        size_t    kernelWorkGroupSize;      /**< Group Size returned by kernel */
        int				   iterations;      /**< Number of iterations for kernel execution */
        int                vectorSize;      /**< Number of vector elements, default = 1 */
		int					 nbuffers;		/**< in MB  */
        bool			dynamiArgFlag;
        bool					 vec3;
        SDKDeviceInfo deviceInfo;  /**< Structure to store device information*/

        SDKTimer *sampleTimer;      /**< SDKTimer object */

    public:

        CLCommandArgs   *sampleArgs;   /**< CLCommand argument class */

        /**
         * Constructor
         * Initialize member variables
         */
        ClStress()
        {
            sampleArgs = new CLCommandArgs();
            sampleTimer = new SDKTimer();
            sampleArgs->sampleVerStr = SAMPLE_VERSION;
            input = NULL;
            output = NULL;
            verificationOutput = NULL;
            setupTime = 0;
            totalKernelTime = 0;
            iterations = 500;
            length = 1024 * 1024;
            vectorSize = 4;
            globalThreads = length;
            localThreads = GROUP_SIZE;
            dynamiArgFlag = false;
            vec3 = false;
			nbuffers = 512;	
        }

        /**
         * Allocate and initialize host memory array with random values
         * @return SDK_SUCCESS on success and SDK_FAILURE on failure
         */
        int setupConstantBandwidth();

        /**
         * OpenCL related initialisations.
         * Set up Context, Device list, Command Queue, Memory buffers
         * Build CL kernel program executable
         * @return SDK_SUCCESS on success and SDK_FAILURE on failure
         */
        int setupCL();

        /**
         * Set values for kernels' arguments, enqueue calls to the kernels
         * on to the command queue, wait till end of kernel execution.
         * Get kernel start and end time if timing is enabled
         * @return SDK_SUCCESS on success and SDK_FAILURE on failure
         */
        int runCLKernels();

        /**
         * Run bandwidth kernel and write values to output
         * @return SDK_SUCCESS on success and SDK_FAILURE on failure
         */
        int bandwidth(cl_kernel &kernel);

        /**
         * Override from SDKSample. Initialize
         * command line parser, add custom options
         * @return SDK_SUCCESS on success and SDK_FAILURE on failure
         */
        int initialize();

        /**
         * Override from SDKSample, Generate binary image of given kernel
         * and exit application
         * @return SDK_SUCCESS on success and SDK_FAILURE on failure
         */
        int genBinaryImage();

        /**
         * Override from SDKSample, adjust width and height
         * of execution domain, perform all sample setup
         * @return SDK_SUCCESS on success and SDK_FAILURE on failure
         */
        int setup();

        /**
         * Override from SDKSample
         * @return SDK_SUCCESS on success and SDK_FAILURE on failure
         */
        int run();

        /**
         * Override from SDKSample
         * Cleanup memory allocations
         * @return SDK_SUCCESS on success and SDK_FAILURE on failure
         */
        int cleanup();

        /**
         * Override from SDKSample
         * Verify against reference implementation
         * @return SDK_SUCCESS on success and SDK_FAILURE on failure
         */
        int verifyResults();
};


#endif
