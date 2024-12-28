if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -lt 3 ]; then
	USERNAME=$(whoami)
	# Create Downloads directory (permanently symlinked to tmpfs)
	mkdir -p /tmp/Downloads-$USERNAME
	# Start Sway
	exec sway &> /tmp/sway-$USERNAME.log
fi

