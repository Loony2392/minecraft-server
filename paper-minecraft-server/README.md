# Paper Minecraft Server

Dieses Repository enthält die notwendigen Dateien und Konfigurationen für einen Paper Minecraft Server. Hier finden Sie Anleitungen zur Einrichtung, Nutzung und Verwaltung des Servers sowie Informationen zu den verwendeten Plugins und Skripten.

## Projektstruktur

- **plugins/**: Enthält Plugins, die für den Server verwendet werden. Weitere Informationen finden Sie in der `plugins/README.md`.
- **config/**: Beinhaltet die Konfigurationsdateien des Servers. Details zur Anpassung der Einstellungen sind in der `config/README.md` zu finden.
- **scripts/**: Beinhaltet Skripte zur Verwaltung des Servers, einschließlich des Update-Skripts `update.sh`. Eine Übersicht über die Skripte finden Sie in der `scripts/README.md`.
- **.github/workflows/**: Enthält die GitHub Actions Workflow-Datei `release.yml`, die für die automatisierte Erstellung von Releases verantwortlich ist.
- **server.jar**: Die ausführbare Datei des Paper Minecraft Servers, die benötigt wird, um den Server zu starten.

## Einrichtung

1. Klonen Sie das Repository auf Ihren Server.
2. Stellen Sie sicher, dass Sie die erforderlichen Abhängigkeiten installiert haben.
3. Passen Sie die Konfiguration in den Dateien im `config/`-Verzeichnis an.
4. Installieren Sie die gewünschten Plugins im `plugins/`-Verzeichnis.
5. Führen Sie das Skript `scripts/update.sh` aus, um den Server zu starten oder zu aktualisieren.

## Automatische Updates

Das Projekt ist so konfiguriert, dass einmal pro Woche ein Release erstellt wird. Dies ermöglicht es, den Server und die Plugins automatisch zu aktualisieren. Stellen Sie sicher, dass der `apt update`-Befehl auf Ihrem Linux-Server korrekt konfiguriert ist, um die neuesten Versionen zu installieren.

Für weitere Informationen und spezifische Anleitungen, konsultieren Sie bitte die entsprechenden `README.md`-Dateien in den jeweiligen Verzeichnissen.