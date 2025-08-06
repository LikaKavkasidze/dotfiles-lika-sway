USERNAME=$(whoami)
# Create Downloads directory (permanently symlinked to tmpfs)
mkdir -p /tmp/Downloads-$USERNAME
ssh-agent -s > ~/.ssh_agent_env

if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "${XDG_VTNR}" -lt 3 ]; then
	# Start Sway
	exec sway &> /tmp/sway-$USERNAME.log
else
	if [ -f ~/.bashrc ]; then
		. ~/.bashrc
	fi
fi

