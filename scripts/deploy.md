# Deployment Guide

## Local
1. Copy `backend/.env.example` to `backend/.env` and set keys.
2. Run `docker compose -f infra/docker-compose.yml up --build`.
3. API docs: `http://localhost:8000/docs`.

## Flutter
1. `cd frontend`
2. `flutter pub get`
3. `flutter run`

## Firebase Setup
- Create Firebase project.
- Enable Phone Authentication.
- Add Android/iOS/Web apps and configuration files.
- Configure Firestore with collections: `users`, `chat_history`, `soil_reports`, `disease_reports`, `mandi_snapshots`.
