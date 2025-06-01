module Chunk;

void generateChunk(Block block){

	int chunkSize = 9;
	int debugSize = 0;

	int gap = cast(int)block.size.x;

	int z = 0;
	while(z < chunkSize){

		int y = 0;
		while(y < chunkSize){

			int x = 0;
			while( x < chunkSize) {

				if( y < 6) {
					block.color = Colors.GRAY;
				} else {
					block.color = Colors.GREEN;
				}

				Vector3 bpos = {(gap + debugSize) * x, (gap + debugSize) * y, (gap + debugSize) * z};
				block.pos = bpos;
				DrawCubeV(block.pos, block.size, block.color);

				x = x + 1;
				if( block.color == Colors.DARKGREEN) {
					block.color = Colors.LIME;
				} else if( block.color == Colors.LIME) {
					block.color = Colors.DARKGREEN;
				}

			}
			y = y + 1;
		}
		z = z + 1;
	}
	// DrawCubeV(block.pos, block.size, block.color);
}

void generateChunk(BlockV2 block){

	int chunkSize = 9;
	int debugSize = 0;

	int gap = cast(int)block.size.x;

	int z = 0;
	while(z < chunkSize){

		int y = 0;
		while(y < chunkSize){

			int x = 0;
			while( x < chunkSize) {

				if( y < 6) {
					block.clr = Colors.GRAY;
				} else {
					block.clr = Colors.GREEN;
				}

                // Convert to working for BlockV2

				// Vector3 bpos = {(gap + debugSize) * x, (gap + debugSize) * y, (gap + debugSize) * z};
				// block.pos = bpos;
				// DrawCubeV(block.pos, block.size, block.clr);

				x = x + 1;
				if( block.clr == Colors.DARKGREEN) {
					block.clr = Colors.LIME;
				} else if( block.clr == Colors.LIME) {
					block.clr = Colors.DARKGREEN;
				}

			}
			y = y + 1;
		}
		z = z + 1;
	}
}