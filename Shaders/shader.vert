#version 330 core

layout (location = 0) in vec3 pos;

out vec4 vCol; //send out   

uniform mat4 model;
uniform mat4 projection;
uniform mat4 view;

void main()
{
    gl_Position = projection * view * model * vec4(pos, 1.0);
    vCol = vec4(clamp(pos,0.0f,1.0f),1.0f); //clamp use to limit value between 2 values

}