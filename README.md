Project Setup Steps

NOTE: We are developing on windows, for windows only

Step One - Downloading the Project
    - Navigate to "C:\" drive and create a New Directory named "Dev"
    - Clone Project from GitHub - `git hub repository link" into the directory you just created "C:\Dev\"

* you can skip this step if you already have a Visual Studio sownload, but beware, the steps that follow may not align with your version
Step Two - Downloading Visual Studio and Editor of Choice
    - Head to "https://learn.microsoft.com/en-us/visualstudio/releases/2019/release-notes"
    - Scroll down, and look for a blue button labeled "Download Community 2019"
    - Download you editor of choice 
        - Preferible VS Code, but use whatever you are most comfortable about

Step Three - Setting Microsoft Visual Compiler (vcvarsall)
    - Look for "vcvarsall.bat" file
    - Mine was in "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build"
    - Replace whichever the path you into the "shell.bat" file, in "misc/shell.bat"

Step Four - Setting up Compiler
    - Launch the windows command prompt and navigate to C:\Dev\engine\misc"
    - Run the command "shell.bat" 
        - This will allow you to compile the engine in the command line using the "cl.exe" Command. 
        - More info at "https://learn.microsoft.com/en-us/cpp/build/reference/compiler-options?view=msvc-170"
    - Navigate to "C:\Dev\engine\src" and run the "build.bat" command 
        - This should build the project into the "C:\Dev\engine\build" directory

Step Five - Running
    - Navigate to "C:\Dev\engine\build"
    - Run the "devenv platform.exe"
        - This will launch the project with Visual Studio 2019 or ask you which Version to Use.
    - On the top bar, look for the "Debug" option and click into
    - A list debug options should appear
    - Look for "platform Debug Properties" at the very bottom of the list and click it
    - A panel should pop up, and under "Parameters" look for "Working Directory" and set that to be "C:\Dev\engine\vendor"
    - Close the Panel, and look for a panel name "Start" which should have a green triangle right next to it
    - The Program should run smoothly and if it does not, just contact me, and I can work you through it.

Step Six - Debugging