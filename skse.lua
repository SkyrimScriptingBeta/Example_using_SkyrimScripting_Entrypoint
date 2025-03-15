
mods_folders = os.getenv("SKYRIM_MODS_FOLDERS")

if mods_folders then
    mod_info.mods_folders = mods_folders
else
    print("SKYRIM_MODS_FOLDERS environment variable not set")
end

add_requires("skyrim-commonlib-" .. skyrim_version)
add_requires("SkyrimScripting.Entrypoint", { configs = { commonlib = "skyrim-commonlib-" .. skyrim_version } })

target("SKSE Plugin - " .. skyrim_version:upper())
    set_basename(mod_info.name .. "-" .. skyrim_version:upper())
    add_files("*.cpp")
    add_packages("skyrim-commonlib-" .. skyrim_version)
    add_rules("@skyrim-commonlib-" .. skyrim_version .. "/plugin", {
        mod_name = mod_info.name .. " (" .. skyrim_version:upper() .. ")",
        mods_folders = mod_info.mods_folders or "",
        mod_files = mod_info.mod_files,
        name = mod_info.name,
        version = mod_info.version,
        author = mod_info.author,
        email = mod_info.email
    })
    add_packages("SkyrimScripting.Entrypoint", { configs = {
        commonlib = "skyrim-commonlib-" .. skyrim_version
    }})
