# This config is a STUB! This should never be generated.
# Use the default lua config from https://github.com/hyprwm/Hyprland/blob/main/example/hyprland.lua


local mainMod = "SUPER"
local wallpaper = "awww-daemon"
local fileManager = "nautilus"
local terminal = "kitty"
local menu = "wofi"


-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("awww-daemon > /dev/null 2>&1")
    hl.exec_cmd("waybar")
end)


-- - Atajos de teclado - #

hl.bind(mainMod .. " + " .. "M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit"))
hl.bind(mainMod .. " + " .. "C", hl.dsp.window.close())
hl.bind(mainMod .. " + " .. "P", hl.dsp.exec_cmd("discord"))
hl.bind(mainMod .. " + " .. "F", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. " + " .. "V", hl.dsp.window.float())
hl.bind(mainMod .. " + " .. "R", hl.dsp.exec_cmd("wofi"))
hl.bind(mainMod .. " + " .. "Q", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + " .. "E", hl.dsp.exec_cmd("nautilus"))
hl.bind(mainMod .. " + " .. "SPACE", hl.dsp.exec_cmd("pkill wofi || wofi --show drun"))
hl.bind("Print", hl.dsp.exec_cmd("hyprshot -m output --clipboard-only"))


-- Atajo para abrir el globo selector de wallpapers en cuadrícula
hl.bind(mainMod .. " + " .. "TAB", hl.dsp.exec_cmd("~/.config/wallpaper-selector/toggle-selector.sh"))

-- - configuracion fn - #
hl.bind(mainMod .. " + " .. "F9", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit"))
hl.bind(mainMod .. " + " .. "F6", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind(mainMod .. " + " .. "F4", hl.dsp.exec_cmd("wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 10%+"), { locked = true })
hl.bind(mainMod .. " + " .. "F5", hl.dsp.exec_cmd("wpctl set-volume -l 0.0 @DEFAULT_AUDIO_SINK@ 10%-"), { locked = true })




-- - Configuracion de workspace - #

-- TODO: manual review: gesture = 3, "horizontal", "workspace"

hl.bind(mainMod .. " + " .. 1, hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + " .. 2, hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + " .. 3, hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + " .. 4, hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + " .. 5, hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + " .. 6, hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + " .. 7, hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + " .. 8, hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + " .. 9, hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + " .. 0, hl.dsp.focus({ workspace = 10 }))


hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))



-- - Configuracion de monitores- #

--Monitor Principal
hl.monitor({
	output   = "DP-1",
	mode     = "1920x1080@179.98Hz",
	position = "0x0",
	scale    = 1,
})

--Monitor grande
--hl.monitor({
--    output   = "HDMI-A-2",
--    mode     = "1680x1050@59.95",
--    position = "1920x0",
--    scale    = 1,
--})

hl.workspace_rule({
    workspace = 1,
    monitor = "DP-1",
})

--hl.workspace_rule({
--    workspace = 2,
--    monitor = "HDMI-A-2",
--})





--		#######################################
--		## Ajuste de ambiente (grabar y mas) ##
--		#######################################

hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("WLR_NO_HARDWARE_CURSORS", "1")
hl.config({
    misc = {
        vrr = 1,
    }
})



hl.env("XCURSOR_SIZE", 20)
hl.env("HYPRCURSOR_SIZE", 20)
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("MOZ_ENABLE_WAYLAND", 1)




--		#################################
--		##    Comportamiento visual    ##
--		#################################


hl.config({
    decoration = {
        rounding = 10,
    },
})

hl.config({
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        force_default_wallpaper = 0,
        background_color = 0x000000,
    },
})




--		#################################
--		##    Configuracion de Apps    ##
--		#################################


-- Window rules wallpaper-selector
hl.window_rule({
    match = { class = "python3", title = "wallpaper-selector" },
    float = true,
    center = true,
    opacity = "0.92 0.92"
})
