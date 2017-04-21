precision mediump float;
precision mediump sampler2D;
in vec2  coord;
uniform sampler2D state1;
uniform sampler2D state2;
uniform float textureSwitch;
uniform float opacity;
out vec4 outColor;

void main() {
	vec4 texColor;
	if(textureSwitch == 0.0) {
		texColor = texture(state1, coord);
	} else {
		texColor = texture(state2, coord);
	}
		
	outColor = texColor;
	outColor.a = outColor.a * opacity;
}