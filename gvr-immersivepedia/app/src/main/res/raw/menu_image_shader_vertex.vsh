
#define HAS_MULTIVIEW
#ifdef HAS_MULTIVIEW
#extension GL_OVR_multiview2 : enable
layout(num_views = 2) in;
uniform mat4 u_mvp_[2];
#else
uniform mat4 u_mvp;
#endif

in vec4 a_position;
in vec3 a_normal;
in vec2 a_texcoord;
out vec2 coord;

void main() {
    coord = a_texcoord;
#ifdef HAS_MULTIVIEW
	gl_Position = u_mvp_[gl_ViewID_OVR] * a_position;
#else
	gl_Position = u_mvp * a_position;
#endif

}
