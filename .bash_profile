if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -lt 3 ]; then
	exec sway &> /tmp/sway-$(whoami).log
fi

