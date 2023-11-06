#ifndef H_SHADER
#define H_SHADER

#include "GL/glew.h"
#include "DataTypes.h"
#include <string>

namespace Renderer
{
	class Shader
	{
	private:
		u32 m_id;

	public:
		Shader(const std::string& filepath);
		~Shader();

		void Bind() const;
		void Unbind() const;

		inline u32 GetID() const { return m_id; }
		inline u32 GetUniformID(const char* name) const;
		inline void SetUniform4fv(const char* name, f32* data, u32 count) { glUniform4fv(glGetUniformLocation(m_id, name), count, data); }

	private:
		struct ShaderProgramSource { std::string vertexShaderSource, fragmentShaderSource; };
		enum ShaderType : i32 { NONE = -1, VERTEX = 0, FRAGMENT = 1 };

		void ParseShader(ShaderProgramSource& source, const std::string& filepath);
		void CreateShader(const std::string& vertexShader, const std::string& fragmentShader);
		u32 CompileShader(u32 type, const std::string& source);
	};

}
#endif // !H_SHADER
