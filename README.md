# DOG-IA_ROBO_CAO-GUIA

DOG-IA — Robô Cão-Guia Urbano de Inteligência Assistiva.
Disciplina: Robótica Móvel Inteligente (Intelligent Mobile Robots) — AC-3 / AC-4, 6º semestre de Ciência da Computação de 2026.

## Integrantes

| Nome completo | R.A. |
|---|---|
| _preencher_ | _preencher_ |
| _preencher_ | _preencher_ |
| _preencher_ | _preencher_ |
| _preencher_ | _preencher_ |

## Stack

Ubuntu 24.04 (WSL2/WSLg) · ROS 2 Jazzy · Gazebo (gz sim) · RViz2 · Nav2 · SLAM Toolbox · OpenCV (cv_bridge) · Python

## Estrutura

```
docs/escopo_dog-ia_robo.md   escopo do projeto
docs/arquitetura/            diagramas (nós, tópicos, TF2)
docs/evidencias/             prints/validações por etapa
docs/email_etapa1.md         modelo do e-mail de entrega da Etapa 1
scripts/install_jazzy.sh     instala dependências ROS 2 Jazzy
scripts/validate_env.py      teste 1 de validação do ambiente
scripts/setup_workspace.sh   cria ~/ros2_ws e linka este repo em src/
src/dog_ia_description/      Xacro/URDF (26/10)
src/dog_ia_navigation/       SLAM + Nav2 (09/11)
src/dog_ia_vision/           OpenCV semáforo/faixa (16/11)
src/dog_ia_hri/              alertas de voz TTS (23/11)
```

## Como rodar o setup

```bash
bash scripts/install_jazzy.sh      # pede sudo
bash scripts/setup_workspace.sh
/usr/bin/python3 scripts/validate_env.py
gz sim        # terminal 1
rviz2         # terminal 2
```

## Cronograma

| Data | Etapa | Pontos |
|---|---|---|
| 05/10 | Setup do ambiente | 0,25 |
| 26/10 | Modelagem Xacro/URDF + sensores | 0,25 |
| 09/11 | SLAM + Nav2 | 0,50 |
| 16/11 | Visão computacional | 0,25 |
| 23/11 | HRI (voz) + vídeo + relatório | 0,25 |
| 30/11 | Apresentação final | 0,50 |

## Código
