/**********************************************************************
Copyright ?013 Advanced Micro Devices, Inc. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

?Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
?Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or
 other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
 DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
********************************************************************/
#define numReads 256
#define waveFront 64

__kernel void constantBandwidth_single_static(__constant DATATYPE *cb,
                                              __global DATATYPE *output)
{
	DATATYPE val = (DATATYPE)(0.0f);
	uint gid = get_global_id(0);
	uint index = 0;

	val = val + cb[index + 0];
	val = val + cb[index + 1];
	val = val + cb[index + 2];
	val = val + cb[index + 3];
	val = val + cb[index + 4];
	val = val + cb[index + 5];
	val = val + cb[index + 6];
	val = val + cb[index + 7];
	val = val + cb[index + 8];
	val = val + cb[index + 9];
	val = val + cb[index + 10];
	val = val + cb[index + 11];
	val = val + cb[index + 12];
	val = val + cb[index + 13];
	val = val + cb[index + 14];
	val = val + cb[index + 15];
	val = val + cb[index + 16];
	val = val + cb[index + 17];
	val = val + cb[index + 18];
	val = val + cb[index + 19];
	val = val + cb[index + 20];
	val = val + cb[index + 21];
	val = val + cb[index + 22];
	val = val + cb[index + 23];
	val = val + cb[index + 24];
	val = val + cb[index + 25];
	val = val + cb[index + 26];
	val = val + cb[index + 27];
	val = val + cb[index + 28];
	val = val + cb[index + 29];
	val = val + cb[index + 30];
	val = val + cb[index + 31];
	val = val + cb[index + 32];
	val = val + cb[index + 33];
	val = val + cb[index + 34];
	val = val + cb[index + 35];
	val = val + cb[index + 36];
	val = val + cb[index + 37];
	val = val + cb[index + 38];
	val = val + cb[index + 39];
	val = val + cb[index + 40];
	val = val + cb[index + 41];
	val = val + cb[index + 42];
	val = val + cb[index + 43];
	val = val + cb[index + 44];
	val = val + cb[index + 45];
	val = val + cb[index + 46];
	val = val + cb[index + 47];
	val = val + cb[index + 48];
	val = val + cb[index + 49];
	val = val + cb[index + 50];
	val = val + cb[index + 51];
	val = val + cb[index + 52];
	val = val + cb[index + 53];
	val = val + cb[index + 54];
	val = val + cb[index + 55];
	val = val + cb[index + 56];
	val = val + cb[index + 57];
	val = val + cb[index + 58];
	val = val + cb[index + 59];
	val = val + cb[index + 60];
	val = val + cb[index + 61];
	val = val + cb[index + 62];
	val = val + cb[index + 63];
	val = val + cb[index + 64];
	val = val + cb[index + 65];
	val = val + cb[index + 66];
	val = val + cb[index + 67];
	val = val + cb[index + 68];
	val = val + cb[index + 69];
	val = val + cb[index + 70];
	val = val + cb[index + 71];
	val = val + cb[index + 72];
	val = val + cb[index + 73];
	val = val + cb[index + 74];
	val = val + cb[index + 75];
	val = val + cb[index + 76];
	val = val + cb[index + 77];
	val = val + cb[index + 78];
	val = val + cb[index + 79];
	val = val + cb[index + 80];
	val = val + cb[index + 81];
	val = val + cb[index + 82];
	val = val + cb[index + 83];
	val = val + cb[index + 84];
	val = val + cb[index + 85];
	val = val + cb[index + 86];
	val = val + cb[index + 87];
	val = val + cb[index + 88];
	val = val + cb[index + 89];
	val = val + cb[index + 90];
	val = val + cb[index + 91];
	val = val + cb[index + 92];
	val = val + cb[index + 93];
	val = val + cb[index + 94];
	val = val + cb[index + 95];
	val = val + cb[index + 96];
	val = val + cb[index + 97];
	val = val + cb[index + 98];
	val = val + cb[index + 99];
	val = val + cb[index + 100];
	val = val + cb[index + 101];
	val = val + cb[index + 102];
	val = val + cb[index + 103];
	val = val + cb[index + 104];
	val = val + cb[index + 105];
	val = val + cb[index + 106];
	val = val + cb[index + 107];
	val = val + cb[index + 108];
	val = val + cb[index + 109];
	val = val + cb[index + 110];
	val = val + cb[index + 111];
	val = val + cb[index + 112];
	val = val + cb[index + 113];
	val = val + cb[index + 114];
	val = val + cb[index + 115];
	val = val + cb[index + 116];
	val = val + cb[index + 117];
	val = val + cb[index + 118];
	val = val + cb[index + 119];
	val = val + cb[index + 120];
	val = val + cb[index + 121];
	val = val + cb[index + 122];
	val = val + cb[index + 123];
	val = val + cb[index + 124];
	val = val + cb[index + 125];
	val = val + cb[index + 126];
	val = val + cb[index + 127];
	val = val + cb[index + 128];
	val = val + cb[index + 129];
	val = val + cb[index + 130];
	val = val + cb[index + 131];
	val = val + cb[index + 132];
	val = val + cb[index + 133];
	val = val + cb[index + 134];
	val = val + cb[index + 135];
	val = val + cb[index + 136];
	val = val + cb[index + 137];
	val = val + cb[index + 138];
	val = val + cb[index + 139];
	val = val + cb[index + 140];
	val = val + cb[index + 141];
	val = val + cb[index + 142];
	val = val + cb[index + 143];
	val = val + cb[index + 144];
	val = val + cb[index + 145];
	val = val + cb[index + 146];
	val = val + cb[index + 147];
	val = val + cb[index + 148];
	val = val + cb[index + 149];
	val = val + cb[index + 150];
	val = val + cb[index + 151];
	val = val + cb[index + 152];
	val = val + cb[index + 153];
	val = val + cb[index + 154];
	val = val + cb[index + 155];
	val = val + cb[index + 156];
	val = val + cb[index + 157];
	val = val + cb[index + 158];
	val = val + cb[index + 159];
	val = val + cb[index + 160];
	val = val + cb[index + 161];
	val = val + cb[index + 162];
	val = val + cb[index + 163];
	val = val + cb[index + 164];
	val = val + cb[index + 165];
	val = val + cb[index + 166];
	val = val + cb[index + 167];
	val = val + cb[index + 168];
	val = val + cb[index + 169];
	val = val + cb[index + 170];
	val = val + cb[index + 171];
	val = val + cb[index + 172];
	val = val + cb[index + 173];
	val = val + cb[index + 174];
	val = val + cb[index + 175];
	val = val + cb[index + 176];
	val = val + cb[index + 177];
	val = val + cb[index + 178];
	val = val + cb[index + 179];
	val = val + cb[index + 180];
	val = val + cb[index + 181];
	val = val + cb[index + 182];
	val = val + cb[index + 183];
	val = val + cb[index + 184];
	val = val + cb[index + 185];
	val = val + cb[index + 186];
	val = val + cb[index + 187];
	val = val + cb[index + 188];
	val = val + cb[index + 189];
	val = val + cb[index + 190];
	val = val + cb[index + 191];
	val = val + cb[index + 192];
	val = val + cb[index + 193];
	val = val + cb[index + 194];
	val = val + cb[index + 195];
	val = val + cb[index + 196];
	val = val + cb[index + 197];
	val = val + cb[index + 198];
	val = val + cb[index + 199];
	val = val + cb[index + 200];
	val = val + cb[index + 201];
	val = val + cb[index + 202];
	val = val + cb[index + 203];
	val = val + cb[index + 204];
	val = val + cb[index + 205];
	val = val + cb[index + 206];
	val = val + cb[index + 207];
	val = val + cb[index + 208];
	val = val + cb[index + 209];
	val = val + cb[index + 210];
	val = val + cb[index + 211];
	val = val + cb[index + 212];
	val = val + cb[index + 213];
	val = val + cb[index + 214];
	val = val + cb[index + 215];
	val = val + cb[index + 216];
	val = val + cb[index + 217];
	val = val + cb[index + 218];
	val = val + cb[index + 219];
	val = val + cb[index + 220];
	val = val + cb[index + 221];
	val = val + cb[index + 222];
	val = val + cb[index + 223];
	val = val + cb[index + 224];
	val = val + cb[index + 225];
	val = val + cb[index + 226];
	val = val + cb[index + 227];
	val = val + cb[index + 228];
	val = val + cb[index + 229];
	val = val + cb[index + 230];
	val = val + cb[index + 231];
	val = val + cb[index + 232];
	val = val + cb[index + 233];
	val = val + cb[index + 234];
	val = val + cb[index + 235];
	val = val + cb[index + 236];
	val = val + cb[index + 237];
	val = val + cb[index + 238];
	val = val + cb[index + 239];
	val = val + cb[index + 240];
	val = val + cb[index + 241];
	val = val + cb[index + 242];
	val = val + cb[index + 243];
	val = val + cb[index + 244];
	val = val + cb[index + 245];
	val = val + cb[index + 246];
	val = val + cb[index + 247];
	val = val + cb[index + 248];
	val = val + cb[index + 249];
	val = val + cb[index + 250];
	val = val + cb[index + 251];
	val = val + cb[index + 252];
	val = val + cb[index + 253];
	val = val + cb[index + 254];
	val = val + cb[index + 255];
	output[gid] = val;
}

__kernel void constantBandwidth_single_dynamic(uint index, 
                                               constant DATATYPE *cb __attribute__((max_constant_size(SIZE))),
                                               __global DATATYPE *output)
{
	DATATYPE val = (DATATYPE)(0.0f);
	uint gid = get_global_id(0);

	val = val + cb[index + 0];
	val = val + cb[index + 1];
	val = val + cb[index + 2];
	val = val + cb[index + 3];
	val = val + cb[index + 4];
	val = val + cb[index + 5];
	val = val + cb[index + 6];
	val = val + cb[index + 7];
	val = val + cb[index + 8];
	val = val + cb[index + 9];
	val = val + cb[index + 10];
	val = val + cb[index + 11];
	val = val + cb[index + 12];
	val = val + cb[index + 13];
	val = val + cb[index + 14];
	val = val + cb[index + 15];
	val = val + cb[index + 16];
	val = val + cb[index + 17];
	val = val + cb[index + 18];
	val = val + cb[index + 19];
	val = val + cb[index + 20];
	val = val + cb[index + 21];
	val = val + cb[index + 22];
	val = val + cb[index + 23];
	val = val + cb[index + 24];
	val = val + cb[index + 25];
	val = val + cb[index + 26];
	val = val + cb[index + 27];
	val = val + cb[index + 28];
	val = val + cb[index + 29];
	val = val + cb[index + 30];
	val = val + cb[index + 31];
	val = val + cb[index + 32];
	val = val + cb[index + 33];
	val = val + cb[index + 34];
	val = val + cb[index + 35];
	val = val + cb[index + 36];
	val = val + cb[index + 37];
	val = val + cb[index + 38];
	val = val + cb[index + 39];
	val = val + cb[index + 40];
	val = val + cb[index + 41];
	val = val + cb[index + 42];
	val = val + cb[index + 43];
	val = val + cb[index + 44];
	val = val + cb[index + 45];
	val = val + cb[index + 46];
	val = val + cb[index + 47];
	val = val + cb[index + 48];
	val = val + cb[index + 49];
	val = val + cb[index + 50];
	val = val + cb[index + 51];
	val = val + cb[index + 52];
	val = val + cb[index + 53];
	val = val + cb[index + 54];
	val = val + cb[index + 55];
	val = val + cb[index + 56];
	val = val + cb[index + 57];
	val = val + cb[index + 58];
	val = val + cb[index + 59];
	val = val + cb[index + 60];
	val = val + cb[index + 61];
	val = val + cb[index + 62];
	val = val + cb[index + 63];
	val = val + cb[index + 64];
	val = val + cb[index + 65];
	val = val + cb[index + 66];
	val = val + cb[index + 67];
	val = val + cb[index + 68];
	val = val + cb[index + 69];
	val = val + cb[index + 70];
	val = val + cb[index + 71];
	val = val + cb[index + 72];
	val = val + cb[index + 73];
	val = val + cb[index + 74];
	val = val + cb[index + 75];
	val = val + cb[index + 76];
	val = val + cb[index + 77];
	val = val + cb[index + 78];
	val = val + cb[index + 79];
	val = val + cb[index + 80];
	val = val + cb[index + 81];
	val = val + cb[index + 82];
	val = val + cb[index + 83];
	val = val + cb[index + 84];
	val = val + cb[index + 85];
	val = val + cb[index + 86];
	val = val + cb[index + 87];
	val = val + cb[index + 88];
	val = val + cb[index + 89];
	val = val + cb[index + 90];
	val = val + cb[index + 91];
	val = val + cb[index + 92];
	val = val + cb[index + 93];
	val = val + cb[index + 94];
	val = val + cb[index + 95];
	val = val + cb[index + 96];
	val = val + cb[index + 97];
	val = val + cb[index + 98];
	val = val + cb[index + 99];
	val = val + cb[index + 100];
	val = val + cb[index + 101];
	val = val + cb[index + 102];
	val = val + cb[index + 103];
	val = val + cb[index + 104];
	val = val + cb[index + 105];
	val = val + cb[index + 106];
	val = val + cb[index + 107];
	val = val + cb[index + 108];
	val = val + cb[index + 109];
	val = val + cb[index + 110];
	val = val + cb[index + 111];
	val = val + cb[index + 112];
	val = val + cb[index + 113];
	val = val + cb[index + 114];
	val = val + cb[index + 115];
	val = val + cb[index + 116];
	val = val + cb[index + 117];
	val = val + cb[index + 118];
	val = val + cb[index + 119];
	val = val + cb[index + 120];
	val = val + cb[index + 121];
	val = val + cb[index + 122];
	val = val + cb[index + 123];
	val = val + cb[index + 124];
	val = val + cb[index + 125];
	val = val + cb[index + 126];
	val = val + cb[index + 127];
	val = val + cb[index + 128];
	val = val + cb[index + 129];
	val = val + cb[index + 130];
	val = val + cb[index + 131];
	val = val + cb[index + 132];
	val = val + cb[index + 133];
	val = val + cb[index + 134];
	val = val + cb[index + 135];
	val = val + cb[index + 136];
	val = val + cb[index + 137];
	val = val + cb[index + 138];
	val = val + cb[index + 139];
	val = val + cb[index + 140];
	val = val + cb[index + 141];
	val = val + cb[index + 142];
	val = val + cb[index + 143];
	val = val + cb[index + 144];
	val = val + cb[index + 145];
	val = val + cb[index + 146];
	val = val + cb[index + 147];
	val = val + cb[index + 148];
	val = val + cb[index + 149];
	val = val + cb[index + 150];
	val = val + cb[index + 151];
	val = val + cb[index + 152];
	val = val + cb[index + 153];
	val = val + cb[index + 154];
	val = val + cb[index + 155];
	val = val + cb[index + 156];
	val = val + cb[index + 157];
	val = val + cb[index + 158];
	val = val + cb[index + 159];
	val = val + cb[index + 160];
	val = val + cb[index + 161];
	val = val + cb[index + 162];
	val = val + cb[index + 163];
	val = val + cb[index + 164];
	val = val + cb[index + 165];
	val = val + cb[index + 166];
	val = val + cb[index + 167];
	val = val + cb[index + 168];
	val = val + cb[index + 169];
	val = val + cb[index + 170];
	val = val + cb[index + 171];
	val = val + cb[index + 172];
	val = val + cb[index + 173];
	val = val + cb[index + 174];
	val = val + cb[index + 175];
	val = val + cb[index + 176];
	val = val + cb[index + 177];
	val = val + cb[index + 178];
	val = val + cb[index + 179];
	val = val + cb[index + 180];
	val = val + cb[index + 181];
	val = val + cb[index + 182];
	val = val + cb[index + 183];
	val = val + cb[index + 184];
	val = val + cb[index + 185];
	val = val + cb[index + 186];
	val = val + cb[index + 187];
	val = val + cb[index + 188];
	val = val + cb[index + 189];
	val = val + cb[index + 190];
	val = val + cb[index + 191];
	val = val + cb[index + 192];
	val = val + cb[index + 193];
	val = val + cb[index + 194];
	val = val + cb[index + 195];
	val = val + cb[index + 196];
	val = val + cb[index + 197];
	val = val + cb[index + 198];
	val = val + cb[index + 199];
	val = val + cb[index + 200];
	val = val + cb[index + 201];
	val = val + cb[index + 202];
	val = val + cb[index + 203];
	val = val + cb[index + 204];
	val = val + cb[index + 205];
	val = val + cb[index + 206];
	val = val + cb[index + 207];
	val = val + cb[index + 208];
	val = val + cb[index + 209];
	val = val + cb[index + 210];
	val = val + cb[index + 211];
	val = val + cb[index + 212];
	val = val + cb[index + 213];
	val = val + cb[index + 214];
	val = val + cb[index + 215];
	val = val + cb[index + 216];
	val = val + cb[index + 217];
	val = val + cb[index + 218];
	val = val + cb[index + 219];
	val = val + cb[index + 220];
	val = val + cb[index + 221];
	val = val + cb[index + 222];
	val = val + cb[index + 223];
	val = val + cb[index + 224];
	val = val + cb[index + 225];
	val = val + cb[index + 226];
	val = val + cb[index + 227];
	val = val + cb[index + 228];
	val = val + cb[index + 229];
	val = val + cb[index + 230];
	val = val + cb[index + 231];
	val = val + cb[index + 232];
	val = val + cb[index + 233];
	val = val + cb[index + 234];
	val = val + cb[index + 235];
	val = val + cb[index + 236];
	val = val + cb[index + 237];
	val = val + cb[index + 238];
	val = val + cb[index + 239];
	val = val + cb[index + 240];
	val = val + cb[index + 241];
	val = val + cb[index + 242];
	val = val + cb[index + 243];
	val = val + cb[index + 244];
	val = val + cb[index + 245];
	val = val + cb[index + 246];
	val = val + cb[index + 247];
	val = val + cb[index + 248];
	val = val + cb[index + 249];
	val = val + cb[index + 250];
	val = val + cb[index + 251];
	val = val + cb[index + 252];
	val = val + cb[index + 253];
	val = val + cb[index + 254];
	val = val + cb[index + 255];
	output[gid] = val;
}

__kernel void constantBandwidth_linear(constant DATATYPE *cb __attribute__((max_constant_size(SIZE))),
                                       __global DATATYPE *output)
{
	DATATYPE val = (DATATYPE)(0.0f);
	uint gid = get_global_id(0);
	uint index = gid % 64;
	
	val = val + cb[index + 0];
	val = val + cb[index + 1];
	val = val + cb[index + 2];
	val = val + cb[index + 3];
	val = val + cb[index + 4];
	val = val + cb[index + 5];
	val = val + cb[index + 6];
	val = val + cb[index + 7];
	val = val + cb[index + 8];
	val = val + cb[index + 9];
	val = val + cb[index + 10];
	val = val + cb[index + 11];
	val = val + cb[index + 12];
	val = val + cb[index + 13];
	val = val + cb[index + 14];
	val = val + cb[index + 15];
	val = val + cb[index + 16];
	val = val + cb[index + 17];
	val = val + cb[index + 18];
	val = val + cb[index + 19];
	val = val + cb[index + 20];
	val = val + cb[index + 21];
	val = val + cb[index + 22];
	val = val + cb[index + 23];
	val = val + cb[index + 24];
	val = val + cb[index + 25];
	val = val + cb[index + 26];
	val = val + cb[index + 27];
	val = val + cb[index + 28];
	val = val + cb[index + 29];
	val = val + cb[index + 30];
	val = val + cb[index + 31];
	val = val + cb[index + 32];
	val = val + cb[index + 33];
	val = val + cb[index + 34];
	val = val + cb[index + 35];
	val = val + cb[index + 36];
	val = val + cb[index + 37];
	val = val + cb[index + 38];
	val = val + cb[index + 39];
	val = val + cb[index + 40];
	val = val + cb[index + 41];
	val = val + cb[index + 42];
	val = val + cb[index + 43];
	val = val + cb[index + 44];
	val = val + cb[index + 45];
	val = val + cb[index + 46];
	val = val + cb[index + 47];
	val = val + cb[index + 48];
	val = val + cb[index + 49];
	val = val + cb[index + 50];
	val = val + cb[index + 51];
	val = val + cb[index + 52];
	val = val + cb[index + 53];
	val = val + cb[index + 54];
	val = val + cb[index + 55];
	val = val + cb[index + 56];
	val = val + cb[index + 57];
	val = val + cb[index + 58];
	val = val + cb[index + 59];
	val = val + cb[index + 60];
	val = val + cb[index + 61];
	val = val + cb[index + 62];
	val = val + cb[index + 63];
	val = val + cb[index + 64];
	val = val + cb[index + 65];
	val = val + cb[index + 66];
	val = val + cb[index + 67];
	val = val + cb[index + 68];
	val = val + cb[index + 69];
	val = val + cb[index + 70];
	val = val + cb[index + 71];
	val = val + cb[index + 72];
	val = val + cb[index + 73];
	val = val + cb[index + 74];
	val = val + cb[index + 75];
	val = val + cb[index + 76];
	val = val + cb[index + 77];
	val = val + cb[index + 78];
	val = val + cb[index + 79];
	val = val + cb[index + 80];
	val = val + cb[index + 81];
	val = val + cb[index + 82];
	val = val + cb[index + 83];
	val = val + cb[index + 84];
	val = val + cb[index + 85];
	val = val + cb[index + 86];
	val = val + cb[index + 87];
	val = val + cb[index + 88];
	val = val + cb[index + 89];
	val = val + cb[index + 90];
	val = val + cb[index + 91];
	val = val + cb[index + 92];
	val = val + cb[index + 93];
	val = val + cb[index + 94];
	val = val + cb[index + 95];
	val = val + cb[index + 96];
	val = val + cb[index + 97];
	val = val + cb[index + 98];
	val = val + cb[index + 99];
	val = val + cb[index + 100];
	val = val + cb[index + 101];
	val = val + cb[index + 102];
	val = val + cb[index + 103];
	val = val + cb[index + 104];
	val = val + cb[index + 105];
	val = val + cb[index + 106];
	val = val + cb[index + 107];
	val = val + cb[index + 108];
	val = val + cb[index + 109];
	val = val + cb[index + 110];
	val = val + cb[index + 111];
	val = val + cb[index + 112];
	val = val + cb[index + 113];
	val = val + cb[index + 114];
	val = val + cb[index + 115];
	val = val + cb[index + 116];
	val = val + cb[index + 117];
	val = val + cb[index + 118];
	val = val + cb[index + 119];
	val = val + cb[index + 120];
	val = val + cb[index + 121];
	val = val + cb[index + 122];
	val = val + cb[index + 123];
	val = val + cb[index + 124];
	val = val + cb[index + 125];
	val = val + cb[index + 126];
	val = val + cb[index + 127];
	val = val + cb[index + 128];
	val = val + cb[index + 129];
	val = val + cb[index + 130];
	val = val + cb[index + 131];
	val = val + cb[index + 132];
	val = val + cb[index + 133];
	val = val + cb[index + 134];
	val = val + cb[index + 135];
	val = val + cb[index + 136];
	val = val + cb[index + 137];
	val = val + cb[index + 138];
	val = val + cb[index + 139];
	val = val + cb[index + 140];
	val = val + cb[index + 141];
	val = val + cb[index + 142];
	val = val + cb[index + 143];
	val = val + cb[index + 144];
	val = val + cb[index + 145];
	val = val + cb[index + 146];
	val = val + cb[index + 147];
	val = val + cb[index + 148];
	val = val + cb[index + 149];
	val = val + cb[index + 150];
	val = val + cb[index + 151];
	val = val + cb[index + 152];
	val = val + cb[index + 153];
	val = val + cb[index + 154];
	val = val + cb[index + 155];
	val = val + cb[index + 156];
	val = val + cb[index + 157];
	val = val + cb[index + 158];
	val = val + cb[index + 159];
	val = val + cb[index + 160];
	val = val + cb[index + 161];
	val = val + cb[index + 162];
	val = val + cb[index + 163];
	val = val + cb[index + 164];
	val = val + cb[index + 165];
	val = val + cb[index + 166];
	val = val + cb[index + 167];
	val = val + cb[index + 168];
	val = val + cb[index + 169];
	val = val + cb[index + 170];
	val = val + cb[index + 171];
	val = val + cb[index + 172];
	val = val + cb[index + 173];
	val = val + cb[index + 174];
	val = val + cb[index + 175];
	val = val + cb[index + 176];
	val = val + cb[index + 177];
	val = val + cb[index + 178];
	val = val + cb[index + 179];
	val = val + cb[index + 180];
	val = val + cb[index + 181];
	val = val + cb[index + 182];
	val = val + cb[index + 183];
	val = val + cb[index + 184];
	val = val + cb[index + 185];
	val = val + cb[index + 186];
	val = val + cb[index + 187];
	val = val + cb[index + 188];
	val = val + cb[index + 189];
	val = val + cb[index + 190];
	val = val + cb[index + 191];
	val = val + cb[index + 192];
	val = val + cb[index + 193];
	val = val + cb[index + 194];
	val = val + cb[index + 195];
	val = val + cb[index + 196];
	val = val + cb[index + 197];
	val = val + cb[index + 198];
	val = val + cb[index + 199];
	val = val + cb[index + 200];
	val = val + cb[index + 201];
	val = val + cb[index + 202];
	val = val + cb[index + 203];
	val = val + cb[index + 204];
	val = val + cb[index + 205];
	val = val + cb[index + 206];
	val = val + cb[index + 207];
	val = val + cb[index + 208];
	val = val + cb[index + 209];
	val = val + cb[index + 210];
	val = val + cb[index + 211];
	val = val + cb[index + 212];
	val = val + cb[index + 213];
	val = val + cb[index + 214];
	val = val + cb[index + 215];
	val = val + cb[index + 216];
	val = val + cb[index + 217];
	val = val + cb[index + 218];
	val = val + cb[index + 219];
	val = val + cb[index + 220];
	val = val + cb[index + 221];
	val = val + cb[index + 222];
	val = val + cb[index + 223];
	val = val + cb[index + 224];
	val = val + cb[index + 225];
	val = val + cb[index + 226];
	val = val + cb[index + 227];
	val = val + cb[index + 228];
	val = val + cb[index + 229];
	val = val + cb[index + 230];
	val = val + cb[index + 231];
	val = val + cb[index + 232];
	val = val + cb[index + 233];
	val = val + cb[index + 234];
	val = val + cb[index + 235];
	val = val + cb[index + 236];
	val = val + cb[index + 237];
	val = val + cb[index + 238];
	val = val + cb[index + 239];
	val = val + cb[index + 240];
	val = val + cb[index + 241];
	val = val + cb[index + 242];
	val = val + cb[index + 243];
	val = val + cb[index + 244];
	val = val + cb[index + 245];
	val = val + cb[index + 246];
	val = val + cb[index + 247];
	val = val + cb[index + 248];
	val = val + cb[index + 249];
	val = val + cb[index + 250];
	val = val + cb[index + 251];
	val = val + cb[index + 252];
	val = val + cb[index + 253];
	val = val + cb[index + 254];
	val = val + cb[index + 255];
	output[gid] = val;
}



__kernel void constantBandwidth_random1(
                                      constant DATATYPE2 *input __attribute__((max_constant_size(SIZE))),
                                       __global DATATYPE2 *output
                                       
                                       )
{
	
	uint gid = get_global_id(0);
	uint Index = get_local_id(0);
	
    DATATYPE2 val = (DATATYPE2)(0.0f);
    DATATYPE2 midval = (DATATYPE2)(0.0f);
    
    for(uint i = 0; i<256;i++)
    {
    midval = input[Index];
    val += midval;
   
    Index = (uint)(val.S0 )% 320;
    }
    
	output[gid] = val;
}

__kernel void constantBandwidth_random2(
                                      constant float *input __attribute__((max_constant_size(SIZE))),
                                       __global float *output
                                       
                                       )
{
	
	uint gid = get_global_id(0);
	uint Index = get_local_id(0);
	
    float val = (float)(0.0f);
    float midval = (float)(0.0f);
    
    for(uint i = 0; i<256;i++)
    {
    midval = input[Index];
    val += midval;
    Index = (uint)(val) % 320;
    }
    
	output[gid] = val;
}
