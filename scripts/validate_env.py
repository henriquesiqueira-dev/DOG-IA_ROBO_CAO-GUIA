#!/usr/bin/env python3
"""Teste 1 da Etapa 1: valida rclpy, OpenCV e cv_bridge.
Rodar com o Python do sistema (nao o pyenv): /usr/bin/python3 scripts/validate_env.py
"""
import rclpy
import cv2
from cv_bridge import CvBridge

print('=' * 50)
print('[1/3] ROS 2 (rclpy): OK')
print('[2/3] Visão Computacional (OpenCV %s): OK' % cv2.__version__)
print('[3/3] Ponte ROS-OpenCV (cv_bridge): OK')
print('=' * 50)
print('AMBIENTE PYTHON PRONTO PARA O PROJETO DOG-IA!')
print('=' * 50)
