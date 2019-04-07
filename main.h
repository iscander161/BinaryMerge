//
// Created by Iscander on 07.04.2019.
//

#ifndef BINARYMERGE_MAIN_H
#define BINARYMERGE_MAIN_H

#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <array>

std::ifstream   fileFirstFile,  //First file stream
                fileSecondFile; //Second file stream
std::ofstream fileOutput;

int main(int, char**);      //main function
char* sFirstFile;
char* sSecondFile;
int nFirstFileSize;         //Size of first merging file
int nSecondFileSize;         //Size of first merging file
int nSecondFileOffset;      //Offset of second file
int OffsetConvert(char*);   //Convert function: hex string to int

uint8_t bm_StartMerging();     //Start merge files
void bm_StartMerging(std::ifstream*, std::ifstream*, std::ofstream*);     //Start merge files

#endif //BINARYMERGE_MAIN_H
