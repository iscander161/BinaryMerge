#include "main.h"

/*
 * argv[0] - Exe file
 * argv[1] - First file
 * argv[2] - Second file
 * argv[3] - Second file offset
 * argv[4] - Output file
 *
*/

int main(int argc, char** argv)
{
    //Check arguments
    if(argc < 5)
    {
        std::cout << "Error 1: Invalid arguments." << std::endl;
        system("pause");
        return 1; //Invalid arguments
    }
    fileFirstFile.open(argv[1], std::ios::binary);
    if(!fileFirstFile.is_open())
    {
        std::cout << "Error 2: error open file: " << argv[1] << std::endl;
        system("pause");
        return 2; //Error open first file
    }
    fileFirstFile.seekg(0, std::ios::end);
    nFirstFileSize = fileFirstFile.tellg();
    fileFirstFile.seekg(0, std::ios::beg);
    ///////////////////////////////////////////////////
    fileSecondFile.open(argv[2], std::ios::binary);
    if(!fileSecondFile.is_open())
    {
        std::cout << "Error 3: error open file: " << argv[2] << std::endl;
        system("pause");
        return 3; //Error open second file
    }
    fileSecondFile.seekg(0, std::ios::end);
    nSecondFileSize = fileSecondFile.tellg();
    fileSecondFile.seekg(0, std::ios::beg);
    ///////////////////////////////////////////////////
    nSecondFileOffset = OffsetConvert(argv[3]);
    if(nSecondFileOffset < nFirstFileSize)
    {
        std::cout << "Size of first file: " << nFirstFileSize << " bytes." << std::endl;
        std::cout << "Offset of second file " << nSecondFileOffset << " bytes." << std::endl;
        std::cout << "Error 4: The offset should not be less than the size of the first file." << std::endl;
        system("pause");
        return 4; //The offset should not be less than the size of the first file.
    }
    fileOutput.open(argv[4], std::ios::binary | std::ios::trunc);
    if(!fileOutput.is_open())
    {
        std::cout << "Error 5: error create/open file: " << argv[4] << std::endl;
        system("pause");
        return 5; //Error open/create output file
    }
    //Function call by reference
    bm_StartMerging(&fileFirstFile, &fileSecondFile, &fileOutput);

    //Function call by value
    /*if(bm_StartMerging())
        std::cout << "Something wrong... File is not written." << std::endl;*/
    std::cout << "All work is done... " << std::endl;
    system("pause");
    fileFirstFile.close();
    fileSecondFile.close();
    fileOutput.close();
    return 0;
}

int OffsetConvert(char* sOffset)
{
    int nOffset;
    std::stringstream ss;
    ss << std::hex << sOffset;
    ss >> nOffset;
    return nOffset;
}

uint8_t bm_StartMerging()
{
    sFirstFile = (char*)malloc(sizeof(char) * nFirstFileSize);
    sSecondFile = (char*)malloc(sizeof(char) * nSecondFileSize);
    fileFirstFile.read(sFirstFile, nFirstFileSize);
    fileSecondFile.read(sSecondFile, nSecondFileSize);
    int nOffset = nSecondFileOffset - nFirstFileSize;
    char* sOffsetData = (char*)malloc(sizeof(char) * nOffset);
    for(int i = 0; i < nOffset; i++)
        sOffsetData[i] = 0xFF;
    fileOutput.write(sFirstFile, nFirstFileSize);
    fileOutput.write(sOffsetData, nOffset);
    fileOutput.write(sSecondFile, nSecondFileSize);
    delete(sFirstFile);
    delete(sSecondFile);
    delete(sOffsetData);
    return 0;
}

void bm_StartMerging(std::ifstream* fileFirst, std::ifstream* fileSecond, std::ofstream* fileOut)
{
    sFirstFile = (char*)malloc(sizeof(char) * nFirstFileSize);
    sSecondFile = (char*)malloc(sizeof(char) * nSecondFileSize);
    fileFirst->read(sFirstFile, nFirstFileSize);
    fileSecond->read(sSecondFile, nSecondFileSize);
    int nOffset = nSecondFileOffset - nFirstFileSize;
    char* sOffsetData = (char*)malloc(sizeof(char) * nOffset);
    for(int i = 0; i < nOffset; i++)
        sOffsetData[i] = 0xFF;
    fileOut->write(sFirstFile, nFirstFileSize);
    fileOut->write(sOffsetData, nOffset);
    fileOut->write(sSecondFile, nSecondFileSize);
    delete(sFirstFile);
    delete(sSecondFile);
    delete(sOffsetData);
}