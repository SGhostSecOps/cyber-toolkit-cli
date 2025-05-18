# 🛠️ Cyber Toolkit CLI

Un toolkit interactif en ligne de commande (CLI) pour installer rapidement les outils de cybersécurité les plus utilisés.

---

## 🚀 Fonctionnalités

- Menu interactif en `whiptail`
- Installation automatique des outils sur Debian 10 / 11 / 12
- Compatible VM, serveurs cloud, WSL et environnements locaux

---

## 🧰 Outils disponibles

| Outil         | Description                                 |
|---------------|---------------------------------------------|
| **nmap**       | Scanner réseau et détection de ports       |
| **wireshark**  | Analyse des paquets réseau en profondeur   |
| **net-tools**  | Utilitaires réseaux classiques (`ifconfig`) |
| **theHarvester** | Outil d’OSINT (emails, domaines, etc.)   |
| **bettercap**  | Attaques MITM, sniffing et injections      |
| **sqlmap**     | Tests d'injections SQL automatisés         |
| **nikto**      | Scanner de vulnérabilités Web              |
| **metasploit** | Framework d’exploitation et de test d’intrusion |

---

## 📦 Installation et usage

### ⚙️ Prérequis

```bash
sudo apt update && sudo apt install -y whiptail curl git python3-pip
