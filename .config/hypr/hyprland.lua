# This config is a STUB! This should never be generated.
# Use the default lua config from https://github.com/hyprwm/Hyprland/blob/main/example/hyprland.lua


$fileManager = nautilus
$wallpaper = awww-daemon
$terminal = kitty
$mainMod = SUPER
$fnBar = SUPER
$menu = wofi

exec-once = $wallpaper > /dev/null 2>&1
exec-once = waybar

		# - Atajos de teclado - #

bind = $mainMod, Q, exec, $terminal
bind = $mainMod, C, killactive,
bind = $mainMod, F, exec, firefox
bind = $mainMod, M, exec, command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit
bind = $mainMod, E, exec, $fileManager
bind = $mainMod, V, togglefloating,
bind = $mainMod, R, exec, $menu
bind = $mainMod, S, exec, env DISABLE_WAYLAND=1 flatpak run org.vinegarhq.Sober
bind = $mainMod, SPACE, exec, pkill wofi || wofi --show drun
bind = , Print, exec, hyprshot -m output --clipboard-only

	# - configuracion fn - #
bindel = $mainMod, F1, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
bindel = $mainMod, F3, exec, wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+
bindel = $mainMod, F2, exec, wpctl set-volume -l 0.0 @DEFAULT_AUDIO_SINK@ 5%-
bind = $mainMod, F9, exec, command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit
bindel = $mainMod, F11, exec, brightnessctl set 10%-
bindel = $mainMod, F12, exec, brightnessctl set +10%

	# - Configuracion de workspace - #
gesture = 3, horizontal, workspace
bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10
bind = $mainMod SHIFT, 1, movetoworkspace, 1
bind = $mainMod SHIFT, 2, movetoworkspace, 2
bind = $mainMod SHIFT, 3, movetoworkspace, 3
bind = $mainMod SHIFT, 4, movetoworkspace, 4
bind = $mainMod SHIFT, 5, movetoworkspace, 5
bind = $mainMod SHIFT, 6, movetoworkspace, 6
bind = $mainMod SHIFT, 7, movetoworkspace, 7
bind = $mainMod SHIFT, 8, movetoworkspace, 8
bind = $mainMod SHIFT, 9, movetoworkspace, 9
bind = $mainMod SHIFT, 0, movetoworkspace, 10

		##########################################
		## Configuracion de teclado y toutchpad ##
		##########################################

input {
    kb_layout = latam    # Cambia a 'es' si tu teclado es de España
    kb_variant =
    kb_model =
    kb_options =
    kb_rules =
    follow_mouse = 1
    touchpad {
        natural_scroll = true  # Sentido scroll toutchpad
    }
}



		#######################################
		## Ajuste de ambiente (grabar y mas) ##
		#######################################

env = XCURSOR_SIZE, 20
env = HYPRCURSOR_SIZE, 20
env = XDG_CURRENT_DESKTOP, Hyprland
env = XDG_SESSION_DESKTOP, Hyprland
env = XDG_SESSION_TYPE, wayland
env = MOZ_ENABLE_WAYLAND, 1



		#################################
		##    Comportamiento visual    ##
		#################################

decoration {
    rounding = 20
}

misc {
    disable_hyprland_logo = true
    disable_splash_rendering = true
    force_default_wallpaper = 0
    background_color = 0x000000
}
