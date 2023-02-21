# Arhivator

Sequential application of algorithms Burrows-Wheeler transform, Move-To-Front, Run-Length Encoding, Huffman codes  for file compression. Such a sequence is due to the fact that the Burrows-Wheeler transform transforms the data to a form in which sequences of repeating characters are often found. MTF and RLE algorithms work well with such sequences for subsequent conversion by the Huffman algorithm, which then optimizes the encoding of repeated sequences obtained after BWT, which improves the compression ratio.

Keys:

- -c - output the result to standard output 
- -k - do not delete the input file after compression
- -l - output information about the compressed file
- -d - unzipping the file
- -r - recursive passage through directories with archiving of lying files 
- -t - file integrity check
- -1 - fast compression
- -9 - deep compression
