import "package:js/js.dart";

@JS('Date')
class DateJS {
  external factory DateJS([int year, int month, int day]);
}