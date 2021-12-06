#version 330

uniform sampler2D texBird;
uniform sampler2D texEye;

in vec2 uv;
in vec4 color;
out vec4 outColor;

void main() {
   outColor = vec4(color);
   //* texture(texEye, uv);
}