#!/bin/bash

# Répertoire contenant les logs
LOG_DIR="./logs"

# Taille maximale des logs (2 Ko)
MAX_LOG_SIZE=2048

# Parcourir tous les fichiers de log dans le répertoire
for log_file in "$LOG_DIR"/*.log; do
    # Vérifier la taille du fichier de log
    if [ -f "$log_file" ] && [ "$(du -b "$log_file" | cut -f1)" -ge $MAX_LOG_SIZE ]; then
        # Créer un fichier de backup avec le contenu du log
        backup_file="$LOG_DIR/$(basename "$log_file" .log)_$(date +"%Y-%m-%d_%H-%M-%S").log"
        cp "$log_file" "$backup_file"

        # Vider le fichier de log
        > "$log_file"
        echo "Log $log_file sauvegardé et vidé."
    fi
done