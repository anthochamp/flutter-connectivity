## 0.3.0

- Update connectivity_plus package dependency restriction to ^6.0.0
- Update example dependencies and index.html

## 0.2.1

- Upgrade ac_lints package to 0.3.1

## 0.2.0

- Update connectivity_plus package dependency restriction to >=6.0.0

BREAKING CHANGES:

- `ConnectivityPlusState` type has changed from `ConnectivityResult` to `List<ConnectivityResult>`
- [connectivity_plus 6.0.1](https://pub.dev/packages/connectivity_plus/changelog#601) breaking changes.

## 0.1.3

- Upgrade ac_lints package to 0.3.0

## 0.1.2

- Upgrade ac_inet_connectivity_checker package to 0.1.4

## 0.1.1

- Fix: Avoid unnecessary Internet connectivity status flickering (internet -> connected -> internet) on forced app resume update (Android only). Would only happen when connected to Internet before app was put in background, and still connected to Internet when app was resumed.
- Update LICENSE's copyright to include contributors and use SPDX file header
- Widen SDK environment requirement to include Dart 3 versions
- Upgrade ac_dart_essentials package to 0.2.1
- Upgrade ac_lints package to 0.2.1
- Remove restriction for connectivity_plus's package version

## 0.1.0

- Initial release
