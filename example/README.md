# nhentai_dart examples

This folder contains runnable example code for the current package version.

## Available examples

- `basic.dart` — basic search and book details flow
- `hosts.dart` — fetch CDN host configuration and build image URLs
- `auth.dart` — authenticate with username/password and fetch user favorites

## Running examples

From the package root:

```bash
dart pub get
dart run example/basic.dart
```

Replace `basic.dart` with `hosts.dart` or `auth.dart` as needed.

> Note: `auth.dart` requires valid nhentai.net credentials.
