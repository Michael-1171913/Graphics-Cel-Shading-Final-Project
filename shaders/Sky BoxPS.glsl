#version 330

uniform sampler2D texSky;
uniform float time;

in vec2 uv;
in vec4 color;
out vec4 outColor;

void main() {
   vec2 uvNew = uv;
   uvNew.y += time * -0.1;
   outColor = vec4(color) * texture(texSky, uvNew);
}