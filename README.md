# Mini Lessons App

Eine Flutter-basierte Lern-App für kleine Lektionen.

## Über das Projekt

Diese App wurde entwickelt, um Lernende mit kurzen, effektiven Lektionen zu unterstützen.

## Features

- Interaktive Lerneinheiten
- Fortschrittsverfolgung
- Benutzerfreundliche Oberfläche
- Offline-Verfügbarkeit

## Installation

1. Stelle sicher, dass Flutter auf deinem System installiert ist
2. Klone das Repository:
```bash
git clone https://github.com/dein-username/mini_lessons_app.git




# 1. Firebase CLI installieren (falls noch nicht geschehen)
npm install -g firebase-tools

# 2. Bei Firebase anmelden
firebase login

# 3. Im Projektverzeichnis Firebase initialisieren
firebase init

# Dabei folgende Schritte durchführen:
# - Hosting auswählen
# - Projekt auswählen oder erstellen
# - public directory: build/web
# - Single-page app: Yes
# - GitHub Actions: Nach Wunsch

# 4. Flutter Web Build erstellen
flutter clean
flutter pub get
flutter build web

# 5. Deployment durchführen
firebase deploy


Wichtige Konfigurationsdateien:
firebase.json sollte so aussehen:

json


{
  "hosting": {
    "public": "build/web",
    "ignore": [
      "firebase.json",
      "**/.*",
      "**/node_modules/**"
    ],
    "rewrites": [
      {
        "source": "**",
        "destination": "/index.html"
      }
    ]
  }
}
Tipps:

Mit firebase serve kannst du den Build lokal testen
Mit firebase deploy --only hosting deployst du nur das Hosting
In der web/index.html solltest du die Firebase-Konfiguration einfügen
Für automatisches Deployment kannst du GitHub Actions nutzen
Nach erfolgreichem Deploy erhältst du eine Firebase-Hosting-URL wie: https://dein-projekt.web.app





Hier sind die drei wichtigsten Befehle zum Rebuilden einer Flutter-App:

flutter clean - Löscht die build-Ordner und temporäre Dateien
flutter pub get - Lädt alle Abhängigkeiten/Packages neu herunter
flutter run - Baut die App neu und startet sie
Optional kannst du auch flutter build verwenden, um die finale Release-Version zu erstellen, z.B.:

flutter build apk für Android
flutter build ios für iOS
flutter build web für Web

# Build mit Base-URL (für Subdirectory Hosting)
flutter build web --base-href "/dein-pfad/"

# Build im Release-Modus mit maximaler Optimierung
flutter build web --release

# Build mit CanvasKit Renderer (bessere Performance, größere Dateigröße)
flutter build web --web-renderer canvaskit

# Build mit HTML Renderer (kleinere Dateigröße, limitierte Features)
flutter build web --web-renderer html




This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.