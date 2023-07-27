project "miniaudio"
	kind "StaticLib"
	language "C"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"miniaudio.h"
	}

	filter "system:windows"
		systemversion "latest"
		cdialect "C17"
		staticruntime "off"
		
	filter "system:linux"
		pic "On"
		systemversion "latest"
		cdialect "C17"
		staticruntime "off"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
