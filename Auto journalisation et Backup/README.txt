
# Gestionnaire de logs centralisé

Un script Bash simple et efficace pour gérer de manière centralisée les fichiers de logs de votre application.

## Fonctionnalités clés

- **Gestion centralisée** : le script s'applique à tous les fichiers de logs, quel que soit le langage utilisé
- **Sauvegarde automatique** : les logs dépassant une taille maximale sont sauvegardés dans des fichiers de backup
- **Nettoyage des logs** : les fichiers de log originaux sont vidés après la sauvegarde
- **Configuration flexible** : la taille maximale des logs peut être facilement ajustée

## Utilisation rapide

1. Créez un répertoire pour stocker les fichiers de logs (par exemple, `./logs`).
2. Placez le script `log-manager.sh` dans le même répertoire.
3. Ouvrez le script et ajustez la valeur de `MAX_LOG_SIZE` si nécessaire (taille maximale en octets).
4. Exécutez le script régulièrement, par exemple via un cron job :

   ```bash
   # Exécuter le script toutes les heures
   0 * * * * /chemin/vers/log-manager.sh
   ```

## Configuration

- `LOG_DIR` : le répertoire contenant les fichiers de logs (défaut : `./logs`)
- `MAX_LOG_SIZE` : la taille maximale des logs en octets (défaut : 2 Ko)

## Exemples de fichiers de backup

Lorsque le script est exécuté, les logs dépassant la taille maximale sont sauvegardés dans le répertoire `./logs` avec un nom au format `nom_du_log_YYYY-MM-DD_HH-MM-SS.log`.

Par exemple :
- `application_2023-07-07_15-30-00.log`
- `server_logs_2023-07-08_08-45-15.log`

## Contribution

Les contributions sont les bienvenues ! N'hésitez pas à soumettre des pull requests ou à ouvrir des issues si vous avez des suggestions d'amélioration.