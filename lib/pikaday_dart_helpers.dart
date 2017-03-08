@JS()
library lib.pikaday.helpers;

import "package:js/js.dart";
import 'package:pikaday/pikaday.dart';

/// A helper function for calling pikaday.getTime() since DateTimes are not yet
/// supported in package:js.
@JS()
external int getPikadayMillisecondsSinceEpoch(Pikaday pikaday);