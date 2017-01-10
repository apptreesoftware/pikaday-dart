// Copyright (c) 2017, john. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:pikaday/pikaday.dart';

main() {
  new Pikaday(new PikadayOptions(
    field: document.getElementById('datepicker'),
    firstDay: 1,
    minDate: new DateTime.now(),
    maxDate: new DateTime(2020, 12, 31),
    yearRange: [2000, 2020],
    showTime: false,
  ));

  new Pikaday(new PikadayOptions(
      field: document.getElementById('datetimepicker'),
      firstDay: 1,
      minDate: new DateTime(2000, 0, 1),
      maxDate: new DateTime(2020, 12, 31),
      yearRange: [2000, 2020],
      showTime: true,
      autoClose: false,
      use24hour: false));
}
