#ifndef TOY_DEBUG_H
#define TOY_DEBUG_H

#include "chunk.h"

void disassembleChunk(Chunk *chunk, const char *name);
int disassembleInstruction(Chunk *chunk, int offset);

#endif
