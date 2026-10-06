#!/usr/bin/env bash
# Instala dependências do projeto DOG-IA no Ubuntu 24.04 + ROS 2 Jazzy.
set -euo pipefail
sudo apt update
sudo apt install -y build-essential git curl wget mesa-utils python3-pip software-properties-common \
  ros-jazzy-desktop ros-dev-tools \
  ros-jazzy-ros-gz \
  ros-jazzy-xacro ros-jazzy-joint-state-publisher-gui ros-jazzy-teleop-twist-keyboard \
  ros-jazzy-nav2-bringup ros-jazzy-navigation2 ros-jazzy-slam-toolbox \
  ros-jazzy-cv-bridge python3-opencv python3-colcon-common-extensions
