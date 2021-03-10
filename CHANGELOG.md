# Changelog

All notable changes to this project will be documented in this file.

## [0.10.0] - 2021-03-10

### Added

- Time FQL functions:
    - `TimeAdd`, `TimeSubtract`, `TimeDiff`

## [0.9.1] - 2021-02-25

### Changed

- Fixed `Join` FQL function (incorrect JSON name of parameter)

## [0.9.0] - 2020-12-14

### Added

- Authentication FQL functions:
    - `Credentials`, `CurrentIdentity`, `CurrentToken`, `HasCurrentToken`
- Conversion FQL functions:
    - `ToArray`, `ToDate`, `ToDouble`, `ToInteger`, `ToMicros`, `ToMillis`, `ToNumber`, `ToObject`, `ToSeconds`
      , `ToString`, `ToTime`

### Changed

- Fixed `Login` FQL function (incorrect JSON name of parameter)

## [0.8.1] - 2020-11-08

### Changed

- Update documentation

## [0.8.0] - 2020-11-08

### Added

- `example/crud.dart` - Has several example FQL queries

### Changed

- `Call` arguments are now optional
- Update documentation

## [0.7.0] - 2020-08-26

### Changed

- `DateTime` automatically converted to FaunaTime data type inside of Expressions

## [0.6.0] - 2020-08-18

### Changed

- More permissive types for query functions in `read_and_write.dart`

## [0.5.2] - 2020-08-10

### Changed

- Revert to stable environment sdk range

## [0.5.1] - 2020-08-10

### Added

- Static analysis options file

### Changed

- Updated source code to pass pedantic statis analysis

## [0.5.0] - 2020-08-03

### Added

- `Page` class
- `asRef` method in `RefResult` class
- `asPage` method in `FaunaResponse` class

## [0.4.1] - 2020-07-24

### Changed

- Package description
- Replaced double quotes with single quotes

## [0.4.0] - 2020-07-24

### Added

- `FaunaResponse` class added to query export; this helps with autocomplete in IDEs

### Changed

- `QueryResult` class renamed to `FaunaResponse` class
- Fixed date typo in CHANGELOG.md

## [0.3.0] - 2020-07-08

### Added

- FQL query functions
- More comprehensive documentation

### Changed

- `FaunaClient.query` accepts both raw JSON or composed queries

## [0.2.1] - 2020-06-21

### Added

- Added more documentation

### Changed

- Rename classes to simpler naming scheme

## [0.2.0] - 2020-06-20

### Changed

- Add `headers`, `timeout`, `queryTimeout` parameters in `FaunaDBConfig` class

## [0.1.1] - 2020-06-19

### Changed

- Specified data types to `FaunaDBConfig.create` method

## [0.1.0] - 2020-06-19

### Added

- `FaunaDBConfig` class
- `FaunaDBClient` class

[0.10.0]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.9.1...0.10.0

[0.9.1]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.9.0...0.9.1

[0.9.0]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.8.1...0.9.0

[0.8.1]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.8.0...0.8.1

[0.8.0]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.7.0...0.8.0

[0.7.0]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.6.0...0.7.0

[0.6.0]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.5.2...0.6.0

[0.5.2]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.5.1...0.5.2

[0.5.1]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.5.0...0.5.1

[0.5.0]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.4.4...0.5.0

[0.4.1]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.4.0...0.4.1

[0.4.0]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.3.0...0.4.0

[0.3.0]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.2.1...0.3.0

[0.2.1]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.2.0...0.2.1

[0.2.0]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.1.1...0.2.0

[0.1.1]: https://github.com/gavanitrate/faunadb-http-dart/compare/0.1.0...0.1.1

[0.1.0]: https://github.com/gavanitrate/faunadb-http-dart/releases/tag/0.1.0