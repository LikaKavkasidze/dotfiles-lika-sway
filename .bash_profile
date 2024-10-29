if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -lt 3 ]; then
	USERNAME=$(whoami)
	# Symlink Downloads directory to tmpfs
	mkdir -p /tmp/Downloads-$USERNAME
	ln -s /home/$USERNAME/Téléchargements /tmp/Downloads-$USERNAME
	# Start Sway
	exec sway &> /tmp/sway-$USERNAME.log
fi

