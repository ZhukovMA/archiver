all: KP

KP: Compressor.o Archiver.o RLECompressor.o BWTCompressor.o HuffmanCompressor.o MTFCompressor.o main.o
	g++ Compressor.o Archiver.o RLE.o BWT.o Huffman.o MTF.o main.o -o KP
	rm -rf *.o

main.o: main.cpp
	g++ -std=c++17 -Wall -pedantic -c main.cpp

Archiver.o: Archiver/Archiver.cpp
	g++ -std=c++17 -Wall -pedantic -c Archiver/Archiver.cpp

RLECompressor.o: Archiver/Compressors/RLECompressor/RLECompressor.cpp
	g++ -std=c++17 -Wall -pedantic -c Archiver/Compressors/RLECompressor/RLECompressor.cpp

BWTCompressor.o: Archiver/Compressors/BWTCompressor/BWTCompressor.cpp
	g++ -std=c++17 -Wall -pedantic -c Archiver/Compressors/BWTCompressor/BWTCompressor.cpp

MTFCompressor.o: Archiver/Compressors/MTFCompressor/MTFCompressor.cpp
	g++ -std=c++17 -Wall -pedantic -c Archiver/Compressors/MTFCompressor/MTFCompressor.cpp

HuffmanCompressor.o: Archiver/Compressors/HuffmanCompressor/HuffmanCompressor.cpp
	g++ -std=c++17 -Wall -pedantic -c Archiver/Compressors/HuffmanCompressor/HuffmanCompressor.cpp

Compressor.o: Archiver/Compressors/Compressor.cpp
	g++ -std=c++17 -Wall -pedantic -c Archiver/Compressors/Compressor.cpp


clean:
	rm -rf *.o gzzip
