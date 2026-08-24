@echo off
:: --------------------------------------------------------
:: Script de Diagnostic Rapide (Ping)
:: Auteur : Amine Boukherroubi - HTS Staging
:: --------------------------------------------------------
title Outil de Diagnostic HTS - Bouira
color 0A

echo =========================================
echo TEST DE CONNECTIVITE DES EQUIPEMENTS CRITIQUES
echo =========================================
echo.

echo Test de la Passerelle (Routeur)...
ping 192.168.10.1 -n 2

echo.
echo Test du Serveur Telephonique (IPBX)...
ping 192.168.20.5 -n 2

echo.
echo Test de l'Enregistreur Video (NVR)...
ping 192.168.30.5 -n 2

echo.
echo =========================================
echo DIAGNOSTIC TERMINE.
echo =========================================
pause
