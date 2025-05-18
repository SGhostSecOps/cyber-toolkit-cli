# 🛠️ Cyber Toolkit CLI

Un toolkit interactif en ligne de commande (CLI) pour installer rapidement les outils de cybersécurité les plus utilisés.

---

## 🚀 Fonctionnalités

- Menu interactif en `whiptail`
- Installation automatique des outils sur Debian 10 / 11 / 12
- Compatible VM, serveurs cloud, WSL et environnements locaux

---
| 🛠️ Outil                   | 📋 Description                                                                                    | 💡 Exemple concret                                                                                                                                                                                                              |
| --------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **nmap**                    | Scanner les ports ouverts, services, OS et détecter les failles potentielles sur un hôte distant. | 🔍 *Scanner un serveur web pour détecter les ports ouverts et les services actifs :*<br>`nmap -sV -A 192.168.1.10`<br>→ Montre les ports, les services (Apache, SSH, etc.), leur version et parfois des vulnérabilités connues. |
| **wireshark**               | Analyser le trafic réseau en profondeur (paquets DNS, HTTP, FTP, etc.).                           | 🔐 *Surveiller si un mot de passe est envoyé en clair sur un réseau non sécurisé :*<br>Lancer Wireshark → Démarrer la capture sur l'interface réseau → Filtrer avec `http` → Chercher les credentials dans les paquets.         |
| **net-tools**               | Fournit `ifconfig`, `netstat`, `route` pour diagnostiquer le réseau.                              | 🧭 *Afficher l'adresse IP de la machine :*<br>`ifconfig`<br>→ Montre IP locale, interfaces actives, etc.                                                                                                                        |
| **theHarvester**            | Récupère les e-mails, sous-domaines, noms d’utilisateurs à partir de sources publiques.           | 🕵️ *Lister les emails trouvés d’un domaine cible :*<br>`theHarvester -d example.com -b google`<br>→ Affiche les e-mails et les sous-domaines indexés sur Google.                                                               |
| **bettercap**               | Attaques MITM, sniffing, spoofing, manipulation de trafic.                                        | 🧠 *Espionner le trafic d’un utilisateur sur le réseau local :*<br>`sudo bettercap -iface eth0`<br>→ Active le sniffing et montre les requêtes HTTP, les DNS, etc.                                                              |
| **sqlmap**                  | Exploite automatiquement les failles SQLi (injection SQL) sur un site web.                        | 💥 *Tester un site vulnérable à l'injection SQL :*<br>`sqlmap -u "http://testphp.vulnweb.com/listproducts.php?cat=1" --batch`<br>→ Tente d'extraire les bases de données si la faille est présente.                             |
| **nikto**                   | Scanner un serveur web pour des vulnérabilités connues.                                           | 🔎 *Rechercher les failles connues sur un site web :*<br>`nikto -h http://example.com`<br>→ Vérifie la présence de pages admin, fichiers sensibles, headers mal configurés, etc.                                                |
| **metasploit (msfconsole)** | Utilise des exploits connus pour compromettre une cible vulnérable.                               | 🛠️ *Scanner une cible avec un module Metasploit :*<br>`msfconsole` → `search vsftpd` → `use exploit/unix/ftp/vsftpd_234_backdoor`<br>→ Lancer un exploit sur un FTP vulnérable.                                                |


### ⚙️ Prérequis

```bash
sudo apt update && sudo apt install -y whiptail curl git python3-pip
