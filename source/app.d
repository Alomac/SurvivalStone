import std.stdio;
import raylib;
import Util;

void game(){
	validateRaylibBinding();

	InitWindow(800, 600, "DLANG!");

	// Block myBlock = Block.newblock(0, 0, 0);
	BlockV2 otherblock = new BlockV2(false);

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
		otherblock.drawWholeBlock();

		// DrawGrid(16, myBlock.size.x);

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
