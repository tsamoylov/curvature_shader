#version 120

varying vec2 lmcoord;
varying vec2 texcoord;
varying vec4 glcolor;

void main() {
	gl_Position = ftransform();
	gl_Position.y -= dot(gl_Position.xz,gl_Position.xz) / 16 / 16;
	texcoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
	lmcoord  = (gl_TextureMatrix[1] * gl_MultiTexCoord1).xy;
	glcolor = gl_Color;
}