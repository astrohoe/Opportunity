#version 330 core

out vec4 FragColor;

void main()
{
	vec3 result = normalize(vec3(49, 88, 206));
	FragColor = vec4(result, 1.0);
}