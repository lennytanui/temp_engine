#include "toolkit.h"
#include "engine.cpp"
#include "platform.h"
#include <stdio.h>

#include <GLFW/glfw3.h>

int main(){
    
    // NOTE(Lenny): GLFW to be implemented here
    GLFWwindow* window;

    /* Initialize the library */
    if (!glfwInit())
        return -1;

     /* Create a windowed mode window and its OpenGL context */
    window = glfwCreateWindow(640, 480, "Hello World", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }

    /* Make the window's context current */
    glfwMakeContextCurrent(window);

    // NOTE(Lenny) : Runs only at the beginning of the program
    Setup();

    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {
        /* Render here */
        glClearColor(0, 1, 0, 1);
        glClear(GL_COLOR_BUFFER_BIT);

        
        UpdateAndRender();
        
        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();
    }

    glfwTerminate();
    return 0;
}
