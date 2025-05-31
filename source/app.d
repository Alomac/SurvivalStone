import std.stdio;
import raylib;
import Util;

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

void game(){
	validateRaylibBinding();

	InitWindow(800, 600, "DLANG!");

	Block myBlock = Block.newBlobk(0, 0, 0);

	Camera cam;
	cam.position = Vector3(10, 10, 10);
	cam.target = Vector3(0, 0, 0);
	cam.up = Vector3(0, 1, 0);
	cam.fovy = 60;
	cam.projection = CameraProjection.CAMERA_PERSPECTIVE;

	while( ! WindowShouldClose){

		UpdateCamera(&cam, CameraMode.CAMERA_FREE);
		//camControls(cam);

		BeginDrawing();


		ClearBackground(Colors.BLACK);

		BeginMode3D(cam); //______________

		// generateChunk(myBlock);
		drawQuad_NORTH();
		drawQuad_SOUTH();
		drawQuad_EAST();
		drawQuad_WEST();
		drawQuad_UP();
		drawQuad_DOWN();
		DrawGrid(16, myBlock.size.x);

		EndMode3D(); //______________

		DrawText("Nan0MK", 350, 250, 60, Colors.GREEN);


		EndDrawing();
	}
	CloseWindow();
}

void main()
{
	writeln("HI! It's ME IN D!!");
	game();
}
