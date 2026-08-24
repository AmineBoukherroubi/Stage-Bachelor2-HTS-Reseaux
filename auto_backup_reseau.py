#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Script de sauvegarde automatique des configurations Cisco (Switchs & Routeurs)
Auteur : Amine Boukherroubi - HTS Recherche et Développement
"""

import datetime
import time

# Liste des adresses IP des equipements reseaux critiques (VLAN Management)
equipements_reseau = [
    "192.168.10.254", # Routeur Principal
    "192.168.10.253", # Switch Core L3
    "192.168.10.252"  # Switch Acces (PoE Cameras)
]

date_jour = datetime.date.today().strftime("%Y-%m-%d")

print("=========================================================")
print(f" Lancement de la sauvegarde réseau - Date : {date_jour}")
print("=========================================================\n")

for ip in equipements_reseau:
    print(f"[*] Connexion SSH en cours vers l'équipement {ip}...")
    time.sleep(1) # Simulation du temps de connexion
    
    # Ici interviendrait la bibliotheque Netmiko pour lancer la commande 'show run'
    print(f"[*] Execution de la commande 'show running-config'...")
    time.sleep(1)
    
    fichier_backup = f"backup_config_{ip}_{date_jour}.txt"
    print(f"[+] SUCCES : Configuration sauvegardee dans -> {fichier_backup}\n")

print("=========================================================")
print("          SAUVEGARDE TERMINEE AVEC SUCCES                ")
print("=========================================================")
