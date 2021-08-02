if [ "$XDG_SESSION_DESKTOP" = "sway" ] || [ "$XDG_SESSION_DESKTOP" = "i3" ]
then
    # https://github.com/swaywm/sway/issues/595
    export _JAVA_AWT_WM_NONREPARENTING=1
    export JAVA_TOOL_OPTIONS='-Djdk.gtk.version=2.2'
fi
