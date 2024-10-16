#ifndef SHADER_H
#define SHADER_H

#include <glad/glad.h>
#include <string>

class Shader
{
public:
	unsigned int ID;

	// Read and build the shader
	Shader(const char* vertexPath, const char* fragmentPath);
	// Use the shader
	void use();
	void setBool(const std::string& name, bool value) const;
	void setInt(const std::string& name, int value) const;
	void setFloat(const std::string& name, float value) const;
};

#endif // SHADER_H