#version 330
#extension GL_GOOGLE_include_directive : enable

#define v_tex_coord (gl_FragCoord.xy/u_resolution)
#define v_color_mix vec4(1.0)
#define SKDefaultShading() vec4(1.0)
#define u_path_length 1.0
#define v_path_distance 1.0
#define gl_FragColor outColor
#define texture2D texture
#define constant const

uniform sampler2D u_texture;
uniform float u_time;
uniform vec2 u_resolution;
uniform vec2 u_mouse;
out vec4 outColor;

// ~ Shader required input ~

#define a_time u_time


// ~ Main shader file (use local paths e.g. ../..) ~

#include <./shaders/SKShader.fsh>
