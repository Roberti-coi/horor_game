shader_type canvas_item;

uniform int lineCount : hint_range(2, 9000) = 70;
uniform float darknessMult : hint_range(0.0, 1.0) = 0.25;
uniform float timeSpeed : hint_range(1.0, 65.0) = 6.5;

void fragment() {
	float wave = cos(UV.y*PI*float(lineCount)+(TIME*timeSpeed));
	float slowwave = cos(UV.y*PI*float(lineCount/50)+(TIME*timeSpeed/2.5));
	float square = round(wave);
	vec4 retroLines = vec4(
			square,
			square,
			square,
			((-square)*darknessMult)
		);
	vec4 darkwaves = vec4(0.0,0.0,0.0,((-slowwave)*darknessMult/2.0));
	COLOR = (darkwaves + retroLines) / 5.0;
}