#version 420 core

layout (location = 2) in vec2 texCoord;

// Outputs to the fragment shader
out vec4 color; 
out vec2 uv;

void main(void)
{
    uv = texCoord;
	color = vec4(0.8, 0.4, 0.3, 1.);
}