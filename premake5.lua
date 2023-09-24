project "ImGui"
    kind "StaticLib" -- might change to dll soon.
    language "C++"
    cppdialect "C++20"
    
    location "../../solutions/%{prj.name}"
    
    local buildname = "%{prj.name}_%{cfg.buildcfg}"
    local solutionlocations = "../../solutions/%{prj.name}"
    
    local builddir = (solutionlocations.. "/bin/" .. buildname)
	local intermediate = (solutionlocations.. "/intermediate/" .. buildname)
    
    targetdir (builddir)
    objdir (intermediate)
    
    files
    {
        "imgui.h",
        "imgui.cpp",
        "imconfig.h",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imgui_tables.cpp",
        "imgui_demo.cpp"
    }
    
    filter "configurations:Debug"
        runtime "Debug"
        defines 
        {
            "Debug"
        }
        symbols "On"
        
    filter "configurations:Release"
        runtime "Release"
        defines 
        {
            "Release"
        }
        optimize "On"