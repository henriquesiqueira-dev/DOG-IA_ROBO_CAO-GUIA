# Escopo — DOG-IA: Robô Cão-Guia Urbano de Inteligência Assistiva

**Disciplina:** Robótica Móvel Inteligente · **Avaliações:** AC-3 (Fase 1) e AC-4 (Fase 2) · **Grupo:** _preencher_

## 1. Problema
Pessoas com deficiência visual enfrentam riscos na mobilidade urbana: obstáculos suspensos, buracos e travessias sem sinalização acessível. Cães-guia são escassos e caros.

## 2. Objetivo
Desenvolver, em ambiente simulado, um protótipo de robô guia autônomo que atua à frente do usuário e o orienta ao longo do percurso.

## 3. Missões do robô
1. Navegar e mapear a cidade/calçadas de forma autônoma e segura (SLAM Toolbox + Nav2, raio de inflação para distância de segurança).
2. Detectar obstáculos em 3D, especialmente suspensos e buracos (câmera RGB-D inclinada + LiDAR 2D).
3. Reconhecer sinalização urbana: faixa de pedestres e cor do semáforo via visão computacional (OpenCV + cv_bridge); não cruzar com sinal vermelho.
4. Emitir alertas de voz/som em tempo real (Text-to-Speech), p. ex. "Sinal vermelho, aguarde na calçada", "Em frente em 5 metros", "Obstáculo suspenso detectado".

## 4. Escopo técnico
- Ubuntu 24.04 (WSL2/WSLg), ROS 2 Jazzy, Gazebo (gz sim), RViz2.
- Pacotes ROS 2 em Python, modelos Xacro/URDF, `.launch.py`, configuração Nav2.
- Robô diferencial (rodas motrizes + roda boba), câmera RGB-D, LiDAR 2D.
- Repositório Git com todo o código.

## 5. Fora de escopo
Hardware real, GPS/navegação em vias públicas reais, tráfego dinâmico complexo.

## 6. Entregáveis
1. Arquitetura (nós, tópicos, serviços, ações, TF2) — `docs/arquitetura/`
2. Código-fonte — `src/`
3. Relatório técnico — `docs/`
4. Vídeo de demonstração (até 3 min)
5. Apresentação em sala (até 10 min, 30/11)

## 7. Cronograma
| Data | Entrega | Pontos |
|---|---|---|
| 05/10 | Setup do ambiente, repo, escopo | 0,25 |
| 26/10 | Xacro/URDF + sensores + plugins Gazebo | 0,25 |
| 09/11 | SLAM + Nav2 + 1ª versão da documentação | 0,50 |
| 16/11 | Nó de visão (semáforo/faixa) | 0,25 |
| 23/11 | Nó TTS, vídeo e relatório | 0,25 |
| 30/11 | Apresentação final ao vivo | 0,50 |

## 8. Divisão de papéis (sugestão)
| Papel | Responsável |
|---|---|
| Modelagem/Simulação (Xacro, Gazebo) | _preencher_ |
| Navegação (SLAM, Nav2) | _preencher_ |
| Visão computacional | _preencher_ |
| HRI/Áudio + documentação | _preencher_ |

## 9. Riscos
- Desempenho gráfico no WSLg → fallback `LIBGL_ALWAYS_SOFTWARE=1`.
- Diferenças Humble/Jazzy em tutoriais → usar documentação Jazzy.
- Integração Gazebo↔ROS (ros_gz_bridge) → validar tópicos cedo.
