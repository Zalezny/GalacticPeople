# BrivalRecruitmentTask

## Jak uruchomić projekt

1. Upewnij się, że masz zainstalowane:
   - Flutter SDK (>=3.8.1)
   - Dart SDK
   - (opcjonalnie) Android Studio/Xcode/VSCode do uruchamiania na emulatorze/sprzęcie
2. Pobierz zależności:
   ```sh
   flutter pub get
   ```
3. Wygeneruj pliki (jeśli to konieczne):
   ```sh
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
4. Uruchom aplikację:
   ```sh
   flutter run
   ```

### Rozwiązywanie problemów
Jeśli pojawią się błędy związane z zależnościami lub buildem, wykonaj:

- Wyczyść buildy i cache:
  ```sh
  flutter clean
  flutter pub get
  flutter pub run build_runner clean
  flutter pub run build_runner build --delete-conflicting-outputs
  ```

## Struktura projektu
Projekt korzysta ze struktury **feature-first**:

```
lib/
  core/         # warstwa narzędziowa, DI, routing, sieć, typy wspólne
  shared/
  features/
    people/
      data/         # logika dostępu do danych (API, local)
      presentation/ # UI, BLoC, widgety
  utils/
```

### Dlaczego feature-first?
- Ułatwia skalowanie projektu – każdy feature jest odseparowany.
- Pozwala na łatwe wydzielanie nowych funkcjonalności.
- Ułatwia testowanie i refaktoryzację.

### Dlaczego warstwa domain została pominięta?
W projekcie warstwa `domain` została pominięta, ponieważ:
- Projekt jest niewielki i nie wymaga rozbudowanej logiki domenowej.
- Większość logiki biznesowej znajduje się w Bloc'u.

## Wykorzystane pluginy i paczki

- **DI: get_it + injectable**
  - Automatyczna rejestracja zależności, wygodny injection przez adnotacje.
- **Routing: auto_route**
  - Deklaratywny routing, generacja tras, łatwa nawigacja.
- **Zarządzanie stanem: flutter_bloc, bloc**
  - Wzorzec BLoC, oddzielenie logiki od UI, testowalność.
- **API: dio + retrofit**
  - Dio: obsługa zapytań HTTP, interceptory, timeouty.
  - Retrofit: deklaratywne API, generacja kodu klienta.
- **Serializacja: freezed, json_serializable, json_annotation**
  - Freezed: generacja immutable modeli, union types, copyWith.
  - json_serializable: automatyczna serializacja do/z JSON.
  - json_annotation: adnotacje do serializacji.
- **Shared Preferences: shared_preferences**
  - Przechowywanie lokalnych danych (ulubione postacie).
- **Device Preview: device_preview**
  - Podgląd UI na różnych urządzeniach.

### Dev dependencies
- **build_runner** – generacja kodu
- **injectable_generator, auto_route_generator, retrofit_generator, freezed, json_serializable** – generatory kodu
- **mockito, bloc_test, flutter_test** – testy jednostkowe i mockowanie
- **flutter_lints** – linter

## Testowanie projektu

1. Uruchom wszystkie testy:
   ```sh
   flutter test
   ```
2. Przykładowe testy znajdują się w katalogu `test/`:
   - `test/remote/people_repository_test.dart` – testy repozytorium pobierającego dane z API
   - `test/local/favorites_service_test.dart` – testy serwisu ulubionych

---

Projekt był sprawdzany na różnych rozdzielczościach przy użyciu DevicePreview, ale testowany wyłącznie na systemie Android.

W razie pytań lub problemów – zapraszam do kontaktu!
