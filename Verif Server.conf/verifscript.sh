#!/bin/bash

# Définir les variables
fichier="server.conf"                  # Nom du fichier à télécharger et à traiter
repo_url="https://github.com/Benji-Nk/Tps_ODC.git" # URL du dépôt Git
local_dir="/home/ec2-user" # Chemin d'accès au dossier local

# Vérifier si le fichier existe dans le dossier local
if [ ! -f "$local_dir/$fichier" ]; then
  # Télécharger le fichier depuis le dépôt Git
  echo "Le fichier '$fichier' n'a pas été trouvé dans le dossier local. Téléchargement depuis le dépôt Git..."
  git archive --format=tar --output="$local_dir/server.conf.tar" HEAD $fichier
  tar -xf "$local_dir/server.conf.tar" -C "$local_dir"
  rm "$local_dir/server.conf.tar"
  echo "Téléchargement du fichier '$fichier' terminé."
fi
