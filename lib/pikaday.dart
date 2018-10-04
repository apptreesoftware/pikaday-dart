@JS()
library lib.pikaday;

import "package:js/js.dart";
import "dart:html" show HtmlElement;

/// Type definitions for pikaday-time
/// Project: https://github.com/owenmead/Pikaday
/// Definitions by: Sayan Pal <https://github.com/Sayan751>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// import * as moment from 'moment';
/* WARNING: export assignment not yet supported. */
@JS()
class Pikaday {
  // @Ignore
  Pikaday.fakeConstructor$();
  external HtmlElement get el;
  external set el(HtmlElement v);
  external factory Pikaday(PikadayOptions options);

  /// Extends the existing configuration options for Pikaday object with the options provided.
  /// Can be used to change/extend the configurations on runtime.
  external PikadayOptions config(PikadayOptions options);

  /// Returns the selected date in a string format. If Moment.js exists
  /// (recommended) then Pikaday can return any format that Moment
  /// understands, otherwise you're stuck with JavaScript's default.
  external String toString([String format]);

  /// Returns a JavaScript Date object for the selected day, or null if
  /// no date is selected.
  external DateTime getDate();

  /// Set the current selection. This will be restricted within the bounds
  /// of minDate and maxDate options if they're specified. A boolean (true)
  /// can optionally be passed as the second parameter to prevent triggering
  /// of the onSelect callback, allowing the date to be set silently.
  external void setDate(dynamic /*String|DateTime*/ date,
      [bool triggerOnSelect]);

  /// Returns a Moment.js object for the selected date (Moment must be
  /// loaded before Pikaday).
  external dynamic getMoment();

  /// Set the current selection with a Moment.js object (see setDate).
  external void setMoment(dynamic moment);

  /// Change the current view to see a specific date.
  external void gotoDate(DateTime date);

  /// Shortcut for picker.gotoDate(new Date())
  external void gotoToday();

  /// Change the current view by month (0: January, 1: Februrary, etc).
  external void gotoMonth(num monthIndex);

  /// Go to the next month (this will change year if necessary).
  external void nextMonth();

  /// Go to the previous month (this will change year if necessary).
  external void prevMonth();

  /// Change the year being viewed.
  external void gotoYear(num year);

  /// Update the minimum/earliest date that can be selected.
  external void setMinDate(DateTime date);

  /// Update the maximum/latest date that can be selected.
  external void setMaxDate(DateTime date);

  /// Update the range start date. For using two Pikaday instances to
  /// select a date range.
  external void setStartRange(DateTime date);

  /// Update the range end date. For using two Pikaday instances to select
  /// a date range.
  external void setEndRange(DateTime date);

  /// Update the HTML.
  external void draw(bool force);

  /// Returns true if the picker is visible.
  external bool isVisible();

  /// Make the picker visible.
  external void show();

  /// Hide the picker making it invisible.
  external void hide();

  /// Recalculate and change the position of the picker.
  external void adjustPosition();

  /// Hide the picker and remove all event listeners - no going back!
  external void destroy();
}

/// merge the Pikaday class declaration with a module

// Module Pikaday
@anonymous
@JS()
abstract class PikadayI18nConfig {
  external String get previousMonth;
  external set previousMonth(String v);
  external String get nextMonth;
  external set nextMonth(String v);
  external List<String> get months;
  external set months(List<String> v);
  external List<String> get weekdays;
  external set weekdays(List<String> v);
  external List<String> get weekdaysShort;
  external set weekdaysShort(List<String> v);
  external factory PikadayI18nConfig(
      {String previousMonth,
      String nextMonth,
      List<String> months,
      List<String> weekdays,
      List<String> weekdaysShort});
}

@anonymous
@JS()
abstract class PikadayOptions {
  /// Bind the datepicker to a form field.
  external HtmlElement get field;
  external set field(HtmlElement v);

  /// The default output format for toString() and field value.
  /// Requires Moment.js for custom formatting.
  external String get format;
  external set format(String v);

  /// Use a different element to trigger opening the datepicker.
  /// Default: field element.
  external HtmlElement get trigger;
  external set trigger(HtmlElement v);

  /// Automatically show/hide the datepicker on field focus.
  /// Default: true if field is set.
  external bool get bound;
  external set bound(bool v);

  /// Preferred position of the datepicker relative to the form field
  /// (e.g. 'top right'). Automatic adjustment may occur to avoid
  /// displaying outside the viewport. Default: 'bottom left'.
  external String get position;
  external set position(String v);

  /// Can be set to false to not reposition the datepicker within the
  /// viewport, forcing it to take the configured position. Default: true.
  external bool get reposition;
  external set reposition(bool v);

  /// DOM node to render calendar into, see container example.
  /// Default: undefined.
  external HtmlElement get container;
  external set container(HtmlElement v);

  /// The initial date to view when first opened.
  external DateTime get defaultDate;
  external set defaultDate(DateTime v);

  /// Make the defaultDate the initial selected value.
  external bool get setDefaultDate;
  external set setDefaultDate(bool v);

  /// First day of the week (0: Sunday, 1: Monday, etc).
  external num get firstDay;
  external set firstDay(num v);

  /// The earliest date that can be selected (this should be a native
  /// Date object - e.g. new Date() or moment().toDate()).
  external DateTime get minDate;
  external set minDate(DateTime v);

  /// The latest date that can be selected (this should be a native
  /// Date object - e.g. new Date() or moment().toDate()).
  external DateTime get maxDate;
  external set maxDate(DateTime v);

  /// Disallow selection of Saturdays and Sundays.
  external bool get disableWeekends;
  external set disableWeekends(bool v);

  /// Callback function that gets passed a Date object for each day
  /// in view. Should return true to disable selection of that day.
  external Function get disableDayFn;
  external set disableDayFn(Function v);

  /// Number of years either side (e.g. 10) or array of upper/lower range
  /// (e.g. [1900, 2015]).
  external dynamic /*num|List<num>*/ get yearRange;
  external set yearRange(dynamic /*num|List<num>*/ v);

  /// Show the ISO week number at the head of the row. Default: false.
  external bool get showWeekNumber;
  external set showWeekNumber(bool v);

  /// Reverse the calendar for right-to-left languages. Default: false.
  external bool get isRTL;
  external set isRTL(bool v);

  /// Language defaults for month and weekday names.
  external PikadayI18nConfig get i18n;
  external set i18n(PikadayI18nConfig v);

  /// Additional text to append to the year in the title.
  external String get yearSuffix;
  external set yearSuffix(String v);

  /// Render the month after the year in the title. Default: false.
  external bool get showMonthAfterYear;
  external set showMonthAfterYear(bool v);

  /// Render days of the calendar grid that fall in the next or previous months to the current month instead of rendering an empty table cell. Default: false.
  external bool get showDaysInNextAndPreviousMonths;
  external set showDaysInNextAndPreviousMonths(bool v);

  /// Number of visible calendars.
  external num get numberOfMonths;
  external set numberOfMonths(num v);

  /// When numberOfMonths is used, this will help you to choose where the
  /// main calendar will be (default left, can be set to right). Only used
  /// for the first display or when a selected date is not already visible.
  external String get mainCalendar;
  external set mainCalendar(String v);

  /// Define a class name that can be used as a hook for styling different
  /// themes. Default: null.
  external String get theme;
  external set theme(String v);

  /// Callback function for when a date is selected.
  external Function get onSelect;
  external set onSelect(Function v);

  /// Callback function for when the picker becomes visible.
  external Function get onOpen;
  external set onOpen(Function v);

  /// Callback function for when the picker is hidden.
  external Function get onClose;
  external set onClose(Function v);

  /// Callback function for when the picker draws a new month.
  external Function get onDraw;
  external set onDraw(Function v);

  /// --pikaday-time specific addition--
  /// Optional boolean property to specify whether to show time controls with calendar or not.
  external bool get showTime;
  external set showTime(bool v);

  /// Optional boolean property to specify whether to show minute controls with calendar or not.
  external bool get showMinutes;
  external set showMinutes(bool v);

  /// Optional boolean property to specify whether to show second controls with calendar or not.
  external bool get showSeconds;
  external set showSeconds(bool v);

  /// Optional boolean property to specify whether to use 24 hours format or not.
  external bool get use24hour;
  external set use24hour(bool v);

  /// Optional numeric property to specify the increment step for hour.
  external num get incrementHourBy;
  external set incrementHourBy(num v);

  /// Optional numeric property to specify the increment step for minute.
  external num get incrementMinuteBy;
  external set incrementMinuteBy(num v);

  /// Optional numeric property to specify the increment step for second.
  external num get incrementSecondBy;
  external set incrementSecondBy(num v);

  /// Optional numeric property to prevent calendar from auto-closing after date is selected.
  external bool get autoClose;
  external set autoClose(bool v);

  /// Optional string added to left of time select
  external String get timeLabel;
  external set timeLabel(String v);
  external factory PikadayOptions(
      {HtmlElement field,
      String format,
      HtmlElement trigger,
      bool bound,
      String position,
      bool reposition,
      HtmlElement container,
      DateTime defaultDate,
      bool setDefaultDate,
      num firstDay,
      DateTime minDate,
      DateTime maxDate,
      bool disableWeekends,
      Function disableDayFn,
      dynamic /*num|List<num>*/ yearRange,
      bool showWeekNumber,
      bool isRTL,
      PikadayI18nConfig i18n,
      String yearSuffix,
      bool showMonthAfterYear,
      bool showDaysInNextAndPreviousMonths,
      num numberOfMonths,
      String mainCalendar,
      String theme,
      Function onSelect,
      Function onOpen,
      Function onClose,
      Function onDraw,
      bool showTime,
      bool showMinutes,
      bool showSeconds,
      bool use24hour,
      num incrementHourBy,
      num incrementMinuteBy,
      num incrementSecondBy,
      bool autoClose,
      String timeLabel});
}

// End module Pikaday

