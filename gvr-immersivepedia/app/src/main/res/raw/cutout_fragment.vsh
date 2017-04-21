precision mediump float;
precision mediump sampler2D;
in vec2  coord;
uniform sampler2D u_texture;
uniform float cutout;
out vec4 outColor;
void main() {
	
	vec4 color;	
	color = texture(u_texture, coord);
	
	if(color.r < cutout){
		outColor = vec4(0,0,0,color.a);
	}else{
		outColor = vec4(0,0,0,0);
	}
	if(color.a < 1.0)
		outColor = vec4(0,0,0,0);
}