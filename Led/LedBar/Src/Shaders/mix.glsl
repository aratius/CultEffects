uniform float uIndex;

out vec4 fragColor;
void main()
{
	vec4[5] colors = vec4[](
		texture(sTD2DInputs[0], vUV.st),
		texture(sTD2DInputs[1], vUV.st),
		texture(sTD2DInputs[2], vUV.st),
		texture(sTD2DInputs[3], vUV.st),
		texture(sTD2DInputs[4], vUV.st)
	);
	int index = int(uIndex);
	vec4 color = mix(colors[index], colors[index + 1], fract(uIndex));
	fragColor = TDOutputSwizzle(color);
}
