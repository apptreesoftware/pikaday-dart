# pikaday

package:js bindings for [Pikaday][pikaday] by David Bushnell.

This includes a version of Pikaday with [time support][pikaday-timezone]

## Usage

```dart
main() {
  new Pikaday(new PikadayOptions(
    field: document.getElementById('datepicker'),
    firstDay: 1,
    minDate: new DateTime.now(),
    maxDate: new DateTime(2020, 12, 31),
    yearRange: [2000, 2020],
    showTime: false,
  ));
}
```

## Generating the library

```
dart_js_facade_gen lib/pikaday.d.ts > lib/pikaday.dart
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://github.com/johnpryan/pikaday-dart/issues
[pikaday]: https://github.com/dbushell/Pikaday
[pikaday-timezone]: https://github.com/owenmead/Pikaday/
