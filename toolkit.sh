#!/bin/bash
# ========================================================
# 🛠️ Menu interactif d'installation d'outils de cybersécurité
# Auteur : Peniel (ZeroTraceSec)
# Compatible Debian 10/11/12
# ========================================================

if [ "$EUID" -ne 0 ]; then
  echo "❌ Ce script doit être lancé en root."
  exit 1
fi

install_tool() {
  case $1 in
    "nmap")
      apt install -y nmap
      ;;
    "wireshark")
      apt install -y wireshark
      ;;
    "net-tools")
      apt install -y net-tools
      ;;
    "theHarvester")
      git clone https://github.com/laramies/theHarvester.git /opt/theHarvester
      cd /opt/theHarvester && pip install -r requirements.txt
      ln -s /opt/theHarvester/theHarvester.py /usr/local/bin/theharvester
      ;;
    "bettercap")
      apt install -y bettercap
      ;;
    "sqlmap")
      git clone --depth=1 https://github.com/sqlmapproject/sqlmap.git /opt/sqlmap
      ln -s /opt/sqlmap/sqlmap.py /usr/local/bin/sqlmap
      ;;
    "nikto")
      git clone https://github.com/sullo/nikto.git /opt/nikto
      ln -s /opt/nikto/program/nikto.pl /usr/local/bin/nikto
      ;;
    "metasploit")
      curl https://raw.githubusercontent.com/rapid7/metasploit-framework/master/msfupdate | bash
      ;;
    "exit")
      exit 0
      ;;
  esac
}

while true; do
  CHOICE=$(whiptail --title "🛠️ Cyber Toolkit - ZeroTraceSec" --menu "Choisis un outil à installer :" 20 78 12 \
  "nmap" "Scanner réseau" \
  "wireshark" "Analyse de paquets" \
  "net-tools" "Commandes ifconfig/netstat" \
  "theHarvester" "OSINT (emails, domaines...)" \
  "bettercap" "MITM + sniffing" \
  "sqlmap" "Injection SQL automatisée" \
  "nikto" "Scanner de vulnérabilités Web" \
  "metasploit" "Framework d'exploitation" \
  "exit" "Quitter le toolkit" 3>&1 1>&2 2>&3)

  install_tool "$CHOICE"
done
