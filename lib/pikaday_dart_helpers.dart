@JS()
library lib.pikaday.helpers;

import "package:js/js.dart";
import 'package:pikaday/pikaday.dart';

/// A helper function for calling pikaday.getTime() since DateTimes are not yet
/// supported in package:js.
@JS()
external int getPikadayMillisecondsSinceEpoch(Pikaday pikaday);

/// A helper function for calling
/// pikaday.setDate(new Date(millies), dontTriggerOnSelect)
/// since DateTimes are not yet supported in package:js.
/// If triggerOnSelect is not set to true, it will default to false.
@JS()
external void setPikadayMillisecondsSinceEpoch(
    Pikaday pikaday, int millies, [bool triggerOnSelect]);

/// A helper function for calling pikaday.setMinDate(new Date(millies))
/// since DateTimes are not yet supported in package:js.
@JS()
external void setPikadayMinDateAsMillisecondsSinceEpoch(
    Pikaday pikaday, int millies);

/// A helper function for calling pikaday.setMaxDate(new Date(millies))
/// since DateTimes are not yet supported in package:js.
@JS()
external void setPikadayMaxDateAsMillisecondsSinceEpoch(
    Pikaday pikaday, int millies);
