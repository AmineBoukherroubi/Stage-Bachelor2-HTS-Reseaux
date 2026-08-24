#!/bin/bash
# --------------------------------------------------------
# Script d'audit du réseau de Vidéosurveillance (VLAN 30)
# Auteur : Amine Boukherroubi 
# --------------------------------------------------------

echo "================================================="
echo "   VERIFICATION DES CAMERAS IP - VLAN 30 (CCTV)  "
echo "================================================="

# Boucle pour pinger les adresses IP des caméras (de 192.168.30.10 à 192.168.30.15)
for ip in {10..15}
do
    ping -c 1 -W 1 192.168.30.$ip > /dev/null 2>&1
    
    if [ $? -eq 0 ]; then
        echo "[ OK ] Camera 192.168.30.$ip est EN LIGNE"
    else
        echo "[ KO ] ERREUR : Camera 192.168.30.$ip est HORS LIGNE (Verifier PoE ou Câblage)"
    fi
done

echo "================================================="
echo "                 AUDIT TERMINE                   "
echo "================================================="
