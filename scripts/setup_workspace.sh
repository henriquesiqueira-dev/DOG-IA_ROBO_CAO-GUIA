#!/usr/bin/env bash
# Cria ~/ros2_ws, linka este repo em src/, compila e configura bash e/ou zsh.
set -euo pipefail
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
mkdir -p ~/ros2_ws/src
ln -sfn "$REPO" ~/ros2_ws/src/DOG-IA_ROBO_CAO-GUIA

add_line() { grep -qxF "$2" "$1" 2>/dev/null || echo "$2" >> "$1"; }

add_line ~/.bashrc "source /opt/ros/jazzy/setup.bash"
add_line ~/.bashrc "source ~/ros2_ws/install/setup.bash"
if command -v zsh >/dev/null; then
  add_line ~/.zshrc "source /opt/ros/jazzy/setup.zsh"
  add_line ~/.zshrc "source ~/ros2_ws/install/setup.zsh"
fi

set +u  # setup.bash do ROS usa variaveis nao definidas
source /opt/ros/jazzy/setup.bash
set -u
cd ~/ros2_ws && colcon build
