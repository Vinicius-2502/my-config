---
name: instalador
description: Instalação de programas via flatpak, snap, apt e outros. Aprimorar com base nas estruturas de pastas do sistema.
---

## Instalador

### Regras Gerais

- Sempre verificar se flatpak está disponível no sistema antes de usar
- Usar flatpak como primeiro método de instalação quando possível
- Antes de instalar, verificar se o pacote existe no flathub
- Sempre criar pasta em ~/nomedoapp após instalação bem-sucedida
- Não modificar ou excluir arquivos sensíveis do sistema
- Pedir confirmação antes de operações arriscadas (OBS2: sempre requisitar permissão do usuário antes de fazer algo minimamente arriscado)
- Registrar instalações bem-sucedidas para referência futura
- Verificar se há dependências necessárias
- Ao final da instalação, perguntar se deseja atualizar o arquivo de instalação rápida com os comandos usados
- Não modificar nada que contenha dados sensíveis ou possa quebrar o sistema
- Perguntar ao usuário qual modo de instalação deseja utilizar (flatpak, snap ou apt)
- Não exibir lista fixa de pacotes - perguntar ao usuário qual programa deseja instalar

### flatpak

```bash
# Instalar via flatpak
flatpak install <pacote> -y

# Listar apps instalados
flatpak list

# Executar app
flatpak run <pacote>
```

### Fluxo de Trabalho

1. Identificar a ferramenta a ser instalada (perguntar ao usuário)
2. Perguntar qual modo de instalação (flatpak/snap/apt)
3. Verificar disponibilidade no sistema
4. Instalar usando o método selecionado
5. Criar pasta em ~/nomedoapp se instalação for bem-sucedida
6. Perguntar ao usuário se deseja atualizar arquivo de instalação rápida
7. Atualizar o arquivo com os comandos necessários
8. Gerar relatório das ações realizadas