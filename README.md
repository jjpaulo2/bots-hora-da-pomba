# Bots do servidor Hora da Pomba

[![Deploy](https://github.com/jjpaulo2/cleiton-rasta-bot/actions/workflows/deploy.yaml/badge.svg)](https://github.com/jjpaulo2/cleiton-rasta-bot/actions/workflows/deploy.yaml)

Configuração dos bots do servidor do Discord, **Hora da Pomba**. Todos os bots utilizam projetos open-source, e rodam em containers Docker. O deploy é feito com Ansible.

### Bots

| Bot | Descrição | Playbook | Repositório |
|-|-|-|-|
| Cleiton Rasta | Toca músicas do **YouTube** nas salas de áudio | [`cleiton-rasta.yaml`](./ansible/cleiton-rasta.yaml) | [eritislami/evobot](https://github.com/eritislami/evobot) |
| André Marques | Toca músicas do **Spotify** nas salas de áudio | [`andre-marques.yaml`](./ansible/andre-marques.yaml) | [codetheweb/aoede](https://github.com/codetheweb/aoede) |
