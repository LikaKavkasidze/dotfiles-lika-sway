if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -lt 3 ]; then
	USERNAME=$(whoami)
	# Symlink Downloads directory to tmpfs
	mkdir -p /tmp/Downloads-$USERNAME
	ln -s /tmp/Downloads-$USERNAME /home/$USERNAME/Téléchargements
	# Start Sway
	exec sway &> /tmp/sway-$USERNAME.log
fi

