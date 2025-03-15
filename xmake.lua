add_rules("mode.debug", "mode.release")

set_languages("c++23")

add_repositories("SkyrimScripting https://github.com/SkyrimScripting/Packages.git")
add_repositories("SkyrimScriptingBeta https://github.com/SkyrimScriptingBeta/Packages.git")
add_repositories("MrowrLib https://github.com/MrowrLib/Packages.git")

mod_info = {
    name = "Example using SkyrimScripting.Entrypoint",
    version = "0.0.1",
    author = "Mrowr Purr",
    email = "mrowr.purr@gmail.com"
}

skyrim_version = "ae" -- ae, se, ng, vr

includes("skse.lua")
