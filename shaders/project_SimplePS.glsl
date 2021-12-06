#version 330

uniform sampler2D texBird;
uniform sampler2D texEye;

in vec2 uv;
in vec4 color;
out vec4 outColor;

void main() {
    vec4 newCol = color;
    float isShaded;
    /*
    isShaded = step(length(newCol), 3.1);
    
    newCol = newCol * isShaded;
    */
    
    if(length(newCol) < 3.1)
    {
      newCol = vec4(vec3(0.5), 1);
    }
    else
    {
      newCol = vec4(vec3(1), 1);
    }
    

   outColor = vec4(newCol) * texture(texBird, uv);
}