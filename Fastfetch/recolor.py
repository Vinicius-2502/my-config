#!/usr/bin/env python3
"""Recolore o config do fastfetch por seção, sem mexer nos ícones (glyphs).

Uso: python3 recolor.py config_original.jsonc [config_novo.jsonc]
Sem o 2º argumento, grava em <arquivo>.new
"""
import re
import sys

# Ordem das seções: SYSTEM, ENVIRONMENT, HARDWARE, COLORS
COLORS = ["cyan", "yellow", "green", "magenta"]

src = sys.argv[1]
dst = sys.argv[2] if len(sys.argv) > 2 else src + ".new"

idx = 0
out = []
with open(src, encoding="utf-8") as f:
    for line in f.read().split("\n"):
        # Divisória (├───┤) abre a próxima seção
        if re.search(r'"format":\s*"├', line):
            idx = min(idx + 1, len(COLORS) - 1)
        c = COLORS[idx]

        line = re.sub(r'("(?:outputColor|keyColor)":\s*)"[a-z_]+"', rf'\1"{c}"', line)
        line = re.sub(r'\{#[a-z_]+\}│', '{#' + c + '}│', line)
        line = line.replace('"format": "│  colors', '"format": "{#' + c + '}│  colors')
        line = re.sub(r'"output":\s*"blink_"', '"output": ""', line)
        out.append(line)

with open(dst, "w", encoding="utf-8") as f:
    f.write("\n".join(out))
print("Gerado:", dst)
