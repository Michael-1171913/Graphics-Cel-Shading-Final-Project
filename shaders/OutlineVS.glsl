#version 420 core

// Per-vertex inputs
layout (location = 0) in vec3 pos;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 texCoord;

// Matrices we'll need
uniform mat4 matGeo;
uniform mat4 view_matrix;
uniform mat4 proj_matrix;

uniform float time;

mat4 modelView = view_matrix * matGeo;


// Light and material properties
 vec3 light_pos = vec3(0, 0, 0);
 vec3 diffuse_albedo = vec3(1);
 vec3 specular_albedo = vec3(1);
 float specular_power = 128.0;
 vec3 ambient = vec3(0);

// Outputs to the fragment shader
out vec4 color; 
out vec2 uv;

void main(void)
{
	light_pos.x = sin(time) * 50;
	light_pos.z = cos(time) * 50;

    // Calculate view-space coordinate
    vec4 P = modelView * vec4(pos, 1);

    // Calculate normal in view space
    vec3 N = mat3(modelView) * normal;
    // Calculate view-space light vector
    vec3 L = light_pos - P.xyz;
    // Calculate view vector (simply the negative of the
    // view-space position)
    vec3 V = -P.xyz;

    // Normalize all three vectors
    N = normalize(N);
    L = normalize(L);
    V = normalize(V);

    // Calculate R by reflecting -L around the plane defined by N
    vec3 R = reflect(-L, N);

    // Calculate the diffuse and specular contributions
    vec3 diffuse = max(dot(N, L), 0.0) * diffuse_albedo;
    vec3 specular = pow(max(dot(R, V), 0.0), specular_power) *
                    specular_albedo;

    // Send the color output to the fragment shader
    color = vec4(ambient, 1) + vec4(diffuse, 1) + vec4(specular, 1); 
    //color = vec4(1);
    uv = texCoord;

    // Calculate the clip-space position of each vertex
    gl_Position = proj_matrix * P;
}