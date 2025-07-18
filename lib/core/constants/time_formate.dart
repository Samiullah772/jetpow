import 'package:intl/intl.dart';

var onlyDate = DateFormat("yy-MM-dd"); // 20-04-03
var date = DateFormat.yMd(); // 7/10/2020
var monthNameDate = DateFormat.yMMMMd('en_US'); // July 10, 1996
var dayMonthYear = DateFormat.yMMMEd(); // Fri, Apr 3, 2020
var onlyDay = DateFormat('EEEE'); // Sunday
var onlyTime = DateFormat('h:mm a'); // 10:10 AM
var dateAndTime = DateFormat.yMd().add_jm(); // 7/10/1996 5:08 PM
var onlyHrs = DateFormat.Hm(); // 17:08
var onlyMonth = DateFormat("MMMM"); // March
var monthYear = DateFormat("yMMM"); // Apr 2022

String formatPrice(double price, String language) {
  NumberFormat numberFormat;

  // Check if the price is an integer
  bool isInteger = price % 1 == 0;

  if (language == 'en') {
    numberFormat = isInteger
        ? NumberFormat.currency(locale: 'en_US', symbol: '', decimalDigits: 0)
        : NumberFormat.currency(locale: 'en_US', symbol: '', decimalDigits: 2);
    return '${numberFormat.format(price)} SEK';
  } else if (language == 'sv') {
    numberFormat = isInteger
        ? NumberFormat.currency(locale: 'sv_SE', symbol: '', decimalDigits: 0)
        : NumberFormat.currency(locale: 'sv_SE', symbol: '', decimalDigits: 2);
    return '${numberFormat.format(price)}kr';
  } else {
    return price.toString();
  }
}

String formatDistance(double distance, String language) {
  if (language == 'en') {
    return '${NumberFormat('##0.0', 'en_US').format(distance)} km';
  } else if (language == 'sv') {
    return '1,2 km';
  } else {
    return '$distance km';
  }
}
