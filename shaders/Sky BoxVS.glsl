
#version 330

uniform mat4 matVP;
uniform mat4 matGeo;


layout (location = 0) in vec3 pos;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 texCoord;

out vec4 color;
out vec2 uv;

void main() {
   uv = texCoord;
   color = vec4(0.5);
   vec3 newPos = pos;
   gl_Position = matVP * matGeo * vec4(newPos, 1);
}
