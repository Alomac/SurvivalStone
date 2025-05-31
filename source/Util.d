module Util;
import raylib;

struct Block {
	Vector3 size = {2, 2, 2};
	Vector3 pos;
	Color color = Colors.DARKGREEN;

	static Block newBlobk(float x, float y, float z) {
		Block setBlock;
		setBlock.pos.x = x;
		setBlock.pos.y = y;
		setBlock.pos.z = z;
		return setBlock;
	}
}

void camControls(Camera3D camra) {
	if( IsKeyDown(KeyboardKey.KEY_W) ){
		camra.position.x += 1;
	} else if (IsKeyDown(KeyboardKey.KEY_S) ){
		camra.position.x -= 1;
	}
}

//----------------------------------------------------------
void drawQuad_NORTH(){
	rlDisableBackfaceCulling();
    Vector3 vert_br = {1, 0, 0}; // Bottom right
    Vector3 vert_tl = {0, 1, 0}; // Top left
    Vector3 vert_bl = {0, 0, 0}; // Bottom left
    Vector3 vert_tr = {1, 1, 0}; // Top right
    DrawTriangle3D(vert_br, vert_tl, vert_bl, Colors.BLUE);
    DrawTriangle3D(vert_br, vert_tr, vert_tl, Colors.DARKBLUE);
}
void drawQuad_SOUTH(){
    Vector3 vert_br = {1, 0, 1}; // Bottom right
    Vector3 vert_tl = {0, 1, 1}; // Top left
    Vector3 vert_bl = {0, 0, 1}; // Bottom left
    Vector3 vert_tr = {1, 1, 1}; // Top right
    DrawTriangle3D(vert_br, vert_tl, vert_bl, Colors.PINK);
    DrawTriangle3D(vert_br, vert_tr, vert_tl, Colors.RED);
}
//----------------------------------------------------------
void drawQuad_EAST(){
    Vector3 vert_br = {0, 1, 0}; // Bottom right
    Vector3 vert_tl = {0, 0, 1}; // Top left
    Vector3 vert_bl = {0, 0, 0}; // Bottom left
    Vector3 vert_tr = {0, 1, 1}; // Top right
    DrawTriangle3D(vert_br, vert_tl, vert_bl, Colors.GREEN);
    DrawTriangle3D(vert_br, vert_tr, vert_tl, Colors.DARKGREEN);
}
void drawQuad_WEST(){
    Vector3 vert_br = {1, 1, 0}; // Bottom right
    Vector3 vert_tl = {1, 0, 1}; // Top left
    Vector3 vert_bl = {1, 0, 0}; // Bottom left
    Vector3 vert_tr = {1, 1, 1}; // Top right
    DrawTriangle3D(vert_br, vert_tl, vert_bl, Colors.YELLOW);
    DrawTriangle3D(vert_br, vert_tr, vert_tl, Colors.BROWN);
}
//----------------------------------------------------------
void drawQuad_UP(){
    Vector3 vert_br = {1, 1, 1}; // Bottom right
    Vector3 vert_tl = {0, 1, 0}; // Top left
    Vector3 vert_bl = {0, 1, 1}; // Bottom left
    Vector3 vert_tr = {1, 1, 0}; // Top right
    DrawTriangle3D(vert_br, vert_tl, vert_bl, Colors.WHITE);
    DrawTriangle3D(vert_br, vert_tr, vert_tl, Colors.LIGHTGRAY);
}
void drawQuad_DOWN(){
    Vector3 vert_br = {1, 0, 1}; // Bottom right
    Vector3 vert_tl = {0, 0, 0}; // Top left
    Vector3 vert_bl = {0, 0, 1}; // Bottom left
    Vector3 vert_tr = {1, 0, 0}; // Top right
    DrawTriangle3D(vert_br, vert_tl, vert_bl, Colors.DARKGRAY);
    DrawTriangle3D(vert_br, vert_tr, vert_tl, Colors.BLACK);
}
//----------------------------------------------------------
