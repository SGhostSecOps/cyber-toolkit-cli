
# 🔐 Script d'installation d'outils de cybersécurité

Ce script Bash interactif installe une sélection d’outils de cybersécurité populaires, utiles pour les tests d’intrusion, l’analyse réseau et l’OSINT.

## 🚀 Utilisation

Après avoir cloné ce dépôt :

```bash
chmod +x script.sh
./script.sh
```

Une interface CLI stylée (whiptail/dialog) apparaîtra pour te guider dans l’installation des outils.

---

## 🛠️ Outils installés et exemples d'utilisation

| 🛠️ Outil | 📋 Description | 💡 Exemple concret |
|---------|----------------|-------------------|
| **nmap** | Scanner les ports ouverts, services, OS et détecter les failles potentielles sur un hôte distant. | 🔍 *Scanner un serveur web :*<br>`nmap -sV -A 192.168.1.10`<br>→ Ports, services (Apache, SSH...), version, vulnérabilités. |
| **wireshark** | Analyser le trafic réseau (DNS, HTTP, FTP…). | 🔐 *Voir les paquets d’un réseau non chiffré :*<br>Capture → Filtre `http` → Identifiants détectables. |
| **net-tools** | Fournit `ifconfig`, `netstat`, `route` pour les diagnostics réseau. | 🧭 *Afficher l’IP locale :*<br>`ifconfig` |
| **theHarvester** | Récupère des e-mails, sous-domaines et utilisateurs publics. | 🕵️ *Rechercher des données publiques :*<br>`theHarvester -d example.com -b google` |
| **bettercap** | Sniffing, spoofing, manipulation MITM. | 🧠 *Intercepter le trafic local :*<br>`sudo bettercap -iface eth0` |
| **sqlmap** | Exploite automatiquement les failles d'injection SQL (SQLi). | 💥 *Test d’un site vulnérable :*<br>`sqlmap -u "http://testphp.vulnweb.com/listproducts.php?cat=1" --batch` |
| **nikto** | Scanner les vulnérabilités web connues. | 🔎 *Tester un serveur web :*<br>`nikto -h http://example.com` |
| **metasploit** | Plateforme d’exploitation d’exploits connus. | 🛠️ *Utiliser un exploit :*<br>`msfconsole` → `use exploit/unix/ftp/vsftpd_234_backdoor` |

---

## 📌 Remarques

- Ce script est destiné à des environnements de test/laboratoire.
- Utilisation responsable uniquement — pour l’éducation et la recherche.

