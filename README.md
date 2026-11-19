# Offline Posts App (Hive)

 using Flutter and Hive to cache posts locally and save favorite posts.

## What it does
- Fetches posts from `jsonplaceholder.typicode.com/posts` and caches them with Hive (`postsBox`).
- Allows saving and removing favorite posts in a separate box (`favoritesBox`).
- Shows cached data when offline and handles empty or error states.

## Run locally
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run

## Screenshots
### 1. Posts Screen (Online & Favorited Stars)
![Posts Screen](screenshots/01_posts_screen.png)


### 2. Favorites Screen (Populated)
![Favorites Screen](screenshots/02_favorites_screen.png)

### 3. Favorites Screen (Empty State - "No favorites yet")
![Favorites Empty](screenshots/03_favorites_empty.png)

### 4. Offline / Airplane Mode Test (App Restarted Without Internet)
![Offline Mode](screenshots/04_offline_mode.png)
