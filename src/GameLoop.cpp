#include <iostream>

#include "RendererUtil.h"
#include "VertexArray.h"
#include "IndexBuffer.h"
#include "DrawCalls.h"
#include "Window.h"
#include "Shader.h"
#include "GLFW.h"
#include "Input/Input.h"

#include "GameInit.h"

#ifdef WIN64__
#include <Windows.h>
#endif

#ifdef DEBUG
#include "Renderer/Debug.h"
#endif // DEBUG

int main()
{
    #ifdef WIN64__
        FreeConsole();
    #endif

    GLFW::Init();

    // Create a windowed mode window with its OpenGL context
    std::cout << "Window is about to be created\n";
    Renderer::Window window("Minigame", 480, 480);

    glfwSetMouseButtonCallback(window.GetID(), Game::MouseButtonCallback);

    // Initialize GLEW
    if (GLEW_OK != glewInit())
    {
        std::cout << "Failed to initialize GLEW\n";
        return -1;
    }
    glewExperimental = true; // Needed for core profile

    // ********************************************************************
    // Game setup
    // ********************************************************************

    const Game::FieldProperties props(5, 5, .25f, .01f);
    Game::ScreenGrid grid(props);
    Game::GameState state(&props, &grid);

    // Conditions setup
    state.GetConditionsDataPointer()[0] = Green;
    state.GetConditionsDataPointer()[1] = Orange;
    state.GetConditionsDataPointer()[2] = Red;

    window.SetState(reinterpret_cast<void*>(&state));

    GameInit::GeneratePlayfieldGrid(grid, props);

    // **********************************************************************
    // Graphics setup
    // **********************************************************************

    // Setting up initial color values for the scene
    Color* tilecolors = new Color[props.numOfTiles];
    Color condcolors[3];
    GameInit::SetupField(state.GetTileDataPointer(), props);
    GameInit::ChangeColors(state.GetTileDataPointer(), tilecolors, props.numOfTiles);
    GameInit::ChangeColors(state.GetConditionsDataPointer(), condcolors, 3);

    // Setting up the scene to be drawn
    Vertex* playfieldVertexData = new Vertex[props.numOfTiles * 4];
    Vertex conditionsVertexData[3 * 3];
    GameInit::GenerateVertecies(GameInit::V_PLAYIFIELD, playfieldVertexData, props);
    GameInit::GenerateVertecies(GameInit::V_CONDITIONS, conditionsVertexData, props);

    u32* playfieldIndexData = new u32[props.numOfTiles * 6]; // one square tile == 6 vertecies
    GameInit::GetIndexArray(playfieldIndexData, props.numOfTiles);

    // Setting up OpenGL objects
    const u16 layoutsCount = 2;
    Renderer::VertexBufferLayout layouts[layoutsCount];
    layouts[0] = { 4, GL_FLOAT, GL_FALSE, offsetof(Vertex, id) };
    layouts[1] = { 3, GL_FLOAT, GL_FALSE, offsetof(Vertex, position) };

    Renderer::VertexArray playfieldVAO(playfieldVertexData, 6 * props.numOfTiles * sizeof(Vertex), layouts, layoutsCount, sizeof(Vertex));
    Renderer::VertexArray conditionsVAO(conditionsVertexData, 3 * 3 * sizeof(Vertex), layouts, layoutsCount, sizeof(Vertex));

    Renderer::IndexBuffer playfieldIB(playfieldIndexData, props.numOfTiles * 6);

    Renderer::Shader playfieldShader("./res/PlayfieldShader.shd");
    Renderer::Shader conditionsShader("./res/ConditionsShader.shd");

    Renderer::UnbindAll();

    // Game loop
    while (!window.WindowShouldClose())
    {
        window.ClearBufferBit();

        // Draw playfield
        playfieldShader.Bind();
        playfieldShader.SetUniform4fv("u_Tiles", (f32*)tilecolors, props.numOfTiles);
        playfieldVAO.Bind();
        playfieldIB.Bind();

        Renderer::DrawArrayElements(playfieldIB.GetCount());

        // Draw conditions
        conditionsShader.Bind();
        conditionsShader.SetUniform4fv("u_Tiles", (f32*)condcolors, 3);
        conditionsVAO.Bind();

        Renderer::DrawVertexArray(9);

        #ifdef DEBUG
            GLCheckError();
        #endif // DEBUG

        window.SwapBuffers();

        Input::WaitEvents();

        GameInit::ChangeColors(state.GetTileDataPointer(), tilecolors, props.numOfTiles);
        if (Game::CheckColumns(state)) break;
    }

    // Yup, I know, I know.
    delete[] playfieldVertexData;
    delete[] playfieldIndexData;
    delete[] tilecolors;

    return 0;
}