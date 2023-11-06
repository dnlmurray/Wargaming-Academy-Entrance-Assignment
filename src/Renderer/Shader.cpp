#include <sstream>
#include <fstream>
#include <iostream>

#include "Shader.h"

#define DEBUG

namespace Renderer
{
	Shader::Shader(const std::string& filepath)
	{
		ShaderProgramSource source;
		ParseShader(source, filepath);
		CreateShader(source.vertexShaderSource, source.fragmentShaderSource);

		glUseProgram(m_id);
	}

	Shader::~Shader()
	{
		glDeleteProgram(m_id);
	}

	void Shader::Bind() const
	{
		glUseProgram(m_id);
	}

	void Shader::Unbind() const
	{
		glUseProgram(0);
	}

	void Shader::ParseShader(ShaderProgramSource& source, const std::string& filepath)
	{
		std::ifstream stream(filepath);
		std::string line;
		std::stringstream ss[2];
		ShaderType type = NONE;

		while (getline(stream, line))
		{
			if (line.find("#shader") != std::string::npos)
			{
				if (line.find("vertex") != std::string::npos)
					type = VERTEX;
				else if (line.find("fragment") != std::string::npos)
					type = FRAGMENT;
			}
			else
			{
				ss[(i8)type] << line << '\n';
			}
		}

		source = { ss[0].str(), ss[1].str() };
	}

	void Shader::CreateShader(const std::string& vertexShader, const std::string& fragmentShader)
	{
		// create a shader program
		m_id = glCreateProgram();
		u32 vs = CompileShader(GL_VERTEX_SHADER, vertexShader);
		u32 fs = CompileShader(GL_FRAGMENT_SHADER, fragmentShader);

		glAttachShader(m_id, vs);
		glAttachShader(m_id, fs);

		glLinkProgram(m_id);

		glValidateProgram(m_id);

		glDeleteShader(vs);
		glDeleteShader(fs);
	}

	u32 Shader::CompileShader(u32 type, const std::string& source)
	{
		u32 shaderID = glCreateShader(type);
		const char* src = source.c_str();
		glShaderSource(shaderID, 1, &src, nullptr);
		glCompileShader(shaderID);

		#ifdef DEBUG
		i32 result;
		glGetShaderiv(shaderID, GL_COMPILE_STATUS, &result);
		std::cout << (type == GL_VERTEX_SHADER ? "vertex" : "fragment") << " shader compile status: " << result << std::endl;
		if (result == GL_FALSE)
		{
			int length;
			glGetShaderiv(shaderID, GL_INFO_LOG_LENGTH, &length);
			char* message = (char*)alloca(length * sizeof(char));
			glGetShaderInfoLog(shaderID, length, &length, message);
			std::cout
				<< "Failed to compile "
				<< (type == GL_VERTEX_SHADER ? "vertex" : "fragment")
				<< "shader"
				<< std::endl;
			std::cout << message << std::endl;
			glDeleteShader(shaderID);
			return 0;
		}
		#endif // DEBUG


		return shaderID;
	}
}