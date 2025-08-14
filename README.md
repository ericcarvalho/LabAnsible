# 🧪 Lab Ansible + FreeBSD: Provisionamento de DNS Autoritativo

Este repositório contém um laboratório automatizado utilizando **Ansible** para provisionar servidores **FreeBSD** com um serviço de **DNS autoritativo**. Ideal para testes, aprendizado ou como base para ambientes de produção.

## 📌 Objetivo

Automatizar a instalação e configuração de um servidor DNS autoritativo em FreeBSD usando Ansible, com foco em:

- Infraestrutura como código (IaC)
- Reprodutibilidade e escalabilidade
- Boas práticas de segurança e organização

## 🛠️ Tecnologias Utilizadas

- [Ansible](https://www.ansible.com/)
- [FreeBSD](https://www.freebsd.org/)
- [BIND](https://www.isc.org/bind/) (ou outro software DNS autoritativo)
- VirtualBox / Vagrant / QEMU (opcional para testes locais)

## 📁 Estrutura do Projeto
ansible-lab-dns/
├── inventory/
│   └── hosts.yml
├── playbooks/
│   └── dns.yml
├── roles/
│   └── dns/
│       ├── defaults/
│       ├── tasks/
│       └── templates/
├── vars/
│   └── dns_vars.yml
└── README.md

## 🚀 Como Usar

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/ansible-lab-dns.git
   cd ansible-lab-dns

   ansible-playbook -i inventory/hosts.yml playbooks/dns.yml

   📚 Funcionalidades
- Instalação automática do BIND (ou outro servidor DNS)
- Configuração de zonas autoritativas
- Criação de arquivos de zona com templates Jinja2
- Aplicação de boas práticas de segurança (permissões, chroot, etc.)
🧠 Requisitos
- Ansible 2.10+
- Acesso SSH aos hosts FreeBSD
- Python instalado nos hosts (pode ser configurado via bootstrap)
📦 Futuras Melhorias
- Suporte a DNSSEC
- Integração com Let’s Encrypt para DNS over TLS
- Testes automatizados com Molecule
- Interface web para gerenciamento das zonas
📄 Licença
Este projeto está licenciado sob a MIT License.

💬 Dúvidas ou sugestões? Sinta-se à vontade para abrir uma issue ou enviar um pull request!
