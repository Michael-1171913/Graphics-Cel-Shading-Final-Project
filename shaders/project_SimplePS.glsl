#version 330

uniform sampler2D tex;

in vec2 uv;
in vec4 color;
out vec4 outColor;

void main() {
   outColor = vec4(color) * texture(tex, uv);
}