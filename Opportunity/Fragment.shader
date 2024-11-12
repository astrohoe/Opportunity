#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D texture1;

float ndc = depth * 2.0 - 1.0;
float linearDepth = (2.0 * near * far) / (far + near - ndc * (far - near));
float near = 0.1; 
float far  = 100.0;
	
float LinearizeDepth(float depth) 
{
	float z = depth * 2.0 - 1.0; // back to NDC 
	return (2.0 * near * far) / (far + near - z * (far - near));	
}

void main()
{
	float depth = LinearizeDepth(gl_FragCoord.z) / far;
    FragColor = vec4(vec3(gl_FragCoord.z), 1.0);
}