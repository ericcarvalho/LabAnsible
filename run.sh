#!/bin/bash

# Caminhos
INVENTORY="inventory.ini"
PLAYBOOK="playbooks/dns_freebsd.yml"
LOGFILE="ansible_run.log"

# Cores
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # Sem cor

# Função para checar dependências
check_dependencies() {
  if ! command -v ansible-playbook &> /dev/null; then
    echo -e "${RED}❌ Ansible não está instalado. Instale com: sudo apt install ansible${NC}"
    exit 1
  fi
}

# Função para checar arquivos
check_files() {
  if [ ! -f "$INVENTORY" ]; then
    echo -e "${RED}❌ Arquivo de inventário não encontrado: $INVENTORY${NC}"
    exit 1
  fi

  if [ ! -f "$PLAYBOOK" ]; then
    echo -e "${RED}❌ Playbook não encontrado: $PLAYBOOK${NC}"
    exit 1
  fi
}

# Execução principal
run_playbook() {
  echo -e "${GREEN}▶ Executando playbook: $PLAYBOOK${NC}"
  echo -e "${YELLOW}📦 Inventário: $INVENTORY${NC}"
  echo -e "${YELLOW}📝 Log: $LOGFILE${NC}"
  echo "------------------ $(date) ------------------" >> "$LOGFILE"
  ansible-playbook "$PLAYBOOK" -k -K -v | tee -a "$LOGFILE"
}

# Rodando tudo
check_dependencies
check_files
run_playbook